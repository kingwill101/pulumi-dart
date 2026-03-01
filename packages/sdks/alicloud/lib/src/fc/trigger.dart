import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_args.dart';
import 'trigger_state.dart';

/// Provides an Alicloud Function Compute Trigger resource. Based on trigger, execute your code in response to events in Alibaba Cloud.
/// For information about Service and how to use it, see [What is Function Compute](https://www.alibabacloud.com/help/en/fc/developer-reference/api-fc-open-2021-04-06-createtrigger).
///
/// > **NOTE:** The resource requires a provider field 'account_id'. See account_id.
///
/// > **NOTE:** Available since v1.93.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const _default = alicloud.getAccount({});
/// const defaultGetRegions = alicloud.getRegions({
///     current: true,
/// });
/// const defaultInteger = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const defaultProject = new alicloud.log.Project("default", {projectName: `example-value-${defaultInteger.result}`});
/// const defaultStore = new alicloud.log.Store("default", {
///     projectName: defaultProject.projectName,
///     logstoreName: "example-value",
/// });
/// const sourceStore = new alicloud.log.Store("source_store", {
///     projectName: defaultProject.projectName,
///     logstoreName: "example-source-store",
/// });
/// const defaultRole = new alicloud.ram.Role("default", {
///     name: `fcservicerole-${defaultInteger.result}`,
///     document: `  {
///       \\"Statement\\": [
///         {
///           \\"Action\\": \\"sts:AssumeRole\\",
///           \\"Effect\\": \\"Allow\\",
///           \\"Principal\\": {
///             \\"Service\\": [
///               \\"fc.aliyuncs.com\\"
///             ]
///           }
///         }
///       ],
///       \\"Version\\": \\"1\\"
///   }
/// `,
///     description: "this is a example",
///     force: true,
/// });
/// const defaultRolePolicyAttachment = new alicloud.ram.RolePolicyAttachment("default", {
///     roleName: defaultRole.name,
///     policyName: "AliyunLogFullAccess",
///     policyType: "System",
/// });
/// const defaultService = new alicloud.fc.Service("default", {
///     name: `example-value-${defaultInteger.result}`,
///     description: "example-value",
///     role: defaultRole.arn,
///     logConfig: {
///         project: defaultProject.projectName,
///         logstore: defaultStore.logstoreName,
///         enableInstanceMetrics: true,
///         enableRequestMetrics: true,
///     },
/// });
/// const defaultBucket = new alicloud.oss.Bucket("default", {bucket: `terraform-example-${defaultInteger.result}`});
/// // If you upload the function by OSS Bucket, you need to specify path can't upload by content.
/// const defaultBucketObject = new alicloud.oss.BucketObject("default", {
///     bucket: defaultBucket.id,
///     key: "index.py",
///     content: `import logging
/// def handler(event, context):
/// logger = logging.getLogger()
/// logger.info('hello world')
/// return 'hello world'`,
/// });
/// const defaultFunction = new alicloud.fc.Function("default", {
///     service: defaultService.name,
///     name: "terraform-example",
///     description: "example",
///     ossBucket: defaultBucket.id,
///     ossKey: defaultBucketObject.key,
///     memorySize: 512,
///     runtime: "python3.10",
///     handler: "hello.handler",
/// });
/// const defaultTrigger = new alicloud.fc.Trigger("default", {
///     service: defaultService.name,
///     "function": defaultFunction.name,
///     name: "terraform-example",
///     role: defaultRole.arn,
///     sourceArn: pulumi.all([defaultGetRegions, _default, defaultProject.projectName]).apply(([defaultGetRegions, _default, projectName]) => `acs:log:${defaultGetRegions.regions?.[0]?.id}:${_default.id}:project/${projectName}`),
///     type: "log",
///     config: pulumi.interpolate`    {
///         \"sourceConfig\": {
///             \"logstore\": \"${sourceStore.logstoreName}\",
///             \"startTime\": null
///         },
///         \"jobConfig\": {
///             \"maxRetryTime\": 3,
///             \"triggerInterval\": 60
///         },
///         \"functionParameter\": {
///             \"a\": \"b\",
///             \"c\": \"d\"
///         },
///         \"logConfig\": {
///              \"project\": \"${defaultProject.projectName}\",
///             \"logstore\": \"${defaultStore.logstoreName}\"
///         },
///         \"enable\": true
///     }
///
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = alicloud.get_account()
/// default_get_regions = alicloud.get_regions(current=True)
/// default_integer = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// default_project = alicloud.log.Project("default", project_name=f"example-value-{default_integer['result']}")
/// default_store = alicloud.log.Store("default",
///     project_name=default_project.project_name,
///     logstore_name="example-value")
/// source_store = alicloud.log.Store("source_store",
///     project_name=default_project.project_name,
///     logstore_name="example-source-store")
/// default_role = alicloud.ram.Role("default",
///     name=f"fcservicerole-{default_integer['result']}",
///     document="""  {
///       \"Statement\": [
///         {
///           \"Action\": \"sts:AssumeRole\",
///           \"Effect\": \"Allow\",
///           \"Principal\": {
///             \"Service\": [
///               \"fc.aliyuncs.com\"
///             ]
///           }
///         }
///       ],
///       \"Version\": \"1\"
///   }
/// """,
///     description="this is a example",
///     force=True)
/// default_role_policy_attachment = alicloud.ram.RolePolicyAttachment("default",
///     role_name=default_role.name,
///     policy_name="AliyunLogFullAccess",
///     policy_type="System")
/// default_service = alicloud.fc.Service("default",
///     name=f"example-value-{default_integer['result']}",
///     description="example-value",
///     role=default_role.arn,
///     log_config={
///         "project": default_project.project_name,
///         "logstore": default_store.logstore_name,
///         "enable_instance_metrics": True,
///         "enable_request_metrics": True,
///     })
/// default_bucket = alicloud.oss.Bucket("default", bucket=f"terraform-example-{default_integer['result']}")
/// # If you upload the function by OSS Bucket, you need to specify path can't upload by content.
/// default_bucket_object = alicloud.oss.BucketObject("default",
///     bucket=default_bucket.id,
///     key="index.py",
///     content="""import logging
/// def handler(event, context):
/// logger = logging.getLogger()
/// logger.info('hello world')
/// return 'hello world'""")
/// default_function = alicloud.fc.Function("default",
///     service=default_service.name,
///     name="terraform-example",
///     description="example",
///     oss_bucket=default_bucket.id,
///     oss_key=default_bucket_object.key,
///     memory_size=512,
///     runtime="python3.10",
///     handler="hello.handler")
/// default_trigger = alicloud.fc.Trigger("default",
///     service=default_service.name,
///     function=default_function.name,
///     name="terraform-example",
///     role=default_role.arn,
///     source_arn=default_project.project_name.apply(lambda project_name: f"acs:log:{default_get_regions.regions[0].id}:{default.id}:project/{project_name}"),
///     type="log",
///     config=pulumi.Output.all(
///         sourceStoreLogstore_name=source_store.logstore_name,
///         project_name=default_project.project_name,
///         defaultStoreLogstore_name=default_store.logstore_name
/// ).apply(lambda resolved_outputs: f"""    {{
///         \"sourceConfig\": {{
///             \"logstore\": \"{resolved_outputs['sourceStoreLogstore_name']}\",
///             \"startTime\": null
///         }},
///         \"jobConfig\": {{
///             \"maxRetryTime\": 3,
///             \"triggerInterval\": 60
///         }},
///         \"functionParameter\": {{
///             \"a\": \"b\",
///             \"c\": \"d\"
///         }},
///         \"logConfig\": {{
///              \"project\": \"{resolved_outputs['project_name']}\",
///             \"logstore\": \"{resolved_outputs['defaultStoreLogstore_name']}\"
///         }},
///         \"enable\": true
///     }}
///
/// """)
/// )
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.GetAccount.Invoke();
///
///     var defaultGetRegions = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var defaultProject = new AliCloud.Log.Project("default", new()
///     {
///         ProjectName = $"example-value-{defaultInteger.Result}",
///     });
///
///     var defaultStore = new AliCloud.Log.Store("default", new()
///     {
///         ProjectName = defaultProject.ProjectName,
///         LogstoreName = "example-value",
///     });
///
///     var sourceStore = new AliCloud.Log.Store("source_store", new()
///     {
///         ProjectName = defaultProject.ProjectName,
///         LogstoreName = "example-source-store",
///     });
///
///     var defaultRole = new AliCloud.Ram.Role("default", new()
///     {
///         Name = $"fcservicerole-{defaultInteger.Result}",
///         Document = @"  {
///       \""Statement\"": [
///         {
///           \""Action\"": \""sts:AssumeRole\"",
///           \""Effect\"": \""Allow\"",
///           \""Principal\"": {
///             \""Service\"": [
///               \""fc.aliyuncs.com\""
///             ]
///           }
///         }
///       ],
///       \""Version\"": \""1\""
///   }
/// ",
///         Description = "this is a example",
///         Force = true,
///     });
///
///     var defaultRolePolicyAttachment = new AliCloud.Ram.RolePolicyAttachment("default", new()
///     {
///         RoleName = defaultRole.Name,
///         PolicyName = "AliyunLogFullAccess",
///         PolicyType = "System",
///     });
///
///     var defaultService = new AliCloud.FC.Service("default", new()
///     {
///         Name = $"example-value-{defaultInteger.Result}",
///         Description = "example-value",
///         Role = defaultRole.Arn,
///         LogConfig = new AliCloud.FC.Inputs.ServiceLogConfigArgs
///         {
///             Project = defaultProject.ProjectName,
///             Logstore = defaultStore.LogstoreName,
///             EnableInstanceMetrics = true,
///             EnableRequestMetrics = true,
///         },
///     });
///
///     var defaultBucket = new AliCloud.Oss.Bucket("default", new()
///     {
///         BucketName = $"terraform-example-{defaultInteger.Result}",
///     });
///
///     // If you upload the function by OSS Bucket, you need to specify path can't upload by content.
///     var defaultBucketObject = new AliCloud.Oss.BucketObject("default", new()
///     {
///         Bucket = defaultBucket.Id,
///         Key = "index.py",
///         Content = @"import logging
/// def handler(event, context):
/// logger = logging.getLogger()
/// logger.info('hello world')
/// return 'hello world'",
///     });
///
///     var defaultFunction = new AliCloud.FC.Function("default", new()
///     {
///         Service = defaultService.Name,
///         Name = "terraform-example",
///         Description = "example",
///         OssBucket = defaultBucket.Id,
///         OssKey = defaultBucketObject.Key,
///         MemorySize = 512,
///         Runtime = "python3.10",
///         Handler = "hello.handler",
///     });
///
///     var defaultTrigger = new AliCloud.FC.Trigger("default", new()
///     {
///         Service = defaultService.Name,
///         Function = defaultFunction.Name,
///         Name = "terraform-example",
///         Role = defaultRole.Arn,
///         SourceArn = Output.Tuple(defaultGetRegions, @default, defaultProject.ProjectName).Apply(values =>
///         {
///             var defaultGetRegions = values.Item1;
///             var @default = values.Item2;
///             var projectName = values.Item3;
///             return $"acs:log:{defaultGetRegions.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)}:{@default.Apply(getAccountResult => getAccountResult.Id)}:project/{projectName}";
///         }),
///         Type = "log",
///         Config = Output.Tuple(sourceStore.LogstoreName, defaultProject.ProjectName, defaultStore.LogstoreName).Apply(values =>
///         {
///             var sourceStoreLogstoreName = values.Item1;
///             var projectName = values.Item2;
///             var defaultStoreLogstoreName = values.Item3;
///             return @$"    {{
///         \""sourceConfig\"": {{
///             \""logstore\"": \""{sourceStoreLogstoreName}\"",
///             \""startTime\"": null
///         }},
///         \""jobConfig\"": {{
///             \""maxRetryTime\"": 3,
///             \""triggerInterval\"": 60
///         }},
///         \""functionParameter\"": {{
///             \""a\"": \""b\"",
///             \""c\"": \""d\""
///         }},
///         \""logConfig\"": {{
///              \""project\"": \""{projectName}\"",
///             \""logstore\"": \""{defaultStoreLogstoreName}\""
///         }},
///         \""enable\"": true
///     }}
///
/// ";
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/fc"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oss"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetRegions, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultProject, err := log.NewProject(ctx, "default", &log.ProjectArgs{
/// 			ProjectName: pulumi.Sprintf("example-value-%v", defaultInteger.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultStore, err := log.NewStore(ctx, "default", &log.StoreArgs{
/// 			ProjectName:  defaultProject.ProjectName,
/// 			LogstoreName: pulumi.String("example-value"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sourceStore, err := log.NewStore(ctx, "source_store", &log.StoreArgs{
/// 			ProjectName:  defaultProject.ProjectName,
/// 			LogstoreName: pulumi.String("example-source-store"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRole, err := ram.NewRole(ctx, "default", &ram.RoleArgs{
/// 			Name: pulumi.Sprintf("fcservicerole-%v", defaultInteger.Result),
/// 			Document: pulumi.String(`  {
///       \"Statement\": [
///         {
///           \"Action\": \"sts:AssumeRole\",
///           \"Effect\": \"Allow\",
///           \"Principal\": {
///             \"Service\": [
///               \"fc.aliyuncs.com\"
///             ]
///           }
///         }
///       ],
///       \"Version\": \"1\"
///   }
/// `),
/// 			Description: pulumi.String("this is a example"),
/// 			Force:       pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ram.NewRolePolicyAttachment(ctx, "default", &ram.RolePolicyAttachmentArgs{
/// 			RoleName:   defaultRole.Name,
/// 			PolicyName: pulumi.String("AliyunLogFullAccess"),
/// 			PolicyType: pulumi.String("System"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultService, err := fc.NewService(ctx, "default", &fc.ServiceArgs{
/// 			Name:        pulumi.Sprintf("example-value-%v", defaultInteger.Result),
/// 			Description: pulumi.String("example-value"),
/// 			Role:        defaultRole.Arn,
/// 			LogConfig: &fc.ServiceLogConfigArgs{
/// 				Project:               defaultProject.ProjectName,
/// 				Logstore:              defaultStore.LogstoreName,
/// 				EnableInstanceMetrics: pulumi.Bool(true),
/// 				EnableRequestMetrics:  pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBucket, err := oss.NewBucket(ctx, "default", &oss.BucketArgs{
/// 			Bucket: pulumi.Sprintf("terraform-example-%v", defaultInteger.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// If you upload the function by OSS Bucket, you need to specify path can't upload by content.
/// 		defaultBucketObject, err := oss.NewBucketObject(ctx, "default", &oss.BucketObjectArgs{
/// 			Bucket:  defaultBucket.ID(),
/// 			Key:     pulumi.String("index.py"),
/// 			Content: pulumi.String("import logging \ndef handler(event, context): \nlogger = logging.getLogger() \nlogger.info('hello world') \nreturn 'hello world'"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultFunction, err := fc.NewFunction(ctx, "default", &fc.FunctionArgs{
/// 			Service:     defaultService.Name,
/// 			Name:        pulumi.String("terraform-example"),
/// 			Description: pulumi.String("example"),
/// 			OssBucket:   defaultBucket.ID(),
/// 			OssKey:      defaultBucketObject.Key,
/// 			MemorySize:  pulumi.Int(512),
/// 			Runtime:     pulumi.String("python3.10"),
/// 			Handler:     pulumi.String("hello.handler"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = fc.NewTrigger(ctx, "default", &fc.TriggerArgs{
/// 			Service:  defaultService.Name,
/// 			Function: defaultFunction.Name,
/// 			Name:     pulumi.String("terraform-example"),
/// 			Role:     defaultRole.Arn,
/// 			SourceArn: defaultProject.ProjectName.ApplyT(func(projectName string) (string, error) {
/// 				return fmt.Sprintf("acs:log:%v:%v:project/%v", defaultGetRegions.Regions[0].Id, _default.Id, projectName), nil
/// 			}).(pulumi.StringOutput),
/// 			Type: pulumi.String("log"),
/// 			Config: pulumi.All(sourceStore.LogstoreName, defaultProject.ProjectName, defaultStore.LogstoreName).ApplyT(func(_args []interface{}) (string, error) {
/// 				sourceStoreLogstoreName := _args[0].(string)
/// 				projectName := _args[1].(string)
/// 				defaultStoreLogstoreName := _args[2].(string)
/// 				return fmt.Sprintf(`    {
///         \"sourceConfig\": {
///             \"logstore\": \"%v\",
///             \"startTime\": null
///         },
///         \"jobConfig\": {
///             \"maxRetryTime\": 3,
///             \"triggerInterval\": 60
///         },
///         \"functionParameter\": {
///             \"a\": \"b\",
///             \"c\": \"d\"
///         },
///         \"logConfig\": {
///              \"project\": \"%v\",
///             \"logstore\": \"%v\"
///         },
///         \"enable\": true
///     }
///
/// `, sourceStoreLogstoreName, projectName, defaultStoreLogstoreName), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetRegionsArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.log.Project;
/// import com.pulumi.alicloud.log.ProjectArgs;
/// import com.pulumi.alicloud.log.Store;
/// import com.pulumi.alicloud.log.StoreArgs;
/// import com.pulumi.alicloud.ram.Role;
/// import com.pulumi.alicloud.ram.RoleArgs;
/// import com.pulumi.alicloud.ram.RolePolicyAttachment;
/// import com.pulumi.alicloud.ram.RolePolicyAttachmentArgs;
/// import com.pulumi.alicloud.fc.Service;
/// import com.pulumi.alicloud.fc.ServiceArgs;
/// import com.pulumi.alicloud.fc.inputs.ServiceLogConfigArgs;
/// import com.pulumi.alicloud.oss.Bucket;
/// import com.pulumi.alicloud.oss.BucketArgs;
/// import com.pulumi.alicloud.oss.BucketObject;
/// import com.pulumi.alicloud.oss.BucketObjectArgs;
/// import com.pulumi.alicloud.fc.Function;
/// import com.pulumi.alicloud.fc.FunctionArgs;
/// import com.pulumi.alicloud.fc.Trigger;
/// import com.pulumi.alicloud.fc.TriggerArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var default = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         final var defaultGetRegions = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         var defaultProject = new Project("defaultProject", ProjectArgs.builder()
///             .projectName(String.format("example-value-%s", defaultInteger.result()))
///             .build());
///
///         var defaultStore = new Store("defaultStore", StoreArgs.builder()
///             .projectName(defaultProject.projectName())
///             .logstoreName("example-value")
///             .build());
///
///         var sourceStore = new Store("sourceStore", StoreArgs.builder()
///             .projectName(defaultProject.projectName())
///             .logstoreName("example-source-store")
///             .build());
///
///         var defaultRole = new Role("defaultRole", RoleArgs.builder()
///             .name(String.format("fcservicerole-%s", defaultInteger.result()))
///             .document("""
///   {
///       \"Statement\": [
///         {
///           \"Action\": \"sts:AssumeRole\",
///           \"Effect\": \"Allow\",
///           \"Principal\": {
///             \"Service\": [
///               \"fc.aliyuncs.com\"
///             ]
///           }
///         }
///       ],
///       \"Version\": \"1\"
///   }
///             """)
///             .description("this is a example")
///             .force(true)
///             .build());
///
///         var defaultRolePolicyAttachment = new RolePolicyAttachment("defaultRolePolicyAttachment", RolePolicyAttachmentArgs.builder()
///             .roleName(defaultRole.name())
///             .policyName("AliyunLogFullAccess")
///             .policyType("System")
///             .build());
///
///         var defaultService = new Service("defaultService", ServiceArgs.builder()
///             .name(String.format("example-value-%s", defaultInteger.result()))
///             .description("example-value")
///             .role(defaultRole.arn())
///             .logConfig(ServiceLogConfigArgs.builder()
///                 .project(defaultProject.projectName())
///                 .logstore(defaultStore.logstoreName())
///                 .enableInstanceMetrics(true)
///                 .enableRequestMetrics(true)
///                 .build())
///             .build());
///
///         var defaultBucket = new Bucket("defaultBucket", BucketArgs.builder()
///             .bucket(String.format("terraform-example-%s", defaultInteger.result()))
///             .build());
///
///         // If you upload the function by OSS Bucket, you need to specify path can't upload by content.
///         var defaultBucketObject = new BucketObject("defaultBucketObject", BucketObjectArgs.builder()
///             .bucket(defaultBucket.id())
///             .key("index.py")
///             .content("""
/// import logging
/// def handler(event, context):
/// logger = logging.getLogger()
/// logger.info('hello world')
/// return 'hello world'            """)
///             .build());
///
///         var defaultFunction = new Function("defaultFunction", FunctionArgs.builder()
///             .service(defaultService.name())
///             .name("terraform-example")
///             .description("example")
///             .ossBucket(defaultBucket.id())
///             .ossKey(defaultBucketObject.key())
///             .memorySize(512)
///             .runtime("python3.10")
///             .handler("hello.handler")
///             .build());
///
///         var defaultTrigger = new Trigger("defaultTrigger", TriggerArgs.builder()
///             .service(defaultService.name())
///             .function(defaultFunction.name())
///             .name("terraform-example")
///             .role(defaultRole.arn())
///             .sourceArn(defaultProject.projectName().applyValue(_projectName -> String.format("acs:log:%s:%s:project/%s", defaultGetRegions.regions()[0].id(),default_.id(),_projectName)))
///             .type("log")
///             .config(Output.tuple(sourceStore.logstoreName(), defaultProject.projectName(), defaultStore.logstoreName()).applyValue(values -> {
///                 var sourceStoreLogstoreName = values.t1;
///                 var projectName = values.t2;
///                 var defaultStoreLogstoreName = values.t3;
///                 return """
///     {
///         \"sourceConfig\": {
///             \"logstore\": \"%s\",
///             \"startTime\": null
///         },
///         \"jobConfig\": {
///             \"maxRetryTime\": 3,
///             \"triggerInterval\": 60
///         },
///         \"functionParameter\": {
///             \"a\": \"b\",
///             \"c\": \"d\"
///         },
///         \"logConfig\": {
///              \"project\": \"%s\",
///             \"logstore\": \"%s\"
///         },
///         \"enable\": true
///     }
///
/// ", sourceStoreLogstoreName,projectName,defaultStoreLogstoreName);
///             }))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       max: 99999
///       min: 10000
///   defaultProject:
///     type: alicloud:log:Project
///     name: default
///     properties:
///       projectName: example-value-${defaultInteger.result}
///   defaultStore:
///     type: alicloud:log:Store
///     name: default
///     properties:
///       projectName: ${defaultProject.projectName}
///       logstoreName: example-value
///   sourceStore:
///     type: alicloud:log:Store
///     name: source_store
///     properties:
///       projectName: ${defaultProject.projectName}
///       logstoreName: example-source-store
///   defaultRole:
///     type: alicloud:ram:Role
///     name: default
///     properties:
///       name: fcservicerole-${defaultInteger.result}
///       document: |2
///           {
///               \"Statement\": [
///                 {
///                   \"Action\": \"sts:AssumeRole\",
///                   \"Effect\": \"Allow\",
///                   \"Principal\": {
///                     \"Service\": [
///                       \"fc.aliyuncs.com\"
///                     ]
///                   }
///                 }
///               ],
///               \"Version\": \"1\"
///           }
///       description: this is a example
///       force: true
///   defaultRolePolicyAttachment:
///     type: alicloud:ram:RolePolicyAttachment
///     name: default
///     properties:
///       roleName: ${defaultRole.name}
///       policyName: AliyunLogFullAccess
///       policyType: System
///   defaultService:
///     type: alicloud:fc:Service
///     name: default
///     properties:
///       name: example-value-${defaultInteger.result}
///       description: example-value
///       role: ${defaultRole.arn}
///       logConfig:
///         project: ${defaultProject.projectName}
///         logstore: ${defaultStore.logstoreName}
///         enableInstanceMetrics: true
///         enableRequestMetrics: true
///   defaultBucket:
///     type: alicloud:oss:Bucket
///     name: default
///     properties:
///       bucket: terraform-example-${defaultInteger.result}
///   # If you upload the function by OSS Bucket, you need to specify path can't upload by content.
///   defaultBucketObject:
///     type: alicloud:oss:BucketObject
///     name: default
///     properties:
///       bucket: ${defaultBucket.id}
///       key: index.py
///       content: "import logging \ndef handler(event, context): \nlogger = logging.getLogger() \nlogger.info('hello world') \nreturn 'hello world'"
///   defaultFunction:
///     type: alicloud:fc:Function
///     name: default
///     properties:
///       service: ${defaultService.name}
///       name: terraform-example
///       description: example
///       ossBucket: ${defaultBucket.id}
///       ossKey: ${defaultBucketObject.key}
///       memorySize: '512'
///       runtime: python3.10
///       handler: hello.handler
///   defaultTrigger:
///     type: alicloud:fc:Trigger
///     name: default
///     properties:
///       service: ${defaultService.name}
///       function: ${defaultFunction.name}
///       name: terraform-example
///       role: ${defaultRole.arn}
///       sourceArn: acs:log:${defaultGetRegions.regions[0].id}:${default.id}:project/${defaultProject.projectName}
///       type: log
///       config: "    {\n        \\\"sourceConfig\\\": {\n            \\\"logstore\\\": \\\"${sourceStore.logstoreName}\\\",\n            \\\"startTime\\\": null\n        },\n        \\\"jobConfig\\\": {\n            \\\"maxRetryTime\\\": 3,\n            \\\"triggerInterval\\\": 60\n        },\n        \\\"functionParameter\\\": {\n            \\\"a\\\": \\\"b\\\",\n            \\\"c\\\": \\\"d\\\"\n        },\n        \\\"logConfig\\\": {\n             \\\"project\\\": \\\"${defaultProject.projectName}\\\",\n            \\\"logstore\\\": \\\"${defaultStore.logstoreName}\\\"\n        },\n        \\\"enable\\\": true\n    }\n  \n"
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
///   defaultGetRegions:
///     fn::invoke:
///       function: alicloud:getRegions
///       arguments:
///         current: true
/// ```
///
///
/// MNS topic trigger:
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const _default = alicloud.getAccount({});
/// const defaultGetRegions = alicloud.getRegions({
///     current: true,
/// });
/// const defaultInteger = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const defaultTopic = new alicloud.mns.Topic("default", {name: `example-value-${defaultInteger.result}`});
/// const defaultRole = new alicloud.ram.Role("default", {
///     name: `fcservicerole-${defaultInteger.result}`,
///     document: `  {
///       \\"Statement\\": [
///         {
///           \\"Action\\": \\"sts:AssumeRole\\",
///           \\"Effect\\": \\"Allow\\",
///           \\"Principal\\": {
///             \\"Service\\": [
///               \\"mns.aliyuncs.com\\"
///             ]
///           }
///         }
///       ],
///       \\"Version\\": \\"1\\"
///   }
/// `,
///     description: "this is a example",
///     force: true,
/// });
/// const defaultRolePolicyAttachment = new alicloud.ram.RolePolicyAttachment("default", {
///     roleName: defaultRole.name,
///     policyName: "AliyunMNSNotificationRolePolicy",
///     policyType: "System",
/// });
/// const defaultService = new alicloud.fc.Service("default", {
///     name: `example-value-${defaultInteger.result}`,
///     description: "example-value",
///     internetAccess: false,
/// });
/// const defaultBucket = new alicloud.oss.Bucket("default", {bucket: `terraform-example-${defaultInteger.result}`});
/// // If you upload the function by OSS Bucket, you need to specify path can't upload by content.
/// const defaultBucketObject = new alicloud.oss.BucketObject("default", {
///     bucket: defaultBucket.id,
///     key: "index.py",
///     content: `import logging
/// def handler(event, context):
/// logger = logging.getLogger()
/// logger.info('hello world')
/// return 'hello world'`,
/// });
/// const defaultFunction = new alicloud.fc.Function("default", {
///     service: defaultService.name,
///     name: `terraform-example-${defaultInteger.result}`,
///     description: "example",
///     ossBucket: defaultBucket.id,
///     ossKey: defaultBucketObject.key,
///     memorySize: 512,
///     runtime: "python3.10",
///     handler: "hello.handler",
/// });
/// const defaultTrigger = new alicloud.fc.Trigger("default", {
///     service: defaultService.name,
///     "function": defaultFunction.name,
///     name: "terraform-example",
///     role: defaultRole.arn,
///     sourceArn: pulumi.all([defaultGetRegions, _default, defaultTopic.name]).apply(([defaultGetRegions, _default, name]) => `acs:mns:${defaultGetRegions.regions?.[0]?.id}:${_default.id}:/topics/${name}`),
///     type: "mns_topic",
///     configMns: `  {
///     \\"filterTag\\":\\"exampleTag\\",
///     \\"notifyContentFormat\\":\\"STREAM\\",
///     \\"notifyStrategy\\":\\"BACKOFF_RETRY\\"
///   }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = alicloud.get_account()
/// default_get_regions = alicloud.get_regions(current=True)
/// default_integer = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// default_topic = alicloud.mns.Topic("default", name=f"example-value-{default_integer['result']}")
/// default_role = alicloud.ram.Role("default",
///     name=f"fcservicerole-{default_integer['result']}",
///     document="""  {
///       \"Statement\": [
///         {
///           \"Action\": \"sts:AssumeRole\",
///           \"Effect\": \"Allow\",
///           \"Principal\": {
///             \"Service\": [
///               \"mns.aliyuncs.com\"
///             ]
///           }
///         }
///       ],
///       \"Version\": \"1\"
///   }
/// """,
///     description="this is a example",
///     force=True)
/// default_role_policy_attachment = alicloud.ram.RolePolicyAttachment("default",
///     role_name=default_role.name,
///     policy_name="AliyunMNSNotificationRolePolicy",
///     policy_type="System")
/// default_service = alicloud.fc.Service("default",
///     name=f"example-value-{default_integer['result']}",
///     description="example-value",
///     internet_access=False)
/// default_bucket = alicloud.oss.Bucket("default", bucket=f"terraform-example-{default_integer['result']}")
/// # If you upload the function by OSS Bucket, you need to specify path can't upload by content.
/// default_bucket_object = alicloud.oss.BucketObject("default",
///     bucket=default_bucket.id,
///     key="index.py",
///     content="""import logging
/// def handler(event, context):
/// logger = logging.getLogger()
/// logger.info('hello world')
/// return 'hello world'""")
/// default_function = alicloud.fc.Function("default",
///     service=default_service.name,
///     name=f"terraform-example-{default_integer['result']}",
///     description="example",
///     oss_bucket=default_bucket.id,
///     oss_key=default_bucket_object.key,
///     memory_size=512,
///     runtime="python3.10",
///     handler="hello.handler")
/// default_trigger = alicloud.fc.Trigger("default",
///     service=default_service.name,
///     function=default_function.name,
///     name="terraform-example",
///     role=default_role.arn,
///     source_arn=default_topic.name.apply(lambda name: f"acs:mns:{default_get_regions.regions[0].id}:{default.id}:/topics/{name}"),
///     type="mns_topic",
///     config_mns="""  {
///     \"filterTag\":\"exampleTag\",
///     \"notifyContentFormat\":\"STREAM\",
///     \"notifyStrategy\":\"BACKOFF_RETRY\"
///   }
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.GetAccount.Invoke();
///
///     var defaultGetRegions = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var defaultTopic = new AliCloud.Mns.Topic("default", new()
///     {
///         Name = $"example-value-{defaultInteger.Result}",
///     });
///
///     var defaultRole = new AliCloud.Ram.Role("default", new()
///     {
///         Name = $"fcservicerole-{defaultInteger.Result}",
///         Document = @"  {
///       \""Statement\"": [
///         {
///           \""Action\"": \""sts:AssumeRole\"",
///           \""Effect\"": \""Allow\"",
///           \""Principal\"": {
///             \""Service\"": [
///               \""mns.aliyuncs.com\""
///             ]
///           }
///         }
///       ],
///       \""Version\"": \""1\""
///   }
/// ",
///         Description = "this is a example",
///         Force = true,
///     });
///
///     var defaultRolePolicyAttachment = new AliCloud.Ram.RolePolicyAttachment("default", new()
///     {
///         RoleName = defaultRole.Name,
///         PolicyName = "AliyunMNSNotificationRolePolicy",
///         PolicyType = "System",
///     });
///
///     var defaultService = new AliCloud.FC.Service("default", new()
///     {
///         Name = $"example-value-{defaultInteger.Result}",
///         Description = "example-value",
///         InternetAccess = false,
///     });
///
///     var defaultBucket = new AliCloud.Oss.Bucket("default", new()
///     {
///         BucketName = $"terraform-example-{defaultInteger.Result}",
///     });
///
///     // If you upload the function by OSS Bucket, you need to specify path can't upload by content.
///     var defaultBucketObject = new AliCloud.Oss.BucketObject("default", new()
///     {
///         Bucket = defaultBucket.Id,
///         Key = "index.py",
///         Content = @"import logging
/// def handler(event, context):
/// logger = logging.getLogger()
/// logger.info('hello world')
/// return 'hello world'",
///     });
///
///     var defaultFunction = new AliCloud.FC.Function("default", new()
///     {
///         Service = defaultService.Name,
///         Name = $"terraform-example-{defaultInteger.Result}",
///         Description = "example",
///         OssBucket = defaultBucket.Id,
///         OssKey = defaultBucketObject.Key,
///         MemorySize = 512,
///         Runtime = "python3.10",
///         Handler = "hello.handler",
///     });
///
///     var defaultTrigger = new AliCloud.FC.Trigger("default", new()
///     {
///         Service = defaultService.Name,
///         Function = defaultFunction.Name,
///         Name = "terraform-example",
///         Role = defaultRole.Arn,
///         SourceArn = Output.Tuple(defaultGetRegions, @default, defaultTopic.Name).Apply(values =>
///         {
///             var defaultGetRegions = values.Item1;
///             var @default = values.Item2;
///             var name = values.Item3;
///             return $"acs:mns:{defaultGetRegions.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)}:{@default.Apply(getAccountResult => getAccountResult.Id)}:/topics/{name}";
///         }),
///         Type = "mns_topic",
///         ConfigMns = @"  {
///     \""filterTag\"":\""exampleTag\"",
///     \""notifyContentFormat\"":\""STREAM\"",
///     \""notifyStrategy\"":\""BACKOFF_RETRY\""
///   }
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/fc"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/mns"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oss"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetRegions, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTopic, err := mns.NewTopic(ctx, "default", &mns.TopicArgs{
/// 			Name: pulumi.Sprintf("example-value-%v", defaultInteger.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRole, err := ram.NewRole(ctx, "default", &ram.RoleArgs{
/// 			Name: pulumi.Sprintf("fcservicerole-%v", defaultInteger.Result),
/// 			Document: pulumi.String(`  {
///       \"Statement\": [
///         {
///           \"Action\": \"sts:AssumeRole\",
///           \"Effect\": \"Allow\",
///           \"Principal\": {
///             \"Service\": [
///               \"mns.aliyuncs.com\"
///             ]
///           }
///         }
///       ],
///       \"Version\": \"1\"
///   }
/// `),
/// 			Description: pulumi.String("this is a example"),
/// 			Force:       pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ram.NewRolePolicyAttachment(ctx, "default", &ram.RolePolicyAttachmentArgs{
/// 			RoleName:   defaultRole.Name,
/// 			PolicyName: pulumi.String("AliyunMNSNotificationRolePolicy"),
/// 			PolicyType: pulumi.String("System"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultService, err := fc.NewService(ctx, "default", &fc.ServiceArgs{
/// 			Name:           pulumi.Sprintf("example-value-%v", defaultInteger.Result),
/// 			Description:    pulumi.String("example-value"),
/// 			InternetAccess: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBucket, err := oss.NewBucket(ctx, "default", &oss.BucketArgs{
/// 			Bucket: pulumi.Sprintf("terraform-example-%v", defaultInteger.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// If you upload the function by OSS Bucket, you need to specify path can't upload by content.
/// 		defaultBucketObject, err := oss.NewBucketObject(ctx, "default", &oss.BucketObjectArgs{
/// 			Bucket:  defaultBucket.ID(),
/// 			Key:     pulumi.String("index.py"),
/// 			Content: pulumi.String("import logging \ndef handler(event, context): \nlogger = logging.getLogger() \nlogger.info('hello world') \nreturn 'hello world'"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultFunction, err := fc.NewFunction(ctx, "default", &fc.FunctionArgs{
/// 			Service:     defaultService.Name,
/// 			Name:        pulumi.Sprintf("terraform-example-%v", defaultInteger.Result),
/// 			Description: pulumi.String("example"),
/// 			OssBucket:   defaultBucket.ID(),
/// 			OssKey:      defaultBucketObject.Key,
/// 			MemorySize:  pulumi.Int(512),
/// 			Runtime:     pulumi.String("python3.10"),
/// 			Handler:     pulumi.String("hello.handler"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = fc.NewTrigger(ctx, "default", &fc.TriggerArgs{
/// 			Service:  defaultService.Name,
/// 			Function: defaultFunction.Name,
/// 			Name:     pulumi.String("terraform-example"),
/// 			Role:     defaultRole.Arn,
/// 			SourceArn: defaultTopic.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("acs:mns:%v:%v:/topics/%v", defaultGetRegions.Regions[0].Id, _default.Id, name), nil
/// 			}).(pulumi.StringOutput),
/// 			Type: pulumi.String("mns_topic"),
/// 			ConfigMns: pulumi.String(`  {
///     \"filterTag\":\"exampleTag\",
///     \"notifyContentFormat\":\"STREAM\",
///     \"notifyStrategy\":\"BACKOFF_RETRY\"
///   }
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetRegionsArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.mns.Topic;
/// import com.pulumi.alicloud.mns.TopicArgs;
/// import com.pulumi.alicloud.ram.Role;
/// import com.pulumi.alicloud.ram.RoleArgs;
/// import com.pulumi.alicloud.ram.RolePolicyAttachment;
/// import com.pulumi.alicloud.ram.RolePolicyAttachmentArgs;
/// import com.pulumi.alicloud.fc.Service;
/// import com.pulumi.alicloud.fc.ServiceArgs;
/// import com.pulumi.alicloud.oss.Bucket;
/// import com.pulumi.alicloud.oss.BucketArgs;
/// import com.pulumi.alicloud.oss.BucketObject;
/// import com.pulumi.alicloud.oss.BucketObjectArgs;
/// import com.pulumi.alicloud.fc.Function;
/// import com.pulumi.alicloud.fc.FunctionArgs;
/// import com.pulumi.alicloud.fc.Trigger;
/// import com.pulumi.alicloud.fc.TriggerArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var default = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         final var defaultGetRegions = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         var defaultTopic = new Topic("defaultTopic", TopicArgs.builder()
///             .name(String.format("example-value-%s", defaultInteger.result()))
///             .build());
///
///         var defaultRole = new Role("defaultRole", RoleArgs.builder()
///             .name(String.format("fcservicerole-%s", defaultInteger.result()))
///             .document("""
///   {
///       \"Statement\": [
///         {
///           \"Action\": \"sts:AssumeRole\",
///           \"Effect\": \"Allow\",
///           \"Principal\": {
///             \"Service\": [
///               \"mns.aliyuncs.com\"
///             ]
///           }
///         }
///       ],
///       \"Version\": \"1\"
///   }
///             """)
///             .description("this is a example")
///             .force(true)
///             .build());
///
///         var defaultRolePolicyAttachment = new RolePolicyAttachment("defaultRolePolicyAttachment", RolePolicyAttachmentArgs.builder()
///             .roleName(defaultRole.name())
///             .policyName("AliyunMNSNotificationRolePolicy")
///             .policyType("System")
///             .build());
///
///         var defaultService = new Service("defaultService", ServiceArgs.builder()
///             .name(String.format("example-value-%s", defaultInteger.result()))
///             .description("example-value")
///             .internetAccess(false)
///             .build());
///
///         var defaultBucket = new Bucket("defaultBucket", BucketArgs.builder()
///             .bucket(String.format("terraform-example-%s", defaultInteger.result()))
///             .build());
///
///         // If you upload the function by OSS Bucket, you need to specify path can't upload by content.
///         var defaultBucketObject = new BucketObject("defaultBucketObject", BucketObjectArgs.builder()
///             .bucket(defaultBucket.id())
///             .key("index.py")
///             .content("""
/// import logging
/// def handler(event, context):
/// logger = logging.getLogger()
/// logger.info('hello world')
/// return 'hello world'            """)
///             .build());
///
///         var defaultFunction = new Function("defaultFunction", FunctionArgs.builder()
///             .service(defaultService.name())
///             .name(String.format("terraform-example-%s", defaultInteger.result()))
///             .description("example")
///             .ossBucket(defaultBucket.id())
///             .ossKey(defaultBucketObject.key())
///             .memorySize(512)
///             .runtime("python3.10")
///             .handler("hello.handler")
///             .build());
///
///         var defaultTrigger = new Trigger("defaultTrigger", TriggerArgs.builder()
///             .service(defaultService.name())
///             .function(defaultFunction.name())
///             .name("terraform-example")
///             .role(defaultRole.arn())
///             .sourceArn(defaultTopic.name().applyValue(_name -> String.format("acs:mns:%s:%s:/topics/%s", defaultGetRegions.regions()[0].id(),default_.id(),_name)))
///             .type("mns_topic")
///             .configMns("""
///   {
///     \"filterTag\":\"exampleTag\",
///     \"notifyContentFormat\":\"STREAM\",
///     \"notifyStrategy\":\"BACKOFF_RETRY\"
///   }
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       max: 99999
///       min: 10000
///   defaultTopic:
///     type: alicloud:mns:Topic
///     name: default
///     properties:
///       name: example-value-${defaultInteger.result}
///   defaultRole:
///     type: alicloud:ram:Role
///     name: default
///     properties:
///       name: fcservicerole-${defaultInteger.result}
///       document: |2
///           {
///               \"Statement\": [
///                 {
///                   \"Action\": \"sts:AssumeRole\",
///                   \"Effect\": \"Allow\",
///                   \"Principal\": {
///                     \"Service\": [
///                       \"mns.aliyuncs.com\"
///                     ]
///                   }
///                 }
///               ],
///               \"Version\": \"1\"
///           }
///       description: this is a example
///       force: true
///   defaultRolePolicyAttachment:
///     type: alicloud:ram:RolePolicyAttachment
///     name: default
///     properties:
///       roleName: ${defaultRole.name}
///       policyName: AliyunMNSNotificationRolePolicy
///       policyType: System
///   defaultService:
///     type: alicloud:fc:Service
///     name: default
///     properties:
///       name: example-value-${defaultInteger.result}
///       description: example-value
///       internetAccess: false
///   defaultBucket:
///     type: alicloud:oss:Bucket
///     name: default
///     properties:
///       bucket: terraform-example-${defaultInteger.result}
///   # If you upload the function by OSS Bucket, you need to specify path can't upload by content.
///   defaultBucketObject:
///     type: alicloud:oss:BucketObject
///     name: default
///     properties:
///       bucket: ${defaultBucket.id}
///       key: index.py
///       content: "import logging \ndef handler(event, context): \nlogger = logging.getLogger() \nlogger.info('hello world') \nreturn 'hello world'"
///   defaultFunction:
///     type: alicloud:fc:Function
///     name: default
///     properties:
///       service: ${defaultService.name}
///       name: terraform-example-${defaultInteger.result}
///       description: example
///       ossBucket: ${defaultBucket.id}
///       ossKey: ${defaultBucketObject.key}
///       memorySize: '512'
///       runtime: python3.10
///       handler: hello.handler
///   defaultTrigger:
///     type: alicloud:fc:Trigger
///     name: default
///     properties:
///       service: ${defaultService.name}
///       function: ${defaultFunction.name}
///       name: terraform-example
///       role: ${defaultRole.arn}
///       sourceArn: acs:mns:${defaultGetRegions.regions[0].id}:${default.id}:/topics/${defaultTopic.name}
///       type: mns_topic
///       configMns: |2
///           {
///             \"filterTag\":\"exampleTag\",
///             \"notifyContentFormat\":\"STREAM\",
///             \"notifyStrategy\":\"BACKOFF_RETRY\"
///           }
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
///   defaultGetRegions:
///     fn::invoke:
///       function: alicloud:getRegions
///       arguments:
///         current: true
/// ```
///
///
/// CDN events trigger:
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const _default = alicloud.getAccount({});
/// const defaultInteger = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const defaultDomainNew = new alicloud.cdn.DomainNew("default", {
///     domainName: `example${defaultInteger.result}.tf.com`,
///     cdnType: "web",
///     scope: "overseas",
///     sources: [{
///         content: "1.1.1.1",
///         type: "ipaddr",
///         priority: 20,
///         port: 80,
///         weight: 10,
///     }],
/// });
/// const defaultService = new alicloud.fc.Service("default", {
///     name: `example-value-${defaultInteger.result}`,
///     description: "example-value",
///     internetAccess: false,
/// });
/// const defaultRole = new alicloud.ram.Role("default", {
///     name: `fcservicerole-${defaultInteger.result}`,
///     document: `    {
///       \\"Statement\\": [
///         {
///           \\"Action\\": \\"sts:AssumeRole\\",
///           \\"Effect\\": \\"Allow\\",
///           \\"Principal\\": {
///             \\"Service\\": [
///               \\"cdn.aliyuncs.com\\"
///             ]
///           }
///         }
///       ],
///       \\"Version\\": \\"1\\"
///   }
/// `,
///     description: "this is a example",
///     force: true,
/// });
/// const defaultPolicy = new alicloud.ram.Policy("default", {
///     policyName: `fcservicepolicy-${defaultInteger.result}`,
///     policyDocument: pulumi.interpolate`    {
///         \"Version\": \"1\",
///         \"Statement\": [
///         {
///             \"Action\": [
///             \"fc:InvokeFunction\"
///             ],
///         \"Resource\": [
///             \"acs:fc:*:*:services/${defaultService.name}/functions/*\",
///             \"acs:fc:*:*:services/${defaultService.name}.*/functions/*\"
///         ],
///         \"Effect\": \"Allow\"
///         }
///         ]
///     }
/// `,
///     description: "this is a example",
///     force: true,
/// });
/// const defaultRolePolicyAttachment = new alicloud.ram.RolePolicyAttachment("default", {
///     roleName: defaultRole.name,
///     policyName: defaultPolicy.policyName,
///     policyType: "Custom",
/// });
/// const defaultBucket = new alicloud.oss.Bucket("default", {bucket: `terraform-example-${defaultInteger.result}`});
/// // If you upload the function by OSS Bucket, you need to specify path can't upload by content.
/// const defaultBucketObject = new alicloud.oss.BucketObject("default", {
///     bucket: defaultBucket.id,
///     key: "index.py",
///     content: `import logging
/// def handler(event, context):
/// logger = logging.getLogger()
/// logger.info('hello world')
/// return 'hello world'`,
/// });
/// const defaultFunction = new alicloud.fc.Function("default", {
///     service: defaultService.name,
///     name: `terraform-example-${defaultInteger.result}`,
///     description: "example",
///     ossBucket: defaultBucket.id,
///     ossKey: defaultBucketObject.key,
///     memorySize: 512,
///     runtime: "python3.10",
///     handler: "hello.handler",
/// });
/// const defaultTrigger = new alicloud.fc.Trigger("default", {
///     service: defaultService.name,
///     "function": defaultFunction.name,
///     name: "terraform-example",
///     role: defaultRole.arn,
///     sourceArn: _default.then(_default => `acs:cdn:*:${_default.id}`),
///     type: "cdn_events",
///     config: pulumi.interpolate`      {\"eventName\":\"LogFileCreated\",
///      \"eventVersion\":\"1.0.0\",
///      \"notes\":\"cdn events trigger\",
///      \"filter\":{
///         \"domain\": [\"${defaultDomainNew.domainName}\"]
///         }
///     }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = alicloud.get_account()
/// default_integer = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// default_domain_new = alicloud.cdn.DomainNew("default",
///     domain_name=f"example{default_integer['result']}.tf.com",
///     cdn_type="web",
///     scope="overseas",
///     sources=[{
///         "content": "1.1.1.1",
///         "type": "ipaddr",
///         "priority": 20,
///         "port": 80,
///         "weight": 10,
///     }])
/// default_service = alicloud.fc.Service("default",
///     name=f"example-value-{default_integer['result']}",
///     description="example-value",
///     internet_access=False)
/// default_role = alicloud.ram.Role("default",
///     name=f"fcservicerole-{default_integer['result']}",
///     document="""    {
///       \"Statement\": [
///         {
///           \"Action\": \"sts:AssumeRole\",
///           \"Effect\": \"Allow\",
///           \"Principal\": {
///             \"Service\": [
///               \"cdn.aliyuncs.com\"
///             ]
///           }
///         }
///       ],
///       \"Version\": \"1\"
///   }
/// """,
///     description="this is a example",
///     force=True)
/// default_policy = alicloud.ram.Policy("default",
///     policy_name=f"fcservicepolicy-{default_integer['result']}",
///     policy_document=pulumi.Output.all(
///         defaultServiceName=default_service.name,
///         defaultServiceName1=default_service.name
/// ).apply(lambda resolved_outputs: f"""    {{
///         \"Version\": \"1\",
///         \"Statement\": [
///         {{
///             \"Action\": [
///             \"fc:InvokeFunction\"
///             ],
///         \"Resource\": [
///             \"acs:fc:*:*:services/{resolved_outputs['defaultServiceName']}/functions/*\",
///             \"acs:fc:*:*:services/{resolved_outputs['defaultServiceName1']}.*/functions/*\"
///         ],
///         \"Effect\": \"Allow\"
///         }}
///         ]
///     }}
/// """)
/// ,
///     description="this is a example",
///     force=True)
/// default_role_policy_attachment = alicloud.ram.RolePolicyAttachment("default",
///     role_name=default_role.name,
///     policy_name=default_policy.policy_name,
///     policy_type="Custom")
/// default_bucket = alicloud.oss.Bucket("default", bucket=f"terraform-example-{default_integer['result']}")
/// # If you upload the function by OSS Bucket, you need to specify path can't upload by content.
/// default_bucket_object = alicloud.oss.BucketObject("default",
///     bucket=default_bucket.id,
///     key="index.py",
///     content="""import logging
/// def handler(event, context):
/// logger = logging.getLogger()
/// logger.info('hello world')
/// return 'hello world'""")
/// default_function = alicloud.fc.Function("default",
///     service=default_service.name,
///     name=f"terraform-example-{default_integer['result']}",
///     description="example",
///     oss_bucket=default_bucket.id,
///     oss_key=default_bucket_object.key,
///     memory_size=512,
///     runtime="python3.10",
///     handler="hello.handler")
/// default_trigger = alicloud.fc.Trigger("default",
///     service=default_service.name,
///     function=default_function.name,
///     name="terraform-example",
///     role=default_role.arn,
///     source_arn=f"acs:cdn:*:{default.id}",
///     type="cdn_events",
///     config=default_domain_new.domain_name.apply(lambda domain_name: f"""      {{\"eventName\":\"LogFileCreated\",
///      \"eventVersion\":\"1.0.0\",
///      \"notes\":\"cdn events trigger\",
///      \"filter\":{{
///         \"domain\": [\"{domain_name}\"]
///         }}
///     }}
/// """))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.GetAccount.Invoke();
///
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var defaultDomainNew = new AliCloud.Cdn.DomainNew("default", new()
///     {
///         DomainName = $"example{defaultInteger.Result}.tf.com",
///         CdnType = "web",
///         Scope = "overseas",
///         Sources = new[]
///         {
///             new AliCloud.Cdn.Inputs.DomainNewSourceArgs
///             {
///                 Content = "1.1.1.1",
///                 Type = "ipaddr",
///                 Priority = 20,
///                 Port = 80,
///                 Weight = 10,
///             },
///         },
///     });
///
///     var defaultService = new AliCloud.FC.Service("default", new()
///     {
///         Name = $"example-value-{defaultInteger.Result}",
///         Description = "example-value",
///         InternetAccess = false,
///     });
///
///     var defaultRole = new AliCloud.Ram.Role("default", new()
///     {
///         Name = $"fcservicerole-{defaultInteger.Result}",
///         Document = @"    {
///       \""Statement\"": [
///         {
///           \""Action\"": \""sts:AssumeRole\"",
///           \""Effect\"": \""Allow\"",
///           \""Principal\"": {
///             \""Service\"": [
///               \""cdn.aliyuncs.com\""
///             ]
///           }
///         }
///       ],
///       \""Version\"": \""1\""
///   }
/// ",
///         Description = "this is a example",
///         Force = true,
///     });
///
///     var defaultPolicy = new AliCloud.Ram.Policy("default", new()
///     {
///         PolicyName = $"fcservicepolicy-{defaultInteger.Result}",
///         PolicyDocument = Output.Tuple(defaultService.Name, defaultService.Name).Apply(values =>
///         {
///             var defaultServiceName = values.Item1;
///             var defaultServiceName1 = values.Item2;
///             return @$"    {{
///         \""Version\"": \""1\"",
///         \""Statement\"": [
///         {{
///             \""Action\"": [
///             \""fc:InvokeFunction\""
///             ],
///         \""Resource\"": [
///             \""acs:fc:*:*:services/{defaultServiceName}/functions/*\"",
///             \""acs:fc:*:*:services/{defaultServiceName1}.*/functions/*\""
///         ],
///         \""Effect\"": \""Allow\""
///         }}
///         ]
///     }}
/// ";
///         }),
///         Description = "this is a example",
///         Force = true,
///     });
///
///     var defaultRolePolicyAttachment = new AliCloud.Ram.RolePolicyAttachment("default", new()
///     {
///         RoleName = defaultRole.Name,
///         PolicyName = defaultPolicy.PolicyName,
///         PolicyType = "Custom",
///     });
///
///     var defaultBucket = new AliCloud.Oss.Bucket("default", new()
///     {
///         BucketName = $"terraform-example-{defaultInteger.Result}",
///     });
///
///     // If you upload the function by OSS Bucket, you need to specify path can't upload by content.
///     var defaultBucketObject = new AliCloud.Oss.BucketObject("default", new()
///     {
///         Bucket = defaultBucket.Id,
///         Key = "index.py",
///         Content = @"import logging
/// def handler(event, context):
/// logger = logging.getLogger()
/// logger.info('hello world')
/// return 'hello world'",
///     });
///
///     var defaultFunction = new AliCloud.FC.Function("default", new()
///     {
///         Service = defaultService.Name,
///         Name = $"terraform-example-{defaultInteger.Result}",
///         Description = "example",
///         OssBucket = defaultBucket.Id,
///         OssKey = defaultBucketObject.Key,
///         MemorySize = 512,
///         Runtime = "python3.10",
///         Handler = "hello.handler",
///     });
///
///     var defaultTrigger = new AliCloud.FC.Trigger("default", new()
///     {
///         Service = defaultService.Name,
///         Function = defaultFunction.Name,
///         Name = "terraform-example",
///         Role = defaultRole.Arn,
///         SourceArn = @default.Apply(@default => $"acs:cdn:*:{@default.Apply(getAccountResult => getAccountResult.Id)}"),
///         Type = "cdn_events",
///         Config = defaultDomainNew.DomainName.Apply(domainName => @$"      {{\""eventName\"":\""LogFileCreated\"",
///      \""eventVersion\"":\""1.0.0\"",
///      \""notes\"":\""cdn events trigger\"",
///      \""filter\"":{{
///         \""domain\"": [\""{domainName}\""]
///         }}
///     }}
/// "),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cdn"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/fc"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oss"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultDomainNew, err := cdn.NewDomainNew(ctx, "default", &cdn.DomainNewArgs{
/// 			DomainName: pulumi.Sprintf("example%v.tf.com", defaultInteger.Result),
/// 			CdnType:    pulumi.String("web"),
/// 			Scope:      pulumi.String("overseas"),
/// 			Sources: cdn.DomainNewSourceArray{
/// 				&cdn.DomainNewSourceArgs{
/// 					Content:  pulumi.String("1.1.1.1"),
/// 					Type:     pulumi.String("ipaddr"),
/// 					Priority: pulumi.Int(20),
/// 					Port:     pulumi.Int(80),
/// 					Weight:   pulumi.Int(10),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultService, err := fc.NewService(ctx, "default", &fc.ServiceArgs{
/// 			Name:           pulumi.Sprintf("example-value-%v", defaultInteger.Result),
/// 			Description:    pulumi.String("example-value"),
/// 			InternetAccess: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRole, err := ram.NewRole(ctx, "default", &ram.RoleArgs{
/// 			Name: pulumi.Sprintf("fcservicerole-%v", defaultInteger.Result),
/// 			Document: pulumi.String(`    {
///       \"Statement\": [
///         {
///           \"Action\": \"sts:AssumeRole\",
///           \"Effect\": \"Allow\",
///           \"Principal\": {
///             \"Service\": [
///               \"cdn.aliyuncs.com\"
///             ]
///           }
///         }
///       ],
///       \"Version\": \"1\"
///   }
/// `),
/// 			Description: pulumi.String("this is a example"),
/// 			Force:       pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultPolicy, err := ram.NewPolicy(ctx, "default", &ram.PolicyArgs{
/// 			PolicyName: pulumi.Sprintf("fcservicepolicy-%v", defaultInteger.Result),
/// 			PolicyDocument: pulumi.All(defaultService.Name, defaultService.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 				defaultServiceName := _args[0].(string)
/// 				defaultServiceName1 := _args[1].(string)
/// 				return fmt.Sprintf(`    {
///         \"Version\": \"1\",
///         \"Statement\": [
///         {
///             \"Action\": [
///             \"fc:InvokeFunction\"
///             ],
///         \"Resource\": [
///             \"acs:fc:*:*:services/%v/functions/*\",
///             \"acs:fc:*:*:services/%v.*/functions/*\"
///         ],
///         \"Effect\": \"Allow\"
///         }
///         ]
///     }
/// `, defaultServiceName, defaultServiceName1), nil
/// 			}).(pulumi.StringOutput),
/// 			Description: pulumi.String("this is a example"),
/// 			Force:       pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ram.NewRolePolicyAttachment(ctx, "default", &ram.RolePolicyAttachmentArgs{
/// 			RoleName:   defaultRole.Name,
/// 			PolicyName: defaultPolicy.PolicyName,
/// 			PolicyType: pulumi.String("Custom"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBucket, err := oss.NewBucket(ctx, "default", &oss.BucketArgs{
/// 			Bucket: pulumi.Sprintf("terraform-example-%v", defaultInteger.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// If you upload the function by OSS Bucket, you need to specify path can't upload by content.
/// 		defaultBucketObject, err := oss.NewBucketObject(ctx, "default", &oss.BucketObjectArgs{
/// 			Bucket:  defaultBucket.ID(),
/// 			Key:     pulumi.String("index.py"),
/// 			Content: pulumi.String("import logging \ndef handler(event, context): \nlogger = logging.getLogger() \nlogger.info('hello world') \nreturn 'hello world'"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultFunction, err := fc.NewFunction(ctx, "default", &fc.FunctionArgs{
/// 			Service:     defaultService.Name,
/// 			Name:        pulumi.Sprintf("terraform-example-%v", defaultInteger.Result),
/// 			Description: pulumi.String("example"),
/// 			OssBucket:   defaultBucket.ID(),
/// 			OssKey:      defaultBucketObject.Key,
/// 			MemorySize:  pulumi.Int(512),
/// 			Runtime:     pulumi.String("python3.10"),
/// 			Handler:     pulumi.String("hello.handler"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = fc.NewTrigger(ctx, "default", &fc.TriggerArgs{
/// 			Service:   defaultService.Name,
/// 			Function:  defaultFunction.Name,
/// 			Name:      pulumi.String("terraform-example"),
/// 			Role:      defaultRole.Arn,
/// 			SourceArn: pulumi.Sprintf("acs:cdn:*:%v", _default.Id),
/// 			Type:      pulumi.String("cdn_events"),
/// 			Config: defaultDomainNew.DomainName.ApplyT(func(domainName string) (string, error) {
/// 				return fmt.Sprintf(`      {\"eventName\":\"LogFileCreated\",
///      \"eventVersion\":\"1.0.0\",
///      \"notes\":\"cdn events trigger\",
///      \"filter\":{
///         \"domain\": [\"%v\"]
///         }
///     }
/// `, domainName), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.cdn.DomainNew;
/// import com.pulumi.alicloud.cdn.DomainNewArgs;
/// import com.pulumi.alicloud.cdn.inputs.DomainNewSourceArgs;
/// import com.pulumi.alicloud.fc.Service;
/// import com.pulumi.alicloud.fc.ServiceArgs;
/// import com.pulumi.alicloud.ram.Role;
/// import com.pulumi.alicloud.ram.RoleArgs;
/// import com.pulumi.alicloud.ram.Policy;
/// import com.pulumi.alicloud.ram.PolicyArgs;
/// import com.pulumi.alicloud.ram.RolePolicyAttachment;
/// import com.pulumi.alicloud.ram.RolePolicyAttachmentArgs;
/// import com.pulumi.alicloud.oss.Bucket;
/// import com.pulumi.alicloud.oss.BucketArgs;
/// import com.pulumi.alicloud.oss.BucketObject;
/// import com.pulumi.alicloud.oss.BucketObjectArgs;
/// import com.pulumi.alicloud.fc.Function;
/// import com.pulumi.alicloud.fc.FunctionArgs;
/// import com.pulumi.alicloud.fc.Trigger;
/// import com.pulumi.alicloud.fc.TriggerArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var default = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         var defaultDomainNew = new DomainNew("defaultDomainNew", DomainNewArgs.builder()
///             .domainName(String.format("example%s.tf.com", defaultInteger.result()))
///             .cdnType("web")
///             .scope("overseas")
///             .sources(DomainNewSourceArgs.builder()
///                 .content("1.1.1.1")
///                 .type("ipaddr")
///                 .priority(20)
///                 .port(80)
///                 .weight(10)
///                 .build())
///             .build());
///
///         var defaultService = new Service("defaultService", ServiceArgs.builder()
///             .name(String.format("example-value-%s", defaultInteger.result()))
///             .description("example-value")
///             .internetAccess(false)
///             .build());
///
///         var defaultRole = new Role("defaultRole", RoleArgs.builder()
///             .name(String.format("fcservicerole-%s", defaultInteger.result()))
///             .document("""
///     {
///       \"Statement\": [
///         {
///           \"Action\": \"sts:AssumeRole\",
///           \"Effect\": \"Allow\",
///           \"Principal\": {
///             \"Service\": [
///               \"cdn.aliyuncs.com\"
///             ]
///           }
///         }
///       ],
///       \"Version\": \"1\"
///   }
///             """)
///             .description("this is a example")
///             .force(true)
///             .build());
///
///         var defaultPolicy = new Policy("defaultPolicy", PolicyArgs.builder()
///             .policyName(String.format("fcservicepolicy-%s", defaultInteger.result()))
///             .policyDocument(Output.tuple(defaultService.name(), defaultService.name()).applyValue(values -> {
///                 var defaultServiceName = values.t1;
///                 var defaultServiceName1 = values.t2;
///                 return """
///     {
///         \"Version\": \"1\",
///         \"Statement\": [
///         {
///             \"Action\": [
///             \"fc:InvokeFunction\"
///             ],
///         \"Resource\": [
///             \"acs:fc:*:*:services/%s/functions/*\",
///             \"acs:fc:*:*:services/%s.*/functions/*\"
///         ],
///         \"Effect\": \"Allow\"
///         }
///         ]
///     }
/// ", defaultServiceName,defaultServiceName1);
///             }))
///             .description("this is a example")
///             .force(true)
///             .build());
///
///         var defaultRolePolicyAttachment = new RolePolicyAttachment("defaultRolePolicyAttachment", RolePolicyAttachmentArgs.builder()
///             .roleName(defaultRole.name())
///             .policyName(defaultPolicy.policyName())
///             .policyType("Custom")
///             .build());
///
///         var defaultBucket = new Bucket("defaultBucket", BucketArgs.builder()
///             .bucket(String.format("terraform-example-%s", defaultInteger.result()))
///             .build());
///
///         // If you upload the function by OSS Bucket, you need to specify path can't upload by content.
///         var defaultBucketObject = new BucketObject("defaultBucketObject", BucketObjectArgs.builder()
///             .bucket(defaultBucket.id())
///             .key("index.py")
///             .content("""
/// import logging
/// def handler(event, context):
/// logger = logging.getLogger()
/// logger.info('hello world')
/// return 'hello world'            """)
///             .build());
///
///         var defaultFunction = new Function("defaultFunction", FunctionArgs.builder()
///             .service(defaultService.name())
///             .name(String.format("terraform-example-%s", defaultInteger.result()))
///             .description("example")
///             .ossBucket(defaultBucket.id())
///             .ossKey(defaultBucketObject.key())
///             .memorySize(512)
///             .runtime("python3.10")
///             .handler("hello.handler")
///             .build());
///
///         var defaultTrigger = new Trigger("defaultTrigger", TriggerArgs.builder()
///             .service(defaultService.name())
///             .function(defaultFunction.name())
///             .name("terraform-example")
///             .role(defaultRole.arn())
///             .sourceArn(String.format("acs:cdn:*:%s", default_.id()))
///             .type("cdn_events")
///             .config(defaultDomainNew.domainName().applyValue(_domainName -> """
///       {\"eventName\":\"LogFileCreated\",
///      \"eventVersion\":\"1.0.0\",
///      \"notes\":\"cdn events trigger\",
///      \"filter\":{
///         \"domain\": [\"%s\"]
///         }
///     }
/// ", _domainName)))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       max: 99999
///       min: 10000
///   defaultDomainNew:
///     type: alicloud:cdn:DomainNew
///     name: default
///     properties:
///       domainName: example${defaultInteger.result}.tf.com
///       cdnType: web
///       scope: overseas
///       sources:
///         - content: 1.1.1.1
///           type: ipaddr
///           priority: 20
///           port: 80
///           weight: 10
///   defaultService:
///     type: alicloud:fc:Service
///     name: default
///     properties:
///       name: example-value-${defaultInteger.result}
///       description: example-value
///       internetAccess: false
///   defaultRole:
///     type: alicloud:ram:Role
///     name: default
///     properties:
///       name: fcservicerole-${defaultInteger.result}
///       document: |2
///             {
///               \"Statement\": [
///                 {
///                   \"Action\": \"sts:AssumeRole\",
///                   \"Effect\": \"Allow\",
///                   \"Principal\": {
///                     \"Service\": [
///                       \"cdn.aliyuncs.com\"
///                     ]
///                   }
///                 }
///               ],
///               \"Version\": \"1\"
///           }
///       description: this is a example
///       force: true
///   defaultPolicy:
///     type: alicloud:ram:Policy
///     name: default
///     properties:
///       policyName: fcservicepolicy-${defaultInteger.result}
///       policyDocument: |2
///             {
///                 \"Version\": \"1\",
///                 \"Statement\": [
///                 {
///                     \"Action\": [
///                     \"fc:InvokeFunction\"
///                     ],
///                 \"Resource\": [
///                     \"acs:fc:*:*:services/${defaultService.name}/functions/*\",
///                     \"acs:fc:*:*:services/${defaultService.name}.*/functions/*\"
///                 ],
///                 \"Effect\": \"Allow\"
///                 }
///                 ]
///             }
///       description: this is a example
///       force: true
///   defaultRolePolicyAttachment:
///     type: alicloud:ram:RolePolicyAttachment
///     name: default
///     properties:
///       roleName: ${defaultRole.name}
///       policyName: ${defaultPolicy.policyName}
///       policyType: Custom
///   defaultBucket:
///     type: alicloud:oss:Bucket
///     name: default
///     properties:
///       bucket: terraform-example-${defaultInteger.result}
///   # If you upload the function by OSS Bucket, you need to specify path can't upload by content.
///   defaultBucketObject:
///     type: alicloud:oss:BucketObject
///     name: default
///     properties:
///       bucket: ${defaultBucket.id}
///       key: index.py
///       content: "import logging \ndef handler(event, context): \nlogger = logging.getLogger() \nlogger.info('hello world') \nreturn 'hello world'"
///   defaultFunction:
///     type: alicloud:fc:Function
///     name: default
///     properties:
///       service: ${defaultService.name}
///       name: terraform-example-${defaultInteger.result}
///       description: example
///       ossBucket: ${defaultBucket.id}
///       ossKey: ${defaultBucketObject.key}
///       memorySize: '512'
///       runtime: python3.10
///       handler: hello.handler
///   defaultTrigger:
///     type: alicloud:fc:Trigger
///     name: default
///     properties:
///       service: ${defaultService.name}
///       function: ${defaultFunction.name}
///       name: terraform-example
///       role: ${defaultRole.arn}
///       sourceArn: acs:cdn:*:${default.id}
///       type: cdn_events
///       config: |2
///               {\"eventName\":\"LogFileCreated\",
///              \"eventVersion\":\"1.0.0\",
///              \"notes\":\"cdn events trigger\",
///              \"filter\":{
///                 \"domain\": [\"${defaultDomainNew.domainName}\"]
///                 }
///             }
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
/// ```
///
///
/// EventBridge trigger:
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const _default = alicloud.getAccount({});
/// const defaultGetRegions = alicloud.getRegions({
///     current: true,
/// });
/// const defaultInteger = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const serviceLinkedRole = new alicloud.eventbridge.ServiceLinkedRole("service_linked_role", {productName: "AliyunServiceRoleForEventBridgeSendToFC"});
/// const defaultService = new alicloud.fc.Service("default", {
///     name: `example-value-${defaultInteger.result}`,
///     description: "example-value",
///     internetAccess: false,
/// });
/// const defaultBucket = new alicloud.oss.Bucket("default", {bucket: `terraform-example-${defaultInteger.result}`});
/// // If you upload the function by OSS Bucket, you need to specify path can't upload by content.
/// const defaultBucketObject = new alicloud.oss.BucketObject("default", {
///     bucket: defaultBucket.id,
///     key: "index.py",
///     content: `import logging
/// def handler(event, context):
/// logger = logging.getLogger()
/// logger.info('hello world')
/// return 'hello world'`,
/// });
/// const defaultFunction = new alicloud.fc.Function("default", {
///     service: defaultService.name,
///     name: "terraform-example",
///     description: "example",
///     ossBucket: defaultBucket.id,
///     ossKey: defaultBucketObject.key,
///     memorySize: 512,
///     runtime: "python3.10",
///     handler: "hello.handler",
/// });
/// const ossTrigger = new alicloud.fc.Trigger("oss_trigger", {
///     service: defaultService.name,
///     "function": defaultFunction.name,
///     name: "terraform-example-oss",
///     type: "eventbridge",
///     config: JSON.stringify({
///         triggerEnable: false,
///         asyncInvocationType: false,
///         eventSourceConfig: {
///             eventSourceType: "Default",
///         },
///         eventRuleFilterPattern: "{\"source\":[\"acs.oss\"],\"type\":[\"oss:BucketCreated:PutBucket\"]}",
///         eventSinkConfig: {
///             deliveryOption: {
///                 mode: "event-driven",
///                 eventSchema: "CloudEvents",
///             },
///         },
///         runOptions: {
///             retryStrategy: {
///                 PushRetryStrategy: "BACKOFF_RETRY",
///             },
///             errorsTolerance: "ALL",
///             mode: "event-driven",
///         },
///     }),
/// });
/// const mnsTrigger = new alicloud.fc.Trigger("mns_trigger", {
///     service: defaultService.name,
///     "function": defaultFunction.name,
///     name: "terraform-example-mns",
///     type: "eventbridge",
///     config: JSON.stringify({
///         triggerEnable: false,
///         asyncInvocationType: false,
///         eventSourceConfig: {
///             eventSourceType: "MNS",
///             eventSourceParameters: {
///                 sourceMNSParameters: {
///                     RegionId: defaultGetRegions.then(defaultGetRegions => defaultGetRegions.regions?.[0]?.id),
///                     QueueName: "mns-queue",
///                     IsBase64Decode: true,
///                 },
///             },
///         },
///         eventRuleFilterPattern: "{}",
///         eventSinkConfig: {
///             deliveryOption: {
///                 mode: "event-driven",
///                 eventSchema: "CloudEvents",
///             },
///         },
///         runOptions: {
///             retryStrategy: {
///                 PushRetryStrategy: "BACKOFF_RETRY",
///             },
///             errorsTolerance: "ALL",
///             mode: "event-driven",
///         },
///     }),
/// });
/// const defaultInstance = new alicloud.rocketmq.Instance("default", {
///     instanceName: `terraform-example-${defaultInteger.result}`,
///     remark: "terraform-example",
/// });
/// const defaultGroup = new alicloud.rocketmq.Group("default", {
///     groupName: "GID-example",
///     instanceId: defaultInstance.id,
///     remark: "terraform-example",
/// });
/// const defaultTopic = new alicloud.rocketmq.Topic("default", {
///     topicName: "mytopic",
///     instanceId: defaultInstance.id,
///     messageType: 0,
///     remark: "terraform-example",
/// });
/// const rocketmqTrigger = new alicloud.fc.Trigger("rocketmq_trigger", {
///     service: defaultService.name,
///     "function": defaultFunction.name,
///     name: "terraform-example-rocketmq",
///     type: "eventbridge",
///     config: pulumi.jsonStringify({
///         triggerEnable: false,
///         asyncInvocationType: false,
///         eventRuleFilterPattern: "{}",
///         eventSinkConfig: {
///             deliveryOption: {
///                 mode: "event-driven",
///                 eventSchema: "CloudEvents",
///             },
///         },
///         eventSourceConfig: {
///             eventSourceType: "RocketMQ",
///             eventSourceParameters: {
///                 sourceRocketMQParameters: {
///                     RegionId: defaultGetRegions.then(defaultGetRegions => defaultGetRegions.regions?.[0]?.id),
///                     InstanceId: defaultInstance.id,
///                     GroupID: defaultGroup.groupName,
///                     Topic: defaultTopic.topicName,
///                     Timestamp: 1686296162,
///                     Tag: "example-tag",
///                     Offset: "CONSUME_FROM_LAST_OFFSET",
///                 },
///             },
///         },
///         runOptions: {
///             retryStrategy: {
///                 PushRetryStrategy: "BACKOFF_RETRY",
///             },
///             errorsTolerance: "ALL",
///             mode: "event-driven",
///         },
///     }),
/// });
/// const defaultInstance2 = new alicloud.amqp.Instance("default", {
///     instanceName: `terraform-example-${defaultInteger.result}`,
///     instanceType: "professional",
///     maxTps: "1000",
///     queueCapacity: "50",
///     supportEip: true,
///     maxEipTps: "128",
///     paymentType: "Subscription",
///     period: 1,
/// });
/// const defaultVirtualHost = new alicloud.amqp.VirtualHost("default", {
///     instanceId: defaultInstance2.id,
///     virtualHostName: "example-VirtualHost",
/// });
/// const defaultQueue = new alicloud.amqp.Queue("default", {
///     instanceId: defaultVirtualHost.instanceId,
///     queueName: "example-queue",
///     virtualHostName: defaultVirtualHost.virtualHostName,
/// });
/// const rabbitmqTrigger = new alicloud.fc.Trigger("rabbitmq_trigger", {
///     service: defaultService.name,
///     "function": defaultFunction.name,
///     name: "terraform-example-rabbitmq",
///     type: "eventbridge",
///     config: pulumi.jsonStringify({
///         triggerEnable: false,
///         asyncInvocationType: false,
///         eventRuleFilterPattern: "{}",
///         eventSourceConfig: {
///             eventSourceType: "RabbitMQ",
///             eventSourceParameters: {
///                 sourceRabbitMQParameters: {
///                     RegionId: defaultGetRegions.then(defaultGetRegions => defaultGetRegions.regions?.[0]?.id),
///                     InstanceId: defaultInstance2.id,
///                     VirtualHostName: defaultVirtualHost.virtualHostName,
///                     QueueName: defaultQueue.queueName,
///                 },
///             },
///         },
///         eventSinkConfig: {
///             deliveryOption: {
///                 mode: "event-driven",
///                 eventSchema: "CloudEvents",
///             },
///         },
///         runOptions: {
///             retryStrategy: {
///                 PushRetryStrategy: "BACKOFF_RETRY",
///             },
///             errorsTolerance: "ALL",
///             mode: "event-driven",
///         },
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = alicloud.get_account()
/// default_get_regions = alicloud.get_regions(current=True)
/// default_integer = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// service_linked_role = alicloud.eventbridge.ServiceLinkedRole("service_linked_role", product_name="AliyunServiceRoleForEventBridgeSendToFC")
/// default_service = alicloud.fc.Service("default",
///     name=f"example-value-{default_integer['result']}",
///     description="example-value",
///     internet_access=False)
/// default_bucket = alicloud.oss.Bucket("default", bucket=f"terraform-example-{default_integer['result']}")
/// # If you upload the function by OSS Bucket, you need to specify path can't upload by content.
/// default_bucket_object = alicloud.oss.BucketObject("default",
///     bucket=default_bucket.id,
///     key="index.py",
///     content="""import logging
/// def handler(event, context):
/// logger = logging.getLogger()
/// logger.info('hello world')
/// return 'hello world'""")
/// default_function = alicloud.fc.Function("default",
///     service=default_service.name,
///     name="terraform-example",
///     description="example",
///     oss_bucket=default_bucket.id,
///     oss_key=default_bucket_object.key,
///     memory_size=512,
///     runtime="python3.10",
///     handler="hello.handler")
/// oss_trigger = alicloud.fc.Trigger("oss_trigger",
///     service=default_service.name,
///     function=default_function.name,
///     name="terraform-example-oss",
///     type="eventbridge",
///     config=json.dumps({
///         "triggerEnable": False,
///         "asyncInvocationType": False,
///         "eventSourceConfig": {
///             "eventSourceType": "Default",
///         },
///         "eventRuleFilterPattern": "{\"source\":[\"acs.oss\"],\"type\":[\"oss:BucketCreated:PutBucket\"]}",
///         "eventSinkConfig": {
///             "deliveryOption": {
///                 "mode": "event-driven",
///                 "eventSchema": "CloudEvents",
///             },
///         },
///         "runOptions": {
///             "retryStrategy": {
///                 "PushRetryStrategy": "BACKOFF_RETRY",
///             },
///             "errorsTolerance": "ALL",
///             "mode": "event-driven",
///         },
///     }))
/// mns_trigger = alicloud.fc.Trigger("mns_trigger",
///     service=default_service.name,
///     function=default_function.name,
///     name="terraform-example-mns",
///     type="eventbridge",
///     config=json.dumps({
///         "triggerEnable": False,
///         "asyncInvocationType": False,
///         "eventSourceConfig": {
///             "eventSourceType": "MNS",
///             "eventSourceParameters": {
///                 "sourceMNSParameters": {
///                     "RegionId": default_get_regions.regions[0].id,
///                     "QueueName": "mns-queue",
///                     "IsBase64Decode": True,
///                 },
///             },
///         },
///         "eventRuleFilterPattern": "{}",
///         "eventSinkConfig": {
///             "deliveryOption": {
///                 "mode": "event-driven",
///                 "eventSchema": "CloudEvents",
///             },
///         },
///         "runOptions": {
///             "retryStrategy": {
///                 "PushRetryStrategy": "BACKOFF_RETRY",
///             },
///             "errorsTolerance": "ALL",
///             "mode": "event-driven",
///         },
///     }))
/// default_instance = alicloud.rocketmq.Instance("default",
///     instance_name=f"terraform-example-{default_integer['result']}",
///     remark="terraform-example")
/// default_group = alicloud.rocketmq.Group("default",
///     group_name="GID-example",
///     instance_id=default_instance.id,
///     remark="terraform-example")
/// default_topic = alicloud.rocketmq.Topic("default",
///     topic_name="mytopic",
///     instance_id=default_instance.id,
///     message_type=0,
///     remark="terraform-example")
/// rocketmq_trigger = alicloud.fc.Trigger("rocketmq_trigger",
///     service=default_service.name,
///     function=default_function.name,
///     name="terraform-example-rocketmq",
///     type="eventbridge",
///     config=pulumi.Output.json_dumps({
///         "triggerEnable": False,
///         "asyncInvocationType": False,
///         "eventRuleFilterPattern": "{}",
///         "eventSinkConfig": {
///             "deliveryOption": {
///                 "mode": "event-driven",
///                 "eventSchema": "CloudEvents",
///             },
///         },
///         "eventSourceConfig": {
///             "eventSourceType": "RocketMQ",
///             "eventSourceParameters": {
///                 "sourceRocketMQParameters": {
///                     "RegionId": default_get_regions.regions[0].id,
///                     "InstanceId": default_instance.id,
///                     "GroupID": default_group.group_name,
///                     "Topic": default_topic.topic_name,
///                     "Timestamp": 1686296162,
///                     "Tag": "example-tag",
///                     "Offset": "CONSUME_FROM_LAST_OFFSET",
///                 },
///             },
///         },
///         "runOptions": {
///             "retryStrategy": {
///                 "PushRetryStrategy": "BACKOFF_RETRY",
///             },
///             "errorsTolerance": "ALL",
///             "mode": "event-driven",
///         },
///     }))
/// default_instance2 = alicloud.amqp.Instance("default",
///     instance_name=f"terraform-example-{default_integer['result']}",
///     instance_type="professional",
///     max_tps="1000",
///     queue_capacity="50",
///     support_eip=True,
///     max_eip_tps="128",
///     payment_type="Subscription",
///     period=1)
/// default_virtual_host = alicloud.amqp.VirtualHost("default",
///     instance_id=default_instance2.id,
///     virtual_host_name="example-VirtualHost")
/// default_queue = alicloud.amqp.Queue("default",
///     instance_id=default_virtual_host.instance_id,
///     queue_name="example-queue",
///     virtual_host_name=default_virtual_host.virtual_host_name)
/// rabbitmq_trigger = alicloud.fc.Trigger("rabbitmq_trigger",
///     service=default_service.name,
///     function=default_function.name,
///     name="terraform-example-rabbitmq",
///     type="eventbridge",
///     config=pulumi.Output.json_dumps({
///         "triggerEnable": False,
///         "asyncInvocationType": False,
///         "eventRuleFilterPattern": "{}",
///         "eventSourceConfig": {
///             "eventSourceType": "RabbitMQ",
///             "eventSourceParameters": {
///                 "sourceRabbitMQParameters": {
///                     "RegionId": default_get_regions.regions[0].id,
///                     "InstanceId": default_instance2.id,
///                     "VirtualHostName": default_virtual_host.virtual_host_name,
///                     "QueueName": default_queue.queue_name,
///                 },
///             },
///         },
///         "eventSinkConfig": {
///             "deliveryOption": {
///                 "mode": "event-driven",
///                 "eventSchema": "CloudEvents",
///             },
///         },
///         "runOptions": {
///             "retryStrategy": {
///                 "PushRetryStrategy": "BACKOFF_RETRY",
///             },
///             "errorsTolerance": "ALL",
///             "mode": "event-driven",
///         },
///     }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.GetAccount.Invoke();
///
///     var defaultGetRegions = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var serviceLinkedRole = new AliCloud.EventBridge.ServiceLinkedRole("service_linked_role", new()
///     {
///         ProductName = "AliyunServiceRoleForEventBridgeSendToFC",
///     });
///
///     var defaultService = new AliCloud.FC.Service("default", new()
///     {
///         Name = $"example-value-{defaultInteger.Result}",
///         Description = "example-value",
///         InternetAccess = false,
///     });
///
///     var defaultBucket = new AliCloud.Oss.Bucket("default", new()
///     {
///         BucketName = $"terraform-example-{defaultInteger.Result}",
///     });
///
///     // If you upload the function by OSS Bucket, you need to specify path can't upload by content.
///     var defaultBucketObject = new AliCloud.Oss.BucketObject("default", new()
///     {
///         Bucket = defaultBucket.Id,
///         Key = "index.py",
///         Content = @"import logging
/// def handler(event, context):
/// logger = logging.getLogger()
/// logger.info('hello world')
/// return 'hello world'",
///     });
///
///     var defaultFunction = new AliCloud.FC.Function("default", new()
///     {
///         Service = defaultService.Name,
///         Name = "terraform-example",
///         Description = "example",
///         OssBucket = defaultBucket.Id,
///         OssKey = defaultBucketObject.Key,
///         MemorySize = 512,
///         Runtime = "python3.10",
///         Handler = "hello.handler",
///     });
///
///     var ossTrigger = new AliCloud.FC.Trigger("oss_trigger", new()
///     {
///         Service = defaultService.Name,
///         Function = defaultFunction.Name,
///         Name = "terraform-example-oss",
///         Type = "eventbridge",
///         Config = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["triggerEnable"] = false,
///             ["asyncInvocationType"] = false,
///             ["eventSourceConfig"] = new Dictionary<string, object?>
///             {
///                 ["eventSourceType"] = "Default",
///             },
///             ["eventRuleFilterPattern"] = "{\"source\":[\"acs.oss\"],\"type\":[\"oss:BucketCreated:PutBucket\"]}",
///             ["eventSinkConfig"] = new Dictionary<string, object?>
///             {
///                 ["deliveryOption"] = new Dictionary<string, object?>
///                 {
///                     ["mode"] = "event-driven",
///                     ["eventSchema"] = "CloudEvents",
///                 },
///             },
///             ["runOptions"] = new Dictionary<string, object?>
///             {
///                 ["retryStrategy"] = new Dictionary<string, object?>
///                 {
///                     ["PushRetryStrategy"] = "BACKOFF_RETRY",
///                 },
///                 ["errorsTolerance"] = "ALL",
///                 ["mode"] = "event-driven",
///             },
///         }),
///     });
///
///     var mnsTrigger = new AliCloud.FC.Trigger("mns_trigger", new()
///     {
///         Service = defaultService.Name,
///         Function = defaultFunction.Name,
///         Name = "terraform-example-mns",
///         Type = "eventbridge",
///         Config = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["triggerEnable"] = false,
///             ["asyncInvocationType"] = false,
///             ["eventSourceConfig"] = new Dictionary<string, object?>
///             {
///                 ["eventSourceType"] = "MNS",
///                 ["eventSourceParameters"] = new Dictionary<string, object?>
///                 {
///                     ["sourceMNSParameters"] = new Dictionary<string, object?>
///                     {
///                         ["RegionId"] = defaultGetRegions.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id),
///                         ["QueueName"] = "mns-queue",
///                         ["IsBase64Decode"] = true,
///                     },
///                 },
///             },
///             ["eventRuleFilterPattern"] = "{}",
///             ["eventSinkConfig"] = new Dictionary<string, object?>
///             {
///                 ["deliveryOption"] = new Dictionary<string, object?>
///                 {
///                     ["mode"] = "event-driven",
///                     ["eventSchema"] = "CloudEvents",
///                 },
///             },
///             ["runOptions"] = new Dictionary<string, object?>
///             {
///                 ["retryStrategy"] = new Dictionary<string, object?>
///                 {
///                     ["PushRetryStrategy"] = "BACKOFF_RETRY",
///                 },
///                 ["errorsTolerance"] = "ALL",
///                 ["mode"] = "event-driven",
///             },
///         }),
///     });
///
///     var defaultInstance = new AliCloud.RocketMQ.Instance("default", new()
///     {
///         InstanceName = $"terraform-example-{defaultInteger.Result}",
///         Remark = "terraform-example",
///     });
///
///     var defaultGroup = new AliCloud.RocketMQ.Group("default", new()
///     {
///         GroupName = "GID-example",
///         InstanceId = defaultInstance.Id,
///         Remark = "terraform-example",
///     });
///
///     var defaultTopic = new AliCloud.RocketMQ.Topic("default", new()
///     {
///         TopicName = "mytopic",
///         InstanceId = defaultInstance.Id,
///         MessageType = 0,
///         Remark = "terraform-example",
///     });
///
///     var rocketmqTrigger = new AliCloud.FC.Trigger("rocketmq_trigger", new()
///     {
///         Service = defaultService.Name,
///         Function = defaultFunction.Name,
///         Name = "terraform-example-rocketmq",
///         Type = "eventbridge",
///         Config = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///         {
///             ["triggerEnable"] = false,
///             ["asyncInvocationType"] = false,
///             ["eventRuleFilterPattern"] = "{}",
///             ["eventSinkConfig"] = new Dictionary<string, object?>
///             {
///                 ["deliveryOption"] = new Dictionary<string, object?>
///                 {
///                     ["mode"] = "event-driven",
///                     ["eventSchema"] = "CloudEvents",
///                 },
///             },
///             ["eventSourceConfig"] = new Dictionary<string, object?>
///             {
///                 ["eventSourceType"] = "RocketMQ",
///                 ["eventSourceParameters"] = new Dictionary<string, object?>
///                 {
///                     ["sourceRocketMQParameters"] = new Dictionary<string, object?>
///                     {
///                         ["RegionId"] = defaultGetRegions.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id),
///                         ["InstanceId"] = defaultInstance.Id,
///                         ["GroupID"] = defaultGroup.GroupName,
///                         ["Topic"] = defaultTopic.TopicName,
///                         ["Timestamp"] = 1686296162,
///                         ["Tag"] = "example-tag",
///                         ["Offset"] = "CONSUME_FROM_LAST_OFFSET",
///                     },
///                 },
///             },
///             ["runOptions"] = new Dictionary<string, object?>
///             {
///                 ["retryStrategy"] = new Dictionary<string, object?>
///                 {
///                     ["PushRetryStrategy"] = "BACKOFF_RETRY",
///                 },
///                 ["errorsTolerance"] = "ALL",
///                 ["mode"] = "event-driven",
///             },
///         })),
///     });
///
///     var defaultInstance2 = new AliCloud.Amqp.Instance("default", new()
///     {
///         InstanceName = $"terraform-example-{defaultInteger.Result}",
///         InstanceType = "professional",
///         MaxTps = "1000",
///         QueueCapacity = "50",
///         SupportEip = true,
///         MaxEipTps = "128",
///         PaymentType = "Subscription",
///         Period = 1,
///     });
///
///     var defaultVirtualHost = new AliCloud.Amqp.VirtualHost("default", new()
///     {
///         InstanceId = defaultInstance2.Id,
///         VirtualHostName = "example-VirtualHost",
///     });
///
///     var defaultQueue = new AliCloud.Amqp.Queue("default", new()
///     {
///         InstanceId = defaultVirtualHost.InstanceId,
///         QueueName = "example-queue",
///         VirtualHostName = defaultVirtualHost.VirtualHostName,
///     });
///
///     var rabbitmqTrigger = new AliCloud.FC.Trigger("rabbitmq_trigger", new()
///     {
///         Service = defaultService.Name,
///         Function = defaultFunction.Name,
///         Name = "terraform-example-rabbitmq",
///         Type = "eventbridge",
///         Config = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///         {
///             ["triggerEnable"] = false,
///             ["asyncInvocationType"] = false,
///             ["eventRuleFilterPattern"] = "{}",
///             ["eventSourceConfig"] = new Dictionary<string, object?>
///             {
///                 ["eventSourceType"] = "RabbitMQ",
///                 ["eventSourceParameters"] = new Dictionary<string, object?>
///                 {
///                     ["sourceRabbitMQParameters"] = new Dictionary<string, object?>
///                     {
///                         ["RegionId"] = defaultGetRegions.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id),
///                         ["InstanceId"] = defaultInstance2.Id,
///                         ["VirtualHostName"] = defaultVirtualHost.VirtualHostName,
///                         ["QueueName"] = defaultQueue.QueueName,
///                     },
///                 },
///             },
///             ["eventSinkConfig"] = new Dictionary<string, object?>
///             {
///                 ["deliveryOption"] = new Dictionary<string, object?>
///                 {
///                     ["mode"] = "event-driven",
///                     ["eventSchema"] = "CloudEvents",
///                 },
///             },
///             ["runOptions"] = new Dictionary<string, object?>
///             {
///                 ["retryStrategy"] = new Dictionary<string, object?>
///                 {
///                     ["PushRetryStrategy"] = "BACKOFF_RETRY",
///                 },
///                 ["errorsTolerance"] = "ALL",
///                 ["mode"] = "event-driven",
///             },
///         })),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/amqp"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eventbridge"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/fc"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oss"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rocketmq"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetRegions, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eventbridge.NewServiceLinkedRole(ctx, "service_linked_role", &eventbridge.ServiceLinkedRoleArgs{
/// 			ProductName: pulumi.String("AliyunServiceRoleForEventBridgeSendToFC"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultService, err := fc.NewService(ctx, "default", &fc.ServiceArgs{
/// 			Name:           pulumi.Sprintf("example-value-%v", defaultInteger.Result),
/// 			Description:    pulumi.String("example-value"),
/// 			InternetAccess: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBucket, err := oss.NewBucket(ctx, "default", &oss.BucketArgs{
/// 			Bucket: pulumi.Sprintf("terraform-example-%v", defaultInteger.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// If you upload the function by OSS Bucket, you need to specify path can't upload by content.
/// 		defaultBucketObject, err := oss.NewBucketObject(ctx, "default", &oss.BucketObjectArgs{
/// 			Bucket:  defaultBucket.ID(),
/// 			Key:     pulumi.String("index.py"),
/// 			Content: pulumi.String("import logging \ndef handler(event, context): \nlogger = logging.getLogger() \nlogger.info('hello world') \nreturn 'hello world'"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultFunction, err := fc.NewFunction(ctx, "default", &fc.FunctionArgs{
/// 			Service:     defaultService.Name,
/// 			Name:        pulumi.String("terraform-example"),
/// 			Description: pulumi.String("example"),
/// 			OssBucket:   defaultBucket.ID(),
/// 			OssKey:      defaultBucketObject.Key,
/// 			MemorySize:  pulumi.Int(512),
/// 			Runtime:     pulumi.String("python3.10"),
/// 			Handler:     pulumi.String("hello.handler"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"triggerEnable":       false,
/// 			"asyncInvocationType": false,
/// 			"eventSourceConfig": map[string]interface{}{
/// 				"eventSourceType": "Default",
/// 			},
/// 			"eventRuleFilterPattern": "{\"source\":[\"acs.oss\"],\"type\":[\"oss:BucketCreated:PutBucket\"]}",
/// 			"eventSinkConfig": map[string]interface{}{
/// 				"deliveryOption": map[string]interface{}{
/// 					"mode":        "event-driven",
/// 					"eventSchema": "CloudEvents",
/// 				},
/// 			},
/// 			"runOptions": map[string]interface{}{
/// 				"retryStrategy": map[string]interface{}{
/// 					"PushRetryStrategy": "BACKOFF_RETRY",
/// 				},
/// 				"errorsTolerance": "ALL",
/// 				"mode":            "event-driven",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = fc.NewTrigger(ctx, "oss_trigger", &fc.TriggerArgs{
/// 			Service:  defaultService.Name,
/// 			Function: defaultFunction.Name,
/// 			Name:     pulumi.String("terraform-example-oss"),
/// 			Type:     pulumi.String("eventbridge"),
/// 			Config:   pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 			"triggerEnable":       false,
/// 			"asyncInvocationType": false,
/// 			"eventSourceConfig": map[string]interface{}{
/// 				"eventSourceType": "MNS",
/// 				"eventSourceParameters": map[string]interface{}{
/// 					"sourceMNSParameters": map[string]interface{}{
/// 						"RegionId":       defaultGetRegions.Regions[0].Id,
/// 						"QueueName":      "mns-queue",
/// 						"IsBase64Decode": true,
/// 					},
/// 				},
/// 			},
/// 			"eventRuleFilterPattern": "{}",
/// 			"eventSinkConfig": map[string]interface{}{
/// 				"deliveryOption": map[string]interface{}{
/// 					"mode":        "event-driven",
/// 					"eventSchema": "CloudEvents",
/// 				},
/// 			},
/// 			"runOptions": map[string]interface{}{
/// 				"retryStrategy": map[string]interface{}{
/// 					"PushRetryStrategy": "BACKOFF_RETRY",
/// 				},
/// 				"errorsTolerance": "ALL",
/// 				"mode":            "event-driven",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		_, err = fc.NewTrigger(ctx, "mns_trigger", &fc.TriggerArgs{
/// 			Service:  defaultService.Name,
/// 			Function: defaultFunction.Name,
/// 			Name:     pulumi.String("terraform-example-mns"),
/// 			Type:     pulumi.String("eventbridge"),
/// 			Config:   pulumi.String(json1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := rocketmq.NewInstance(ctx, "default", &rocketmq.InstanceArgs{
/// 			InstanceName: pulumi.Sprintf("terraform-example-%v", defaultInteger.Result),
/// 			Remark:       pulumi.String("terraform-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGroup, err := rocketmq.NewGroup(ctx, "default", &rocketmq.GroupArgs{
/// 			GroupName:  pulumi.String("GID-example"),
/// 			InstanceId: defaultInstance.ID(),
/// 			Remark:     pulumi.String("terraform-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTopic, err := rocketmq.NewTopic(ctx, "default", &rocketmq.TopicArgs{
/// 			TopicName:   pulumi.String("mytopic"),
/// 			InstanceId:  defaultInstance.ID(),
/// 			MessageType: pulumi.Int(0),
/// 			Remark:      pulumi.String("terraform-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = fc.NewTrigger(ctx, "rocketmq_trigger", &fc.TriggerArgs{
/// 			Service:  defaultService.Name,
/// 			Function: defaultFunction.Name,
/// 			Name:     pulumi.String("terraform-example-rocketmq"),
/// 			Type:     pulumi.String("eventbridge"),
/// 			Config: pulumi.All(defaultInstance.ID(), defaultGroup.GroupName, defaultTopic.TopicName).ApplyT(func(_args []interface{}) (string, error) {
/// 				id := _args[0].(string)
/// 				groupName := _args[1].(string)
/// 				topicName := _args[2].(string)
/// 				var _zero string
/// 				tmpJSON2, err := json.Marshal(map[string]interface{}{
/// 					"triggerEnable":          false,
/// 					"asyncInvocationType":    false,
/// 					"eventRuleFilterPattern": "{}",
/// 					"eventSinkConfig": map[string]interface{}{
/// 						"deliveryOption": map[string]interface{}{
/// 							"mode":        "event-driven",
/// 							"eventSchema": "CloudEvents",
/// 						},
/// 					},
/// 					"eventSourceConfig": map[string]interface{}{
/// 						"eventSourceType": "RocketMQ",
/// 						"eventSourceParameters": map[string]interface{}{
/// 							"sourceRocketMQParameters": map[string]interface{}{
/// 								"RegionId":   defaultGetRegions.Regions[0].Id,
/// 								"InstanceId": id,
/// 								"GroupID":    groupName,
/// 								"Topic":      topicName,
/// 								"Timestamp":  1686296162,
/// 								"Tag":        "example-tag",
/// 								"Offset":     "CONSUME_FROM_LAST_OFFSET",
/// 							},
/// 						},
/// 					},
/// 					"runOptions": map[string]interface{}{
/// 						"retryStrategy": map[string]interface{}{
/// 							"PushRetryStrategy": "BACKOFF_RETRY",
/// 						},
/// 						"errorsTolerance": "ALL",
/// 						"mode":            "event-driven",
/// 					},
/// 				})
/// 				if err != nil {
/// 					return _zero, err
/// 				}
/// 				json2 := string(tmpJSON2)
/// 				return json2, nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance2, err := amqp.NewInstance(ctx, "default", &amqp.InstanceArgs{
/// 			InstanceName:  pulumi.Sprintf("terraform-example-%v", defaultInteger.Result),
/// 			InstanceType:  pulumi.String("professional"),
/// 			MaxTps:        pulumi.String("1000"),
/// 			QueueCapacity: pulumi.String("50"),
/// 			SupportEip:    pulumi.Bool(true),
/// 			MaxEipTps:     pulumi.String("128"),
/// 			PaymentType:   pulumi.String("Subscription"),
/// 			Period:        pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultVirtualHost, err := amqp.NewVirtualHost(ctx, "default", &amqp.VirtualHostArgs{
/// 			InstanceId:      defaultInstance2.ID(),
/// 			VirtualHostName: pulumi.String("example-VirtualHost"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultQueue, err := amqp.NewQueue(ctx, "default", &amqp.QueueArgs{
/// 			InstanceId:      defaultVirtualHost.InstanceId,
/// 			QueueName:       pulumi.String("example-queue"),
/// 			VirtualHostName: defaultVirtualHost.VirtualHostName,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = fc.NewTrigger(ctx, "rabbitmq_trigger", &fc.TriggerArgs{
/// 			Service:  defaultService.Name,
/// 			Function: defaultFunction.Name,
/// 			Name:     pulumi.String("terraform-example-rabbitmq"),
/// 			Type:     pulumi.String("eventbridge"),
/// 			Config: pulumi.All(defaultInstance2.ID(), defaultVirtualHost.VirtualHostName, defaultQueue.QueueName).ApplyT(func(_args []interface{}) (string, error) {
/// 				id := _args[0].(string)
/// 				virtualHostName := _args[1].(string)
/// 				queueName := _args[2].(string)
/// 				var _zero string
/// 				tmpJSON3, err := json.Marshal(map[string]interface{}{
/// 					"triggerEnable":          false,
/// 					"asyncInvocationType":    false,
/// 					"eventRuleFilterPattern": "{}",
/// 					"eventSourceConfig": map[string]interface{}{
/// 						"eventSourceType": "RabbitMQ",
/// 						"eventSourceParameters": map[string]interface{}{
/// 							"sourceRabbitMQParameters": map[string]interface{}{
/// 								"RegionId":        defaultGetRegions.Regions[0].Id,
/// 								"InstanceId":      id,
/// 								"VirtualHostName": virtualHostName,
/// 								"QueueName":       queueName,
/// 							},
/// 						},
/// 					},
/// 					"eventSinkConfig": map[string]interface{}{
/// 						"deliveryOption": map[string]interface{}{
/// 							"mode":        "event-driven",
/// 							"eventSchema": "CloudEvents",
/// 						},
/// 					},
/// 					"runOptions": map[string]interface{}{
/// 						"retryStrategy": map[string]interface{}{
/// 							"PushRetryStrategy": "BACKOFF_RETRY",
/// 						},
/// 						"errorsTolerance": "ALL",
/// 						"mode":            "event-driven",
/// 					},
/// 				})
/// 				if err != nil {
/// 					return _zero, err
/// 				}
/// 				json3 := string(tmpJSON3)
/// 				return json3, nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetRegionsArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.eventbridge.ServiceLinkedRole;
/// import com.pulumi.alicloud.eventbridge.ServiceLinkedRoleArgs;
/// import com.pulumi.alicloud.fc.Service;
/// import com.pulumi.alicloud.fc.ServiceArgs;
/// import com.pulumi.alicloud.oss.Bucket;
/// import com.pulumi.alicloud.oss.BucketArgs;
/// import com.pulumi.alicloud.oss.BucketObject;
/// import com.pulumi.alicloud.oss.BucketObjectArgs;
/// import com.pulumi.alicloud.fc.Function;
/// import com.pulumi.alicloud.fc.FunctionArgs;
/// import com.pulumi.alicloud.fc.Trigger;
/// import com.pulumi.alicloud.fc.TriggerArgs;
/// import com.pulumi.alicloud.rocketmq.Group;
/// import com.pulumi.alicloud.rocketmq.GroupArgs;
/// import com.pulumi.alicloud.rocketmq.Topic;
/// import com.pulumi.alicloud.rocketmq.TopicArgs;
/// import com.pulumi.alicloud.amqp.VirtualHost;
/// import com.pulumi.alicloud.amqp.VirtualHostArgs;
/// import com.pulumi.alicloud.amqp.Queue;
/// import com.pulumi.alicloud.amqp.QueueArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var default = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         final var defaultGetRegions = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         var serviceLinkedRole = new ServiceLinkedRole("serviceLinkedRole", ServiceLinkedRoleArgs.builder()
///             .productName("AliyunServiceRoleForEventBridgeSendToFC")
///             .build());
///
///         var defaultService = new Service("defaultService", ServiceArgs.builder()
///             .name(String.format("example-value-%s", defaultInteger.result()))
///             .description("example-value")
///             .internetAccess(false)
///             .build());
///
///         var defaultBucket = new Bucket("defaultBucket", BucketArgs.builder()
///             .bucket(String.format("terraform-example-%s", defaultInteger.result()))
///             .build());
///
///         // If you upload the function by OSS Bucket, you need to specify path can't upload by content.
///         var defaultBucketObject = new BucketObject("defaultBucketObject", BucketObjectArgs.builder()
///             .bucket(defaultBucket.id())
///             .key("index.py")
///             .content("""
/// import logging
/// def handler(event, context):
/// logger = logging.getLogger()
/// logger.info('hello world')
/// return 'hello world'            """)
///             .build());
///
///         var defaultFunction = new Function("defaultFunction", FunctionArgs.builder()
///             .service(defaultService.name())
///             .name("terraform-example")
///             .description("example")
///             .ossBucket(defaultBucket.id())
///             .ossKey(defaultBucketObject.key())
///             .memorySize(512)
///             .runtime("python3.10")
///             .handler("hello.handler")
///             .build());
///
///         var ossTrigger = new Trigger("ossTrigger", TriggerArgs.builder()
///             .service(defaultService.name())
///             .function(defaultFunction.name())
///             .name("terraform-example-oss")
///             .type("eventbridge")
///             .config(serializeJson(
///                 jsonObject(
///                     jsonProperty("triggerEnable", false),
///                     jsonProperty("asyncInvocationType", false),
///                     jsonProperty("eventSourceConfig", jsonObject(
///                         jsonProperty("eventSourceType", "Default")
///                     )),
///                     jsonProperty("eventRuleFilterPattern", "{\"source\":[\"acs.oss\"],\"type\":[\"oss:BucketCreated:PutBucket\"]}"),
///                     jsonProperty("eventSinkConfig", jsonObject(
///                         jsonProperty("deliveryOption", jsonObject(
///                             jsonProperty("mode", "event-driven"),
///                             jsonProperty("eventSchema", "CloudEvents")
///                         ))
///                     )),
///                     jsonProperty("runOptions", jsonObject(
///                         jsonProperty("retryStrategy", jsonObject(
///                             jsonProperty("PushRetryStrategy", "BACKOFF_RETRY")
///                         )),
///                         jsonProperty("errorsTolerance", "ALL"),
///                         jsonProperty("mode", "event-driven")
///                     ))
///                 )))
///             .build());
///
///         var mnsTrigger = new Trigger("mnsTrigger", TriggerArgs.builder()
///             .service(defaultService.name())
///             .function(defaultFunction.name())
///             .name("terraform-example-mns")
///             .type("eventbridge")
///             .config(serializeJson(
///                 jsonObject(
///                     jsonProperty("triggerEnable", false),
///                     jsonProperty("asyncInvocationType", false),
///                     jsonProperty("eventSourceConfig", jsonObject(
///                         jsonProperty("eventSourceType", "MNS"),
///                         jsonProperty("eventSourceParameters", jsonObject(
///                             jsonProperty("sourceMNSParameters", jsonObject(
///                                 jsonProperty("RegionId", defaultGetRegions.regions()[0].id()),
///                                 jsonProperty("QueueName", "mns-queue"),
///                                 jsonProperty("IsBase64Decode", true)
///                             ))
///                         ))
///                     )),
///                     jsonProperty("eventRuleFilterPattern", "{}"),
///                     jsonProperty("eventSinkConfig", jsonObject(
///                         jsonProperty("deliveryOption", jsonObject(
///                             jsonProperty("mode", "event-driven"),
///                             jsonProperty("eventSchema", "CloudEvents")
///                         ))
///                     )),
///                     jsonProperty("runOptions", jsonObject(
///                         jsonProperty("retryStrategy", jsonObject(
///                             jsonProperty("PushRetryStrategy", "BACKOFF_RETRY")
///                         )),
///                         jsonProperty("errorsTolerance", "ALL"),
///                         jsonProperty("mode", "event-driven")
///                     ))
///                 )))
///             .build());
///
///         var defaultInstance = new com.pulumi.alicloud.rocketmq.Instance("defaultInstance", com.pulumi.alicloud.rocketmq.InstanceArgs.builder()
///             .instanceName(String.format("terraform-example-%s", defaultInteger.result()))
///             .remark("terraform-example")
///             .build());
///
///         var defaultGroup = new Group("defaultGroup", GroupArgs.builder()
///             .groupName("GID-example")
///             .instanceId(defaultInstance.id())
///             .remark("terraform-example")
///             .build());
///
///         var defaultTopic = new Topic("defaultTopic", TopicArgs.builder()
///             .topicName("mytopic")
///             .instanceId(defaultInstance.id())
///             .messageType(0)
///             .remark("terraform-example")
///             .build());
///
///         var rocketmqTrigger = new Trigger("rocketmqTrigger", TriggerArgs.builder()
///             .service(defaultService.name())
///             .function(defaultFunction.name())
///             .name("terraform-example-rocketmq")
///             .type("eventbridge")
///             .config(Output.tuple(defaultInstance.id(), defaultGroup.groupName(), defaultTopic.topicName()).applyValue(values -> {
///                 var id = values.t1;
///                 var groupName = values.t2;
///                 var topicName = values.t3;
///                 return serializeJson(
///                     jsonObject(
///                         jsonProperty("triggerEnable", false),
///                         jsonProperty("asyncInvocationType", false),
///                         jsonProperty("eventRuleFilterPattern", "{}"),
///                         jsonProperty("eventSinkConfig", jsonObject(
///                             jsonProperty("deliveryOption", jsonObject(
///                                 jsonProperty("mode", "event-driven"),
///                                 jsonProperty("eventSchema", "CloudEvents")
///                             ))
///                         )),
///                         jsonProperty("eventSourceConfig", jsonObject(
///                             jsonProperty("eventSourceType", "RocketMQ"),
///                             jsonProperty("eventSourceParameters", jsonObject(
///                                 jsonProperty("sourceRocketMQParameters", jsonObject(
///                                     jsonProperty("RegionId", defaultGetRegions.regions()[0].id()),
///                                     jsonProperty("InstanceId", id),
///                                     jsonProperty("GroupID", groupName),
///                                     jsonProperty("Topic", topicName),
///                                     jsonProperty("Timestamp", 1686296162),
///                                     jsonProperty("Tag", "example-tag"),
///                                     jsonProperty("Offset", "CONSUME_FROM_LAST_OFFSET")
///                                 ))
///                             ))
///                         )),
///                         jsonProperty("runOptions", jsonObject(
///                             jsonProperty("retryStrategy", jsonObject(
///                                 jsonProperty("PushRetryStrategy", "BACKOFF_RETRY")
///                             )),
///                             jsonProperty("errorsTolerance", "ALL"),
///                             jsonProperty("mode", "event-driven")
///                         ))
///                     ));
///             }))
///             .build());
///
///         var defaultInstance2 = new com.pulumi.alicloud.amqp.Instance("defaultInstance2", com.pulumi.alicloud.amqp.InstanceArgs.builder()
///             .instanceName(String.format("terraform-example-%s", defaultInteger.result()))
///             .instanceType("professional")
///             .maxTps("1000")
///             .queueCapacity("50")
///             .supportEip(true)
///             .maxEipTps("128")
///             .paymentType("Subscription")
///             .period(1)
///             .build());
///
///         var defaultVirtualHost = new VirtualHost("defaultVirtualHost", VirtualHostArgs.builder()
///             .instanceId(defaultInstance2.id())
///             .virtualHostName("example-VirtualHost")
///             .build());
///
///         var defaultQueue = new Queue("defaultQueue", QueueArgs.builder()
///             .instanceId(defaultVirtualHost.instanceId())
///             .queueName("example-queue")
///             .virtualHostName(defaultVirtualHost.virtualHostName())
///             .build());
///
///         var rabbitmqTrigger = new Trigger("rabbitmqTrigger", TriggerArgs.builder()
///             .service(defaultService.name())
///             .function(defaultFunction.name())
///             .name("terraform-example-rabbitmq")
///             .type("eventbridge")
///             .config(Output.tuple(defaultInstance2.id(), defaultVirtualHost.virtualHostName(), defaultQueue.queueName()).applyValue(values -> {
///                 var id = values.t1;
///                 var virtualHostName = values.t2;
///                 var queueName = values.t3;
///                 return serializeJson(
///                     jsonObject(
///                         jsonProperty("triggerEnable", false),
///                         jsonProperty("asyncInvocationType", false),
///                         jsonProperty("eventRuleFilterPattern", "{}"),
///                         jsonProperty("eventSourceConfig", jsonObject(
///                             jsonProperty("eventSourceType", "RabbitMQ"),
///                             jsonProperty("eventSourceParameters", jsonObject(
///                                 jsonProperty("sourceRabbitMQParameters", jsonObject(
///                                     jsonProperty("RegionId", defaultGetRegions.regions()[0].id()),
///                                     jsonProperty("InstanceId", id),
///                                     jsonProperty("VirtualHostName", virtualHostName),
///                                     jsonProperty("QueueName", queueName)
///                                 ))
///                             ))
///                         )),
///                         jsonProperty("eventSinkConfig", jsonObject(
///                             jsonProperty("deliveryOption", jsonObject(
///                                 jsonProperty("mode", "event-driven"),
///                                 jsonProperty("eventSchema", "CloudEvents")
///                             ))
///                         )),
///                         jsonProperty("runOptions", jsonObject(
///                             jsonProperty("retryStrategy", jsonObject(
///                                 jsonProperty("PushRetryStrategy", "BACKOFF_RETRY")
///                             )),
///                             jsonProperty("errorsTolerance", "ALL"),
///                             jsonProperty("mode", "event-driven")
///                         ))
///                     ));
///             }))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       max: 99999
///       min: 10000
///   serviceLinkedRole:
///     type: alicloud:eventbridge:ServiceLinkedRole
///     name: service_linked_role
///     properties:
///       productName: AliyunServiceRoleForEventBridgeSendToFC
///   defaultService:
///     type: alicloud:fc:Service
///     name: default
///     properties:
///       name: example-value-${defaultInteger.result}
///       description: example-value
///       internetAccess: false
///   defaultBucket:
///     type: alicloud:oss:Bucket
///     name: default
///     properties:
///       bucket: terraform-example-${defaultInteger.result}
///   # If you upload the function by OSS Bucket, you need to specify path can't upload by content.
///   defaultBucketObject:
///     type: alicloud:oss:BucketObject
///     name: default
///     properties:
///       bucket: ${defaultBucket.id}
///       key: index.py
///       content: "import logging \ndef handler(event, context): \nlogger = logging.getLogger() \nlogger.info('hello world') \nreturn 'hello world'"
///   defaultFunction:
///     type: alicloud:fc:Function
///     name: default
///     properties:
///       service: ${defaultService.name}
///       name: terraform-example
///       description: example
///       ossBucket: ${defaultBucket.id}
///       ossKey: ${defaultBucketObject.key}
///       memorySize: '512'
///       runtime: python3.10
///       handler: hello.handler
///   ossTrigger:
///     type: alicloud:fc:Trigger
///     name: oss_trigger
///     properties:
///       service: ${defaultService.name}
///       function: ${defaultFunction.name}
///       name: terraform-example-oss
///       type: eventbridge
///       config:
///         fn::toJSON:
///           triggerEnable: false
///           asyncInvocationType: false
///           eventSourceConfig:
///             eventSourceType: Default
///           eventRuleFilterPattern: '{"source":["acs.oss"],"type":["oss:BucketCreated:PutBucket"]}'
///           eventSinkConfig:
///             deliveryOption:
///               mode: event-driven
///               eventSchema: CloudEvents
///           runOptions:
///             retryStrategy:
///               PushRetryStrategy: BACKOFF_RETRY
///             errorsTolerance: ALL
///             mode: event-driven
///   mnsTrigger:
///     type: alicloud:fc:Trigger
///     name: mns_trigger
///     properties:
///       service: ${defaultService.name}
///       function: ${defaultFunction.name}
///       name: terraform-example-mns
///       type: eventbridge
///       config:
///         fn::toJSON:
///           triggerEnable: false
///           asyncInvocationType: false
///           eventSourceConfig:
///             eventSourceType: MNS
///             eventSourceParameters:
///               sourceMNSParameters:
///                 RegionId: ${defaultGetRegions.regions[0].id}
///                 QueueName: mns-queue
///                 IsBase64Decode: true
///           eventRuleFilterPattern: '{}'
///           eventSinkConfig:
///             deliveryOption:
///               mode: event-driven
///               eventSchema: CloudEvents
///           runOptions:
///             retryStrategy:
///               PushRetryStrategy: BACKOFF_RETRY
///             errorsTolerance: ALL
///             mode: event-driven
///   defaultInstance:
///     type: alicloud:rocketmq:Instance
///     name: default
///     properties:
///       instanceName: terraform-example-${defaultInteger.result}
///       remark: terraform-example
///   defaultGroup:
///     type: alicloud:rocketmq:Group
///     name: default
///     properties:
///       groupName: GID-example
///       instanceId: ${defaultInstance.id}
///       remark: terraform-example
///   defaultTopic:
///     type: alicloud:rocketmq:Topic
///     name: default
///     properties:
///       topicName: mytopic
///       instanceId: ${defaultInstance.id}
///       messageType: 0
///       remark: terraform-example
///   rocketmqTrigger:
///     type: alicloud:fc:Trigger
///     name: rocketmq_trigger
///     properties:
///       service: ${defaultService.name}
///       function: ${defaultFunction.name}
///       name: terraform-example-rocketmq
///       type: eventbridge
///       config:
///         fn::toJSON:
///           triggerEnable: false
///           asyncInvocationType: false
///           eventRuleFilterPattern: '{}'
///           eventSinkConfig:
///             deliveryOption:
///               mode: event-driven
///               eventSchema: CloudEvents
///           eventSourceConfig:
///             eventSourceType: RocketMQ
///             eventSourceParameters:
///               sourceRocketMQParameters:
///                 RegionId: ${defaultGetRegions.regions[0].id}
///                 InstanceId: ${defaultInstance.id}
///                 GroupID: ${defaultGroup.groupName}
///                 Topic: ${defaultTopic.topicName}
///                 Timestamp: 1.686296162e+09
///                 Tag: example-tag
///                 Offset: CONSUME_FROM_LAST_OFFSET
///           runOptions:
///             retryStrategy:
///               PushRetryStrategy: BACKOFF_RETRY
///             errorsTolerance: ALL
///             mode: event-driven
///   defaultInstance2:
///     type: alicloud:amqp:Instance
///     name: default
///     properties:
///       instanceName: terraform-example-${defaultInteger.result}
///       instanceType: professional
///       maxTps: 1000
///       queueCapacity: 50
///       supportEip: true
///       maxEipTps: 128
///       paymentType: Subscription
///       period: 1
///   defaultVirtualHost:
///     type: alicloud:amqp:VirtualHost
///     name: default
///     properties:
///       instanceId: ${defaultInstance2.id}
///       virtualHostName: example-VirtualHost
///   defaultQueue:
///     type: alicloud:amqp:Queue
///     name: default
///     properties:
///       instanceId: ${defaultVirtualHost.instanceId}
///       queueName: example-queue
///       virtualHostName: ${defaultVirtualHost.virtualHostName}
///   rabbitmqTrigger:
///     type: alicloud:fc:Trigger
///     name: rabbitmq_trigger
///     properties:
///       service: ${defaultService.name}
///       function: ${defaultFunction.name}
///       name: terraform-example-rabbitmq
///       type: eventbridge
///       config:
///         fn::toJSON:
///           triggerEnable: false
///           asyncInvocationType: false
///           eventRuleFilterPattern: '{}'
///           eventSourceConfig:
///             eventSourceType: RabbitMQ
///             eventSourceParameters:
///               sourceRabbitMQParameters:
///                 RegionId: ${defaultGetRegions.regions[0].id}
///                 InstanceId: ${defaultInstance2.id}
///                 VirtualHostName: ${defaultVirtualHost.virtualHostName}
///                 QueueName: ${defaultQueue.queueName}
///           eventSinkConfig:
///             deliveryOption:
///               mode: event-driven
///               eventSchema: CloudEvents
///           runOptions:
///             retryStrategy:
///               PushRetryStrategy: BACKOFF_RETRY
///             errorsTolerance: ALL
///             mode: event-driven
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
///   defaultGetRegions:
///     fn::invoke:
///       function: alicloud:getRegions
///       arguments:
///         current: true
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Module Support
///
/// You can use to the existing fc module
/// to create several triggers quickly.
///
/// ## Import
///
/// Function Compute trigger can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:fc/trigger:Trigger foo my-fc-service:hello-world:hello-trigger
/// ```
class Trigger extends pulumi.CustomResource {
  /// The config of Function Compute trigger.It is valid when `type` is not "mns_topic".See [Configure triggers and events](https://www.alibabacloud.com/help/doc-detail/70140.htm) for more details.
  late final pulumi.Output<String?> config;
  /// The config of Function Compute trigger when the type is "mns_topic".It is conflict with `config`.
  late final pulumi.Output<String?> configMns;
  /// The Function Compute function name.
  late final pulumi.Output<String> function;
  /// The date this resource was last modified.
  late final pulumi.Output<String> lastModified;
  /// The Function Compute trigger name. It is the only in one service and is conflict with "name_prefix".
  late final pulumi.Output<String> name;
  /// Setting a prefix to get a only trigger name. It is conflict with "name".
  late final pulumi.Output<String?> namePrefix;
  /// RAM role arn attached to the Function Compute trigger. Role used by the event source to call the function. The value format is "acs:ram::$account-id:role/$role-name". See [Create a trigger](https://www.alibabacloud.com/help/doc-detail/53102.htm) for more details.
  late final pulumi.Output<String?> role;
  /// The Function Compute service name.
  late final pulumi.Output<String> service;
  /// Event source resource address. See [Create a trigger](https://www.alibabacloud.com/help/doc-detail/53102.htm) for more details.
  late final pulumi.Output<String?> sourceArn;
  /// The Function Compute trigger ID.
  late final pulumi.Output<String> triggerId;
  /// The Type of the trigger. Valid values: ["oss", "log", "timer", "http", "mns_topic", "cdn_events", "eventbridge"].
  ///
  /// > **NOTE:** Config does not support modification when type is mns_topic.
  /// > **NOTE:** type = cdn_events, available in 1.47.0+.
  /// > **NOTE:** type = eventbridge, available in 1.173.0+.
  late final pulumi.Output<String> type;

  /// Creates a new [Trigger].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Trigger]. {@macro pulumi_fc_trigger_trigger_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Trigger(
    String name, {
    TriggerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:fc/trigger:Trigger',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.config = registerOutput<String?>('config');
    this.configMns = registerOutput<String?>('configMns');
    this.function = registerOutput<String>('function');
    this.lastModified = registerOutput<String>('lastModified');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String?>('namePrefix');
    this.role = registerOutput<String?>('role');
    this.service = registerOutput<String>('service');
    this.sourceArn = registerOutput<String?>('sourceArn');
    this.triggerId = registerOutput<String>('triggerId');
    this.type = registerOutput<String>('type');
  }

  /// Gets an existing [Trigger] resource's state with the given [name] and [id].
  static Trigger get(
    String name,
    pulumi.Input<String> id, {
    TriggerState? state,
  }) {
    return Trigger._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Trigger._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:fc/trigger:Trigger',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.config = registerOutput<String?>('config');
    this.configMns = registerOutput<String?>('configMns');
    this.function = registerOutput<String>('function');
    this.lastModified = registerOutput<String>('lastModified');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String?>('namePrefix');
    this.role = registerOutput<String?>('role');
    this.service = registerOutput<String>('service');
    this.sourceArn = registerOutput<String?>('sourceArn');
    this.triggerId = registerOutput<String>('triggerId');
    this.type = registerOutput<String>('type');
  }
}

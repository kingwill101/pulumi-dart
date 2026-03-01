import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_async_invoke_config_args.dart';
import 'function_async_invoke_config_destination_config.dart';
import 'function_async_invoke_config_state.dart';

/// Manages an asynchronous invocation configuration for a FC Function or Alias.
/// For the detailed information, please refer to the [developer guide](https://www.alibabacloud.com/help/en/fc/developer-reference/api-fc-open-2021-04-06-putfunctionasyncinvokeconfig).
///
/// > **NOTE:** Available since v1.100.0.
///
/// ## Example Usage
///
/// ### Destination Configuration
///
/// > **NOTE** Ensure the FC Function RAM Role has necessary permissions for the destination, such as `mns:SendMessage`, `mns:PublishMessage` or `fc:InvokeFunction`, otherwise the API will return a generic error.
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
/// const defaultRole = new alicloud.ram.Role("default", {
///     name: `examplerole${defaultInteger.result}`,
///     document: `\\t{
/// \\t\\t\\"Statement\\": [
/// \\t\\t  {
/// \\t\\t\\t\\"Action\\": \\"sts:AssumeRole\\",
/// \\t\\t\\t\\"Effect\\": \\"Allow\\",
/// \\t\\t\\t\\"Principal\\": {
/// \\t\\t\\t  \\"Service\\": [
/// \\t\\t\\t\\t\\"fc.aliyuncs.com\\"
/// \\t\\t\\t  ]
/// \\t\\t\\t}
/// \\t\\t  }
/// \\t\\t],
/// \\t\\t\\"Version\\": \\"1\\"
/// \\t}
/// `,
///     description: "this is a example",
///     force: true,
/// });
/// const defaultPolicy = new alicloud.ram.Policy("default", {
///     policyName: `examplepolicy${defaultInteger.result}`,
///     policyDocument: `\\t{
/// \\t\\t\\"Version\\": \\"1\\",
/// \\t\\t\\"Statement\\": [
/// \\t\\t  {
/// \\t\\t\\t\\"Action\\": \\"mns:*\\",
/// \\t\\t\\t\\"Resource\\": \\"*\\",
/// \\t\\t\\t\\"Effect\\": \\"Allow\\"
/// \\t\\t  }
/// \\t\\t]
/// \\t  }
/// `,
/// });
/// const defaultRolePolicyAttachment = new alicloud.ram.RolePolicyAttachment("default", {
///     roleName: defaultRole.name,
///     policyName: defaultPolicy.policyName,
///     policyType: "Custom",
/// });
/// const defaultService = new alicloud.fc.Service("default", {
///     name: `example-value-${defaultInteger.result}`,
///     description: "example-value",
///     role: defaultRole.arn,
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
/// const defaultQueue = new alicloud.mns.Queue("default", {name: `terraform-example-${defaultInteger.result}`});
/// const defaultTopic = new alicloud.mns.Topic("default", {name: `terraform-example-${defaultInteger.result}`});
/// const defaultFunctionAsyncInvokeConfig = new alicloud.fc.FunctionAsyncInvokeConfig("default", {
///     serviceName: defaultService.name,
///     functionName: defaultFunction.name,
///     destinationConfig: {
///         onFailure: {
///             destination: pulumi.all([defaultGetRegions, _default, defaultQueue.name]).apply(([defaultGetRegions, _default, name]) => `acs:mns:${defaultGetRegions.regions?.[0]?.id}:${_default.id}:/queues/${name}/messages`),
///         },
///         onSuccess: {
///             destination: pulumi.all([defaultGetRegions, _default, defaultTopic.name]).apply(([defaultGetRegions, _default, name]) => `acs:mns:${defaultGetRegions.regions?.[0]?.id}:${_default.id}:/topics/${name}/messages`),
///         },
///     },
///     maximumEventAgeInSeconds: 60,
///     maximumRetryAttempts: 0,
///     statefulInvocation: true,
///     qualifier: "LATEST",
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
/// default_role = alicloud.ram.Role("default",
///     name=f"examplerole{default_integer['result']}",
///     document="""\t{
/// \t\t\"Statement\": [
/// \t\t  {
/// \t\t\t\"Action\": \"sts:AssumeRole\",
/// \t\t\t\"Effect\": \"Allow\",
/// \t\t\t\"Principal\": {
/// \t\t\t  \"Service\": [
/// \t\t\t\t\"fc.aliyuncs.com\"
/// \t\t\t  ]
/// \t\t\t}
/// \t\t  }
/// \t\t],
/// \t\t\"Version\": \"1\"
/// \t}
/// """,
///     description="this is a example",
///     force=True)
/// default_policy = alicloud.ram.Policy("default",
///     policy_name=f"examplepolicy{default_integer['result']}",
///     policy_document="""\t{
/// \t\t\"Version\": \"1\",
/// \t\t\"Statement\": [
/// \t\t  {
/// \t\t\t\"Action\": \"mns:*\",
/// \t\t\t\"Resource\": \"*\",
/// \t\t\t\"Effect\": \"Allow\"
/// \t\t  }
/// \t\t]
/// \t  }
/// """)
/// default_role_policy_attachment = alicloud.ram.RolePolicyAttachment("default",
///     role_name=default_role.name,
///     policy_name=default_policy.policy_name,
///     policy_type="Custom")
/// default_service = alicloud.fc.Service("default",
///     name=f"example-value-{default_integer['result']}",
///     description="example-value",
///     role=default_role.arn,
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
/// default_queue = alicloud.mns.Queue("default", name=f"terraform-example-{default_integer['result']}")
/// default_topic = alicloud.mns.Topic("default", name=f"terraform-example-{default_integer['result']}")
/// default_function_async_invoke_config = alicloud.fc.FunctionAsyncInvokeConfig("default",
///     service_name=default_service.name,
///     function_name=default_function.name,
///     destination_config={
///         "on_failure": {
///             "destination": default_queue.name.apply(lambda name: f"acs:mns:{default_get_regions.regions[0].id}:{default.id}:/queues/{name}/messages"),
///         },
///         "on_success": {
///             "destination": default_topic.name.apply(lambda name: f"acs:mns:{default_get_regions.regions[0].id}:{default.id}:/topics/{name}/messages"),
///         },
///     },
///     maximum_event_age_in_seconds=60,
///     maximum_retry_attempts=0,
///     stateful_invocation=True,
///     qualifier="LATEST")
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
///     var defaultRole = new AliCloud.Ram.Role("default", new()
///     {
///         Name = $"examplerole{defaultInteger.Result}",
///         Document = @"\t{
/// \t\t\""Statement\"": [
/// \t\t  {
/// \t\t\t\""Action\"": \""sts:AssumeRole\"",
/// \t\t\t\""Effect\"": \""Allow\"",
/// \t\t\t\""Principal\"": {
/// \t\t\t  \""Service\"": [
/// \t\t\t\t\""fc.aliyuncs.com\""
/// \t\t\t  ]
/// \t\t\t}
/// \t\t  }
/// \t\t],
/// \t\t\""Version\"": \""1\""
/// \t}
/// ",
///         Description = "this is a example",
///         Force = true,
///     });
///
///     var defaultPolicy = new AliCloud.Ram.Policy("default", new()
///     {
///         PolicyName = $"examplepolicy{defaultInteger.Result}",
///         PolicyDocument = @"\t{
/// \t\t\""Version\"": \""1\"",
/// \t\t\""Statement\"": [
/// \t\t  {
/// \t\t\t\""Action\"": \""mns:*\"",
/// \t\t\t\""Resource\"": \""*\"",
/// \t\t\t\""Effect\"": \""Allow\""
/// \t\t  }
/// \t\t]
/// \t  }
/// ",
///     });
///
///     var defaultRolePolicyAttachment = new AliCloud.Ram.RolePolicyAttachment("default", new()
///     {
///         RoleName = defaultRole.Name,
///         PolicyName = defaultPolicy.PolicyName,
///         PolicyType = "Custom",
///     });
///
///     var defaultService = new AliCloud.FC.Service("default", new()
///     {
///         Name = $"example-value-{defaultInteger.Result}",
///         Description = "example-value",
///         Role = defaultRole.Arn,
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
///     var defaultQueue = new AliCloud.Mns.Queue("default", new()
///     {
///         Name = $"terraform-example-{defaultInteger.Result}",
///     });
///
///     var defaultTopic = new AliCloud.Mns.Topic("default", new()
///     {
///         Name = $"terraform-example-{defaultInteger.Result}",
///     });
///
///     var defaultFunctionAsyncInvokeConfig = new AliCloud.FC.FunctionAsyncInvokeConfig("default", new()
///     {
///         ServiceName = defaultService.Name,
///         FunctionName = defaultFunction.Name,
///         DestinationConfig = new AliCloud.FC.Inputs.FunctionAsyncInvokeConfigDestinationConfigArgs
///         {
///             OnFailure = new AliCloud.FC.Inputs.FunctionAsyncInvokeConfigDestinationConfigOnFailureArgs
///             {
///                 Destination = Output.Tuple(defaultGetRegions, @default, defaultQueue.Name).Apply(values =>
///                 {
///                     var defaultGetRegions = values.Item1;
///                     var @default = values.Item2;
///                     var name = values.Item3;
///                     return $"acs:mns:{defaultGetRegions.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)}:{@default.Apply(getAccountResult => getAccountResult.Id)}:/queues/{name}/messages";
///                 }),
///             },
///             OnSuccess = new AliCloud.FC.Inputs.FunctionAsyncInvokeConfigDestinationConfigOnSuccessArgs
///             {
///                 Destination = Output.Tuple(defaultGetRegions, @default, defaultTopic.Name).Apply(values =>
///                 {
///                     var defaultGetRegions = values.Item1;
///                     var @default = values.Item2;
///                     var name = values.Item3;
///                     return $"acs:mns:{defaultGetRegions.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)}:{@default.Apply(getAccountResult => getAccountResult.Id)}:/topics/{name}/messages";
///                 }),
///             },
///         },
///         MaximumEventAgeInSeconds = 60,
///         MaximumRetryAttempts = 0,
///         StatefulInvocation = true,
///         Qualifier = "LATEST",
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
/// 		defaultRole, err := ram.NewRole(ctx, "default", &ram.RoleArgs{
/// 			Name: pulumi.Sprintf("examplerole%v", defaultInteger.Result),
/// 			Document: pulumi.String(`\t{
/// \t\t\"Statement\": [
/// \t\t  {
/// \t\t\t\"Action\": \"sts:AssumeRole\",
/// \t\t\t\"Effect\": \"Allow\",
/// \t\t\t\"Principal\": {
/// \t\t\t  \"Service\": [
/// \t\t\t\t\"fc.aliyuncs.com\"
/// \t\t\t  ]
/// \t\t\t}
/// \t\t  }
/// \t\t],
/// \t\t\"Version\": \"1\"
/// \t}
/// `),
/// 			Description: pulumi.String("this is a example"),
/// 			Force:       pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultPolicy, err := ram.NewPolicy(ctx, "default", &ram.PolicyArgs{
/// 			PolicyName: pulumi.Sprintf("examplepolicy%v", defaultInteger.Result),
/// 			PolicyDocument: pulumi.String(`\t{
/// \t\t\"Version\": \"1\",
/// \t\t\"Statement\": [
/// \t\t  {
/// \t\t\t\"Action\": \"mns:*\",
/// \t\t\t\"Resource\": \"*\",
/// \t\t\t\"Effect\": \"Allow\"
/// \t\t  }
/// \t\t]
/// \t  }
/// `),
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
/// 		defaultService, err := fc.NewService(ctx, "default", &fc.ServiceArgs{
/// 			Name:           pulumi.Sprintf("example-value-%v", defaultInteger.Result),
/// 			Description:    pulumi.String("example-value"),
/// 			Role:           defaultRole.Arn,
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
/// 		defaultQueue, err := mns.NewQueue(ctx, "default", &mns.QueueArgs{
/// 			Name: pulumi.Sprintf("terraform-example-%v", defaultInteger.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTopic, err := mns.NewTopic(ctx, "default", &mns.TopicArgs{
/// 			Name: pulumi.Sprintf("terraform-example-%v", defaultInteger.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = fc.NewFunctionAsyncInvokeConfig(ctx, "default", &fc.FunctionAsyncInvokeConfigArgs{
/// 			ServiceName:  defaultService.Name,
/// 			FunctionName: defaultFunction.Name,
/// 			DestinationConfig: &fc.FunctionAsyncInvokeConfigDestinationConfigArgs{
/// 				OnFailure: &fc.FunctionAsyncInvokeConfigDestinationConfigOnFailureArgs{
/// 					Destination: defaultQueue.Name.ApplyT(func(name string) (string, error) {
/// 						return fmt.Sprintf("acs:mns:%v:%v:/queues/%v/messages", defaultGetRegions.Regions[0].Id, _default.Id, name), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 				OnSuccess: &fc.FunctionAsyncInvokeConfigDestinationConfigOnSuccessArgs{
/// 					Destination: defaultTopic.Name.ApplyT(func(name string) (string, error) {
/// 						return fmt.Sprintf("acs:mns:%v:%v:/topics/%v/messages", defaultGetRegions.Regions[0].Id, _default.Id, name), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 			},
/// 			MaximumEventAgeInSeconds: pulumi.Int(60),
/// 			MaximumRetryAttempts:     pulumi.Int(0),
/// 			StatefulInvocation:       pulumi.Bool(true),
/// 			Qualifier:                pulumi.String("LATEST"),
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
/// import com.pulumi.alicloud.ram.Role;
/// import com.pulumi.alicloud.ram.RoleArgs;
/// import com.pulumi.alicloud.ram.Policy;
/// import com.pulumi.alicloud.ram.PolicyArgs;
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
/// import com.pulumi.alicloud.mns.Queue;
/// import com.pulumi.alicloud.mns.QueueArgs;
/// import com.pulumi.alicloud.mns.Topic;
/// import com.pulumi.alicloud.mns.TopicArgs;
/// import com.pulumi.alicloud.fc.FunctionAsyncInvokeConfig;
/// import com.pulumi.alicloud.fc.FunctionAsyncInvokeConfigArgs;
/// import com.pulumi.alicloud.fc.inputs.FunctionAsyncInvokeConfigDestinationConfigArgs;
/// import com.pulumi.alicloud.fc.inputs.FunctionAsyncInvokeConfigDestinationConfigOnFailureArgs;
/// import com.pulumi.alicloud.fc.inputs.FunctionAsyncInvokeConfigDestinationConfigOnSuccessArgs;
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
///         var defaultRole = new Role("defaultRole", RoleArgs.builder()
///             .name(String.format("examplerole%s", defaultInteger.result()))
///             .document("""
/// \t{
/// \t\t\"Statement\": [
/// \t\t  {
/// \t\t\t\"Action\": \"sts:AssumeRole\",
/// \t\t\t\"Effect\": \"Allow\",
/// \t\t\t\"Principal\": {
/// \t\t\t  \"Service\": [
/// \t\t\t\t\"fc.aliyuncs.com\"
/// \t\t\t  ]
/// \t\t\t}
/// \t\t  }
/// \t\t],
/// \t\t\"Version\": \"1\"
/// \t}
///             """)
///             .description("this is a example")
///             .force(true)
///             .build());
///
///         var defaultPolicy = new Policy("defaultPolicy", PolicyArgs.builder()
///             .policyName(String.format("examplepolicy%s", defaultInteger.result()))
///             .policyDocument("""
/// \t{
/// \t\t\"Version\": \"1\",
/// \t\t\"Statement\": [
/// \t\t  {
/// \t\t\t\"Action\": \"mns:*\",
/// \t\t\t\"Resource\": \"*\",
/// \t\t\t\"Effect\": \"Allow\"
/// \t\t  }
/// \t\t]
/// \t  }
///             """)
///             .build());
///
///         var defaultRolePolicyAttachment = new RolePolicyAttachment("defaultRolePolicyAttachment", RolePolicyAttachmentArgs.builder()
///             .roleName(defaultRole.name())
///             .policyName(defaultPolicy.policyName())
///             .policyType("Custom")
///             .build());
///
///         var defaultService = new Service("defaultService", ServiceArgs.builder()
///             .name(String.format("example-value-%s", defaultInteger.result()))
///             .description("example-value")
///             .role(defaultRole.arn())
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
///         var defaultQueue = new Queue("defaultQueue", QueueArgs.builder()
///             .name(String.format("terraform-example-%s", defaultInteger.result()))
///             .build());
///
///         var defaultTopic = new Topic("defaultTopic", TopicArgs.builder()
///             .name(String.format("terraform-example-%s", defaultInteger.result()))
///             .build());
///
///         var defaultFunctionAsyncInvokeConfig = new FunctionAsyncInvokeConfig("defaultFunctionAsyncInvokeConfig", FunctionAsyncInvokeConfigArgs.builder()
///             .serviceName(defaultService.name())
///             .functionName(defaultFunction.name())
///             .destinationConfig(FunctionAsyncInvokeConfigDestinationConfigArgs.builder()
///                 .onFailure(FunctionAsyncInvokeConfigDestinationConfigOnFailureArgs.builder()
///                     .destination(defaultQueue.name().applyValue(_name -> String.format("acs:mns:%s:%s:/queues/%s/messages", defaultGetRegions.regions()[0].id(),default_.id(),_name)))
///                     .build())
///                 .onSuccess(FunctionAsyncInvokeConfigDestinationConfigOnSuccessArgs.builder()
///                     .destination(defaultTopic.name().applyValue(_name -> String.format("acs:mns:%s:%s:/topics/%s/messages", defaultGetRegions.regions()[0].id(),default_.id(),_name)))
///                     .build())
///                 .build())
///             .maximumEventAgeInSeconds(60)
///             .maximumRetryAttempts(0)
///             .statefulInvocation(true)
///             .qualifier("LATEST")
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
///   defaultRole:
///     type: alicloud:ram:Role
///     name: default
///     properties:
///       name: examplerole${defaultInteger.result}
///       document: |
///         \t{
///         \t\t\"Statement\": [
///         \t\t  {
///         \t\t\t\"Action\": \"sts:AssumeRole\",
///         \t\t\t\"Effect\": \"Allow\",
///         \t\t\t\"Principal\": {
///         \t\t\t  \"Service\": [
///         \t\t\t\t\"fc.aliyuncs.com\"
///         \t\t\t  ]
///         \t\t\t}
///         \t\t  }
///         \t\t],
///         \t\t\"Version\": \"1\"
///         \t}
///       description: this is a example
///       force: true
///   defaultPolicy:
///     type: alicloud:ram:Policy
///     name: default
///     properties:
///       policyName: examplepolicy${defaultInteger.result}
///       policyDocument: |
///         \t{
///         \t\t\"Version\": \"1\",
///         \t\t\"Statement\": [
///         \t\t  {
///         \t\t\t\"Action\": \"mns:*\",
///         \t\t\t\"Resource\": \"*\",
///         \t\t\t\"Effect\": \"Allow\"
///         \t\t  }
///         \t\t]
///         \t  }
///   defaultRolePolicyAttachment:
///     type: alicloud:ram:RolePolicyAttachment
///     name: default
///     properties:
///       roleName: ${defaultRole.name}
///       policyName: ${defaultPolicy.policyName}
///       policyType: Custom
///   defaultService:
///     type: alicloud:fc:Service
///     name: default
///     properties:
///       name: example-value-${defaultInteger.result}
///       description: example-value
///       role: ${defaultRole.arn}
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
///   defaultQueue:
///     type: alicloud:mns:Queue
///     name: default
///     properties:
///       name: terraform-example-${defaultInteger.result}
///   defaultTopic:
///     type: alicloud:mns:Topic
///     name: default
///     properties:
///       name: terraform-example-${defaultInteger.result}
///   defaultFunctionAsyncInvokeConfig:
///     type: alicloud:fc:FunctionAsyncInvokeConfig
///     name: default
///     properties:
///       serviceName: ${defaultService.name}
///       functionName: ${defaultFunction.name}
///       destinationConfig:
///         onFailure:
///           destination: acs:mns:${defaultGetRegions.regions[0].id}:${default.id}:/queues/${defaultQueue.name}/messages
///         onSuccess:
///           destination: acs:mns:${defaultGetRegions.regions[0].id}:${default.id}:/topics/${defaultTopic.name}/messages
///       maximumEventAgeInSeconds: 60
///       maximumRetryAttempts: 0 # Async Job Configuration
///       statefulInvocation: true # Configuration for Function Latest Unpublished Version
///       qualifier: LATEST
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
/// ## Import
///
/// Function Compute Function Async Invoke Configs can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:fc/functionAsyncInvokeConfig:FunctionAsyncInvokeConfig example my_function
/// ```
class FunctionAsyncInvokeConfig extends pulumi.CustomResource {
  /// The date this resource was created.
  late final pulumi.Output<String> createdTime;
  /// Configuration block with destination configuration. See `destination_config` below.
  late final pulumi.Output<FunctionAsyncInvokeConfigDestinationConfig?> destinationConfig;
  /// Name of the Function Compute Function.
  late final pulumi.Output<String> functionName;
  /// The date this resource was last modified.
  late final pulumi.Output<String> lastModifiedTime;
  /// Maximum age of a request that Function Compute sends to a function for processing in seconds. Valid values between 1 and 2592000 (between 60 and 21600 before v1.167.0).
  late final pulumi.Output<int?> maximumEventAgeInSeconds;
  /// Maximum number of times to retry when the function returns an error. Valid values between 0 and 8 (between 0 and 2 before v1.167.0). Defaults to 2.
  late final pulumi.Output<int?> maximumRetryAttempts;
  /// Function Compute Function published version, `LATEST`, or Function Compute Alias name. The default value is `LATEST`.
  late final pulumi.Output<String?> qualifier;
  /// Name of the Function Compute Function, omitting any version or alias qualifier.
  late final pulumi.Output<String> serviceName;
  /// Function Compute async job configuration(also known as Task Mode). valid values true or false, default `false`
  late final pulumi.Output<bool?> statefulInvocation;

  /// Creates a new [FunctionAsyncInvokeConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FunctionAsyncInvokeConfig]. {@macro pulumi_fc_function_async_invoke_config_function_async_invoke_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FunctionAsyncInvokeConfig(
    String name, {
    FunctionAsyncInvokeConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:fc/functionAsyncInvokeConfig:FunctionAsyncInvokeConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createdTime = registerOutput<String>('createdTime');
    this.destinationConfig = registerOutput<FunctionAsyncInvokeConfigDestinationConfig?>('destinationConfig');
    this.functionName = registerOutput<String>('functionName');
    this.lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.maximumEventAgeInSeconds = registerOutput<int?>('maximumEventAgeInSeconds');
    this.maximumRetryAttempts = registerOutput<int?>('maximumRetryAttempts');
    this.qualifier = registerOutput<String?>('qualifier');
    this.serviceName = registerOutput<String>('serviceName');
    this.statefulInvocation = registerOutput<bool?>('statefulInvocation');
  }

  /// Gets an existing [FunctionAsyncInvokeConfig] resource's state with the given [name] and [id].
  static FunctionAsyncInvokeConfig get(
    String name,
    pulumi.Input<String> id, {
    FunctionAsyncInvokeConfigState? state,
  }) {
    return FunctionAsyncInvokeConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FunctionAsyncInvokeConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:fc/functionAsyncInvokeConfig:FunctionAsyncInvokeConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createdTime = registerOutput<String>('createdTime');
    this.destinationConfig = registerOutput<FunctionAsyncInvokeConfigDestinationConfig?>('destinationConfig');
    this.functionName = registerOutput<String>('functionName');
    this.lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.maximumEventAgeInSeconds = registerOutput<int?>('maximumEventAgeInSeconds');
    this.maximumRetryAttempts = registerOutput<int?>('maximumRetryAttempts');
    this.qualifier = registerOutput<String?>('qualifier');
    this.serviceName = registerOutput<String>('serviceName');
    this.statefulInvocation = registerOutput<bool?>('statefulInvocation');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_domain_args.dart';
import 'custom_domain_cert_config.dart';
import 'custom_domain_state.dart';

/// Provides an Alicloud Function Compute custom domain resource.
/// For the detailed information, please refer to the [developer guide](https://www.alibabacloud.com/help/en/fc/developer-reference/api-fc-open-2021-04-06-createcustomdomain).
///
/// &gt; **NOTE:** Available since v1.98.0.
///
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
/// const _default = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const defaultProject = new alicloud.log.Project("default", {name: `example-value-${_default.result}`});
/// const defaultStore = new alicloud.log.Store("default", {
///     project: defaultProject.name,
///     name: "example-value",
/// });
/// const defaultRole = new alicloud.ram.Role("default", {
///     name: `fcservicerole-${_default.result}`,
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
///     name: `example-value-${_default.result}`,
///     description: "example-value",
///     role: defaultRole.arn,
///     logConfig: {
///         project: defaultProject.name,
///         logstore: defaultStore.name,
///         enableInstanceMetrics: true,
///         enableRequestMetrics: true,
///     },
/// });
/// const defaultBucket = new alicloud.oss.Bucket("default", {bucket: `terraform-example-${_default.result}`});
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
///     runtime: "python3.9",
///     handler: "hello.handler",
/// });
/// const defaultCustomDomain = new alicloud.fc.CustomDomain("default", {
///     domainName: "terraform.functioncompute.com",
///     protocol: "HTTP",
///     routeConfigs: [{
///         path: "/login/*",
///         serviceName: defaultService.name,
///         functionName: defaultFunction.name,
///         qualifier: "?query",
///         methods: [
///             "GET",
///             "POST",
///         ],
///     }],
///     certConfig: {
///         certName: "example",
///         certificate: `-----BEGIN CERTIFICATE-----
/// MIICWD****-----END CERTIFICATE-----`,
///         privateKey: `-----BEGIN RSA PRIVATE KEY-----
/// MIICX****n-----END RSA PRIVATE KEY-----`,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// default_project = alicloud.log.Project("default", name=f"example-value-{default['result']}")
/// default_store = alicloud.log.Store("default",
///     project=default_project.name,
///     name="example-value")
/// default_role = alicloud.ram.Role("default",
///     name=f"fcservicerole-{default['result']}",
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
///     name=f"example-value-{default['result']}",
///     description="example-value",
///     role=default_role.arn,
///     log_config={
///         "project": default_project.name,
///         "logstore": default_store.name,
///         "enable_instance_metrics": True,
///         "enable_request_metrics": True,
///     })
/// default_bucket = alicloud.oss.Bucket("default", bucket=f"terraform-example-{default['result']}")
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
///     runtime="python3.9",
///     handler="hello.handler")
/// default_custom_domain = alicloud.fc.CustomDomain("default",
///     domain_name="terraform.functioncompute.com",
///     protocol="HTTP",
///     route_configs=[{
///         "path": "/login/*",
///         "service_name": default_service.name,
///         "function_name": default_function.name,
///         "qualifier": "?query",
///         "methods": [
///             "GET",
///             "POST",
///         ],
///     }],
///     cert_config={
///         "cert_name": "example",
///         "certificate": """-----BEGIN CERTIFICATE-----
/// MIICWD****-----END CERTIFICATE-----""",
///         "private_key": """-----BEGIN RSA PRIVATE KEY-----
/// MIICX****n-----END RSA PRIVATE KEY-----""",
///     })
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
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var defaultProject = new AliCloud.Log.Project("default", new()
///     {
///         Name = $"example-value-{@default.Result}",
///     });
///
///     var defaultStore = new AliCloud.Log.Store("default", new()
///     {
///         Project = defaultProject.Name,
///         Name = "example-value",
///     });
///
///     var defaultRole = new AliCloud.Ram.Role("default", new()
///     {
///         Name = $"fcservicerole-{@default.Result}",
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
///         Name = $"example-value-{@default.Result}",
///         Description = "example-value",
///         Role = defaultRole.Arn,
///         LogConfig = new AliCloud.FC.Inputs.ServiceLogConfigArgs
///         {
///             Project = defaultProject.Name,
///             Logstore = defaultStore.Name,
///             EnableInstanceMetrics = true,
///             EnableRequestMetrics = true,
///         },
///     });
///
///     var defaultBucket = new AliCloud.Oss.Bucket("default", new()
///     {
///         BucketName = $"terraform-example-{@default.Result}",
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
///         Runtime = "python3.9",
///         Handler = "hello.handler",
///     });
///
///     var defaultCustomDomain = new AliCloud.FC.CustomDomain("default", new()
///     {
///         DomainName = "terraform.functioncompute.com",
///         Protocol = "HTTP",
///         RouteConfigs = new[]
///         {
///             new AliCloud.FC.Inputs.CustomDomainRouteConfigArgs
///             {
///                 Path = "/login/*",
///                 ServiceName = defaultService.Name,
///                 FunctionName = defaultFunction.Name,
///                 Qualifier = "?query",
///                 Methods = new[]
///                 {
///                     "GET",
///                     "POST",
///                 },
///             },
///         },
///         CertConfig = new AliCloud.FC.Inputs.CustomDomainCertConfigArgs
///         {
///             CertName = "example",
///             Certificate = @"-----BEGIN CERTIFICATE-----
/// MIICWD****-----END CERTIFICATE-----",
///             PrivateKey = @"-----BEGIN RSA PRIVATE KEY-----
/// MIICX****n-----END RSA PRIVATE KEY-----",
///         },
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
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultProject, err := log.NewProject(ctx, "default", &log.ProjectArgs{
/// 			Name: pulumi.Sprintf("example-value-%v", _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultStore, err := log.NewStore(ctx, "default", &log.StoreArgs{
/// 			Project: defaultProject.Name,
/// 			Name:    pulumi.String("example-value"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRole, err := ram.NewRole(ctx, "default", &ram.RoleArgs{
/// 			Name: pulumi.Sprintf("fcservicerole-%v", _default.Result),
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
/// 			Name:        pulumi.Sprintf("example-value-%v", _default.Result),
/// 			Description: pulumi.String("example-value"),
/// 			Role:        defaultRole.Arn,
/// 			LogConfig: &fc.ServiceLogConfigArgs{
/// 				Project:               defaultProject.Name,
/// 				Logstore:              defaultStore.Name,
/// 				EnableInstanceMetrics: pulumi.Bool(true),
/// 				EnableRequestMetrics:  pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBucket, err := oss.NewBucket(ctx, "default", &oss.BucketArgs{
/// 			Bucket: pulumi.Sprintf("terraform-example-%v", _default.Result),
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
/// 			Runtime:     pulumi.String("python3.9"),
/// 			Handler:     pulumi.String("hello.handler"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = fc.NewCustomDomain(ctx, "default", &fc.CustomDomainArgs{
/// 			DomainName: pulumi.String("terraform.functioncompute.com"),
/// 			Protocol:   pulumi.String("HTTP"),
/// 			RouteConfigs: fc.CustomDomainRouteConfigArray{
/// 				&fc.CustomDomainRouteConfigArgs{
/// 					Path:         pulumi.String("/login/*"),
/// 					ServiceName:  defaultService.Name,
/// 					FunctionName: defaultFunction.Name,
/// 					Qualifier:    pulumi.String("?query"),
/// 					Methods: pulumi.StringArray{
/// 						pulumi.String("GET"),
/// 						pulumi.String("POST"),
/// 					},
/// 				},
/// 			},
/// 			CertConfig: &fc.CustomDomainCertConfigArgs{
/// 				CertName:    pulumi.String("example"),
/// 				Certificate: pulumi.String("-----BEGIN CERTIFICATE-----\nMIICWD****-----END CERTIFICATE-----"),
/// 				PrivateKey:  pulumi.String("-----BEGIN RSA PRIVATE KEY-----\nMIICX****n-----END RSA PRIVATE KEY-----"),
/// 			},
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
/// import com.pulumi.alicloud.fc.CustomDomain;
/// import com.pulumi.alicloud.fc.CustomDomainArgs;
/// import com.pulumi.alicloud.fc.inputs.CustomDomainRouteConfigArgs;
/// import com.pulumi.alicloud.fc.inputs.CustomDomainCertConfigArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         var defaultProject = new Project("defaultProject", ProjectArgs.builder()
///             .name(String.format("example-value-%s", default_.result()))
///             .build());
///
///         var defaultStore = new Store("defaultStore", StoreArgs.builder()
///             .project(defaultProject.name())
///             .name("example-value")
///             .build());
///
///         var defaultRole = new Role("defaultRole", RoleArgs.builder()
///             .name(String.format("fcservicerole-%s", default_.result()))
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
///             .name(String.format("example-value-%s", default_.result()))
///             .description("example-value")
///             .role(defaultRole.arn())
///             .logConfig(ServiceLogConfigArgs.builder()
///                 .project(defaultProject.name())
///                 .logstore(defaultStore.name())
///                 .enableInstanceMetrics(true)
///                 .enableRequestMetrics(true)
///                 .build())
///             .build());
///
///         var defaultBucket = new Bucket("defaultBucket", BucketArgs.builder()
///             .bucket(String.format("terraform-example-%s", default_.result()))
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
///             .runtime("python3.9")
///             .handler("hello.handler")
///             .build());
///
///         var defaultCustomDomain = new CustomDomain("defaultCustomDomain", CustomDomainArgs.builder()
///             .domainName("terraform.functioncompute.com")
///             .protocol("HTTP")
///             .routeConfigs(CustomDomainRouteConfigArgs.builder()
///                 .path("/login/*")
///                 .serviceName(defaultService.name())
///                 .functionName(defaultFunction.name())
///                 .qualifier("?query")
///                 .methods(
///                     "GET",
///                     "POST")
///                 .build())
///             .certConfig(CustomDomainCertConfigArgs.builder()
///                 .certName("example")
///                 .certificate("""
/// -----BEGIN CERTIFICATE-----
/// MIICWD****-----END CERTIFICATE-----                """)
///                 .privateKey("""
/// -----BEGIN RSA PRIVATE KEY-----
/// MIICX****n-----END RSA PRIVATE KEY-----                """)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       max: 99999
///       min: 10000
///   defaultProject:
///     type: alicloud:log:Project
///     name: default
///     properties:
///       name: example-value-${default.result}
///   defaultStore:
///     type: alicloud:log:Store
///     name: default
///     properties:
///       project: ${defaultProject.name}
///       name: example-value
///   defaultRole:
///     type: alicloud:ram:Role
///     name: default
///     properties:
///       name: fcservicerole-${default.result}
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
///       name: example-value-${default.result}
///       description: example-value
///       role: ${defaultRole.arn}
///       logConfig:
///         project: ${defaultProject.name}
///         logstore: ${defaultStore.name}
///         enableInstanceMetrics: true
///         enableRequestMetrics: true
///   defaultBucket:
///     type: alicloud:oss:Bucket
///     name: default
///     properties:
///       bucket: terraform-example-${default.result}
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
///       runtime: python3.9
///       handler: hello.handler
///   defaultCustomDomain:
///     type: alicloud:fc:CustomDomain
///     name: default
///     properties:
///       domainName: terraform.functioncompute.com
///       protocol: HTTP
///       routeConfigs:
///         - path: /login/*
///           serviceName: ${defaultService.name}
///           functionName: ${defaultFunction.name}
///           qualifier: ?query
///           methods:
///             - GET
///             - POST
///       certConfig:
///         certName: example
///         certificate: |-
///           -----BEGIN CERTIFICATE-----
///           MIICWD****-----END CERTIFICATE-----
///         privateKey: |-
///           -----BEGIN RSA PRIVATE KEY-----
///           MIICX****n-----END RSA PRIVATE KEY-----
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Function Compute custom domain can be imported using the id or the domain name, e.g.
///
/// ```sh
/// $ pulumi import alicloud:fc/customDomain:CustomDomain foo my-fc-custom-domain
/// ```
class CustomDomain extends pulumi.CustomResource {
  /// The account id.
  late final pulumi.Output<String> accountId;
  /// The api version of Function Compute.
  late final pulumi.Output<String> apiVersion;
  /// The configuration of HTTPS certificate.See `cert_config` below.
  late final pulumi.Output<CustomDomainCertConfig?> certConfig;
  /// The date this resource was created.
  late final pulumi.Output<String> createdTime;
  /// The custom domain name. For example, "example.com".
  late final pulumi.Output<String> domainName;
  /// The date this resource was last modified.
  late final pulumi.Output<String> lastModifiedTime;
  /// The protocol, `HTTP` or `HTTP,HTTPS`.
  late final pulumi.Output<String> protocol;
  /// The configuration of domain route, mapping the path and Function Compute function.See `route_config` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> routeConfigs;

  /// Creates a new [CustomDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomDomain]. {@macro pulumi_fc_custom_domain_custom_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomDomain(
    String name, {
    CustomDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:fc/customDomain:CustomDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    apiVersion = registerOutput<String>('apiVersion');
    certConfig = registerOutput<CustomDomainCertConfig?>('certConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomDomainCertConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdTime = registerOutput<String>('createdTime');
    domainName = registerOutput<String>('domainName');
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    protocol = registerOutput<String>('protocol');
    routeConfigs = registerOutput<List<Map<String, dynamic>>?>('routeConfigs');
  }

  /// Gets an existing [CustomDomain] resource's state with the given [name] and [id].
  static CustomDomain get(
    String name,
    pulumi.Input<String> id, {
    CustomDomainState? state,
  }) {
    return CustomDomain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CustomDomain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:fc/customDomain:CustomDomain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    apiVersion = registerOutput<String>('apiVersion');
    certConfig = registerOutput<CustomDomainCertConfig?>('certConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomDomainCertConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdTime = registerOutput<String>('createdTime');
    domainName = registerOutput<String>('domainName');
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    protocol = registerOutput<String>('protocol');
    routeConfigs = registerOutput<List<Map<String, dynamic>>?>('routeConfigs');
  }
}

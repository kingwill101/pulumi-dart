import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_state.dart';

/// Provides an Amazon Connect instance resource. For more information see
/// [Amazon Connect: Getting Started](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-get-started.html)
///
/// &gt; **WARN:** Amazon Connect enforces a limit of [100 combined instance creation and deletions every 30 days](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#feature-limits). For example, if you create 80 instances and delete 20 of them, you must wait 30 days to create or delete another instance. Use care when creating or deleting instances.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.connect.Instance("test", {
///     identityManagementType: "CONNECT_MANAGED",
///     inboundCallsEnabled: true,
///     instanceAlias: "friendly-name-connect",
///     outboundCallsEnabled: true,
///     tags: {
///         hello: "world",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.connect.Instance("test",
///     identity_management_type="CONNECT_MANAGED",
///     inbound_calls_enabled=True,
///     instance_alias="friendly-name-connect",
///     outbound_calls_enabled=True,
///     tags={
///         "hello": "world",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Connect.Instance("test", new()
///     {
///         IdentityManagementType = "CONNECT_MANAGED",
///         InboundCallsEnabled = true,
///         InstanceAlias = "friendly-name-connect",
///         OutboundCallsEnabled = true,
///         Tags =
///         {
///             { "hello", "world" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.NewInstance(ctx, "test", &connect.InstanceArgs{
/// 			IdentityManagementType: pulumi.String("CONNECT_MANAGED"),
/// 			InboundCallsEnabled:    pulumi.Bool(true),
/// 			InstanceAlias:          pulumi.String("friendly-name-connect"),
/// 			OutboundCallsEnabled:   pulumi.Bool(true),
/// 			Tags: pulumi.StringMap{
/// 				"hello": pulumi.String("world"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_connect_instance" "test" {
///   identity_management_type = "CONNECT_MANAGED"
///   inbound_calls_enabled    = true
///   instance_alias           = "friendly-name-connect"
///   outbound_calls_enabled   = true
///   tags = {
///     "hello" = "world"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.Instance;
/// import com.pulumi.aws.connect.InstanceArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var test = new Instance("test", InstanceArgs.builder()
///             .identityManagementType("CONNECT_MANAGED")
///             .inboundCallsEnabled(true)
///             .instanceAlias("friendly-name-connect")
///             .outboundCallsEnabled(true)
///             .tags(Map.of("hello", "world"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:connect:Instance
///     properties:
///       identityManagementType: CONNECT_MANAGED
///       inboundCallsEnabled: true
///       instanceAlias: friendly-name-connect
///       outboundCallsEnabled: true
///       tags:
///         hello: world
/// ```
///
///
/// ### Example Usage with Existing Active Directory
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.connect.Instance("test", {
///     directoryId: testAwsDirectoryServiceDirectory.id,
///     identityManagementType: "EXISTING_DIRECTORY",
///     inboundCallsEnabled: true,
///     instanceAlias: "friendly-name-connect",
///     outboundCallsEnabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.connect.Instance("test",
///     directory_id=test_aws_directory_service_directory["id"],
///     identity_management_type="EXISTING_DIRECTORY",
///     inbound_calls_enabled=True,
///     instance_alias="friendly-name-connect",
///     outbound_calls_enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Connect.Instance("test", new()
///     {
///         DirectoryId = testAwsDirectoryServiceDirectory.Id,
///         IdentityManagementType = "EXISTING_DIRECTORY",
///         InboundCallsEnabled = true,
///         InstanceAlias = "friendly-name-connect",
///         OutboundCallsEnabled = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.NewInstance(ctx, "test", &connect.InstanceArgs{
/// 			DirectoryId:            pulumi.Any(testAwsDirectoryServiceDirectory.Id),
/// 			IdentityManagementType: pulumi.String("EXISTING_DIRECTORY"),
/// 			InboundCallsEnabled:    pulumi.Bool(true),
/// 			InstanceAlias:          pulumi.String("friendly-name-connect"),
/// 			OutboundCallsEnabled:   pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_connect_instance" "test" {
///   directory_id             = testAwsDirectoryServiceDirectory.id
///   identity_management_type = "EXISTING_DIRECTORY"
///   inbound_calls_enabled    = true
///   instance_alias           = "friendly-name-connect"
///   outbound_calls_enabled   = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.Instance;
/// import com.pulumi.aws.connect.InstanceArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var test = new Instance("test", InstanceArgs.builder()
///             .directoryId(testAwsDirectoryServiceDirectory.id())
///             .identityManagementType("EXISTING_DIRECTORY")
///             .inboundCallsEnabled(true)
///             .instanceAlias("friendly-name-connect")
///             .outboundCallsEnabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:connect:Instance
///     properties:
///       directoryId: ${testAwsDirectoryServiceDirectory.id}
///       identityManagementType: EXISTING_DIRECTORY
///       inboundCallsEnabled: true
///       instanceAlias: friendly-name-connect
///       outboundCallsEnabled: true
/// ```
///
///
/// ### Example Usage with SAML
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.connect.Instance("test", {
///     identityManagementType: "SAML",
///     inboundCallsEnabled: true,
///     instanceAlias: "friendly-name-connect",
///     outboundCallsEnabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.connect.Instance("test",
///     identity_management_type="SAML",
///     inbound_calls_enabled=True,
///     instance_alias="friendly-name-connect",
///     outbound_calls_enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Connect.Instance("test", new()
///     {
///         IdentityManagementType = "SAML",
///         InboundCallsEnabled = true,
///         InstanceAlias = "friendly-name-connect",
///         OutboundCallsEnabled = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.NewInstance(ctx, "test", &connect.InstanceArgs{
/// 			IdentityManagementType: pulumi.String("SAML"),
/// 			InboundCallsEnabled:    pulumi.Bool(true),
/// 			InstanceAlias:          pulumi.String("friendly-name-connect"),
/// 			OutboundCallsEnabled:   pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_connect_instance" "test" {
///   identity_management_type = "SAML"
///   inbound_calls_enabled    = true
///   instance_alias           = "friendly-name-connect"
///   outbound_calls_enabled   = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.Instance;
/// import com.pulumi.aws.connect.InstanceArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var test = new Instance("test", InstanceArgs.builder()
///             .identityManagementType("SAML")
///             .inboundCallsEnabled(true)
///             .instanceAlias("friendly-name-connect")
///             .outboundCallsEnabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:connect:Instance
///     properties:
///       identityManagementType: SAML
///       inboundCallsEnabled: true
///       instanceAlias: friendly-name-connect
///       outboundCallsEnabled: true
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - (String) ID of the connect instance.
///
/// #### Optional
///
/// - `accountId` (String) AWS Account where this resource is managed.
/// - `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Connect instances using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:connect/instance:Instance example f1288a1f-6193-445a-b47e-af739b2
/// ```
class Instance extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the instance.
  late final pulumi.Output<String> arn;
  /// Specifies whether auto resolve best voices is enabled. Defaults to `true`.
  late final pulumi.Output<bool?> autoResolveBestVoicesEnabled;
  /// Specifies whether contact flow logs are enabled. Defaults to `false`.
  late final pulumi.Output<bool?> contactFlowLogsEnabled;
  /// Specifies whether contact lens is enabled. Defaults to `true`.
  late final pulumi.Output<bool?> contactLensEnabled;
  /// When the instance was created.
  late final pulumi.Output<String> createdTime;
  /// The identifier for the directory if identityManagementType is `EXISTING_DIRECTORY`.
  late final pulumi.Output<String?> directoryId;
  /// Specifies whether early media for outbound calls is enabled . Defaults to `true` if outbound calls is enabled.
  late final pulumi.Output<bool?> earlyMediaEnabled;
  /// Specifies the identity management type attached to the instance. Allowed Values are: `SAML`, `CONNECT_MANAGED`, `EXISTING_DIRECTORY`.
  late final pulumi.Output<String> identityManagementType;
  /// Specifies whether inbound calls are enabled.
  late final pulumi.Output<bool> inboundCallsEnabled;
  /// Specifies the name of the instance. Required if `directoryId` not specified.
  late final pulumi.Output<String?> instanceAlias;
  /// Specifies whether multi-party calls/conference is enabled. Defaults to `false`.
  late final pulumi.Output<bool?> multiPartyConferenceEnabled;
  /// Specifies whether outbound calls are enabled.
  late final pulumi.Output<bool> outboundCallsEnabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The service role of the instance.
  late final pulumi.Output<String> serviceRole;
  /// The state of the instance.
  late final pulumi.Output<String> status;
  /// Tags to apply to the Instance. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// &lt;!-- * `useCustomTtsVoices` - (Optional) Whether use custom tts voices is enabled. Defaults to `false` --&gt;
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_connect_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:connect/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    autoResolveBestVoicesEnabled = registerOutput<bool?>('autoResolveBestVoicesEnabled');
    contactFlowLogsEnabled = registerOutput<bool?>('contactFlowLogsEnabled');
    contactLensEnabled = registerOutput<bool?>('contactLensEnabled');
    createdTime = registerOutput<String>('createdTime');
    directoryId = registerOutput<String?>('directoryId');
    earlyMediaEnabled = registerOutput<bool?>('earlyMediaEnabled');
    identityManagementType = registerOutput<String>('identityManagementType');
    inboundCallsEnabled = registerOutput<bool>('inboundCallsEnabled');
    instanceAlias = registerOutput<String?>('instanceAlias');
    multiPartyConferenceEnabled = registerOutput<bool?>('multiPartyConferenceEnabled');
    outboundCallsEnabled = registerOutput<bool>('outboundCallsEnabled');
    region = registerOutput<String>('region');
    serviceRole = registerOutput<String>('serviceRole');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Instance] resource's state with the given [name] and [id].
  static Instance get(
    String name,
    pulumi.Input<String> id, {
    InstanceState? state,
  }) {
    return Instance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Instance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:connect/instance:Instance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    autoResolveBestVoicesEnabled = registerOutput<bool?>('autoResolveBestVoicesEnabled');
    contactFlowLogsEnabled = registerOutput<bool?>('contactFlowLogsEnabled');
    contactLensEnabled = registerOutput<bool?>('contactLensEnabled');
    createdTime = registerOutput<String>('createdTime');
    directoryId = registerOutput<String?>('directoryId');
    earlyMediaEnabled = registerOutput<bool?>('earlyMediaEnabled');
    identityManagementType = registerOutput<String>('identityManagementType');
    inboundCallsEnabled = registerOutput<bool>('inboundCallsEnabled');
    instanceAlias = registerOutput<String?>('instanceAlias');
    multiPartyConferenceEnabled = registerOutput<bool?>('multiPartyConferenceEnabled');
    outboundCallsEnabled = registerOutput<bool>('outboundCallsEnabled');
    region = registerOutput<String>('region');
    serviceRole = registerOutput<String>('serviceRole');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}

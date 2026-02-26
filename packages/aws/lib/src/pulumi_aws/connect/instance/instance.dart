import 'package:pulumi/pulumi.dart';
import 'instance_args.dart';

/// Provides an Amazon Connect instance resource. For more information see
/// [Amazon Connect: Getting Started](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-get-started.html)
///
/// !> **WARN:** Amazon Connect enforces a limit of [100 combined instance creation and deletions every 30 days](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#feature-limits). For example, if you create 80 instances and delete 20 of them, you must wait 30 days to create or delete another instance. Use care when creating or deleting instances.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.connect.Instance("test", {
/// identityManagementType: "CONNECT_MANAGED",
/// inboundCallsEnabled: true,
/// instanceAlias: "friendly-name-connect",
/// outboundCallsEnabled: true,
/// tags: {
/// hello: "world",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.connect.Instance("test",
/// identity_management_type="CONNECT_MANAGED",
/// inbound_calls_enabled=True,
/// instance_alias="friendly-name-connect",
/// outbound_calls_enabled=True,
/// tags={
/// "hello": "world",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.Connect.Instance("test", new()
/// {
/// IdentityManagementType = "CONNECT_MANAGED",
/// InboundCallsEnabled = true,
/// InstanceAlias = "friendly-name-connect",
/// OutboundCallsEnabled = true,
/// Tags =
/// {
/// { "hello", "world" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := connect.NewInstance(ctx, "test", &connect.InstanceArgs{
/// IdentityManagementType: pulumi.String("CONNECT_MANAGED"),
/// InboundCallsEnabled:    pulumi.Bool(true),
/// InstanceAlias:          pulumi.String("friendly-name-connect"),
/// OutboundCallsEnabled:   pulumi.Bool(true),
/// Tags: pulumi.StringMap{
/// "hello": pulumi.String("world"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var test = new Instance("test", InstanceArgs.builder()
/// .identityManagementType("CONNECT_MANAGED")
/// .inboundCallsEnabled(true)
/// .instanceAlias("friendly-name-connect")
/// .outboundCallsEnabled(true)
/// .tags(Map.of("hello", "world"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:connect:Instance
/// properties:
/// identityManagementType: CONNECT_MANAGED
/// inboundCallsEnabled: true
/// instanceAlias: friendly-name-connect
/// outboundCallsEnabled: true
/// tags:
/// hello: world
/// ```
/// <!--End PulumiCodeChooser -->
///
///
/// ### With Existing Active Directory
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.connect.Instance("test", {
/// directoryId: testAwsDirectoryServiceDirectory.id,
/// identityManagementType: "EXISTING_DIRECTORY",
/// inboundCallsEnabled: true,
/// instanceAlias: "friendly-name-connect",
/// outboundCallsEnabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.connect.Instance("test",
/// directory_id=test_aws_directory_service_directory["id"],
/// identity_management_type="EXISTING_DIRECTORY",
/// inbound_calls_enabled=True,
/// instance_alias="friendly-name-connect",
/// outbound_calls_enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.Connect.Instance("test", new()
/// {
/// DirectoryId = testAwsDirectoryServiceDirectory.Id,
/// IdentityManagementType = "EXISTING_DIRECTORY",
/// InboundCallsEnabled = true,
/// InstanceAlias = "friendly-name-connect",
/// OutboundCallsEnabled = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := connect.NewInstance(ctx, "test", &connect.InstanceArgs{
/// DirectoryId:            pulumi.Any(testAwsDirectoryServiceDirectory.Id),
/// IdentityManagementType: pulumi.String("EXISTING_DIRECTORY"),
/// InboundCallsEnabled:    pulumi.Bool(true),
/// InstanceAlias:          pulumi.String("friendly-name-connect"),
/// OutboundCallsEnabled:   pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var test = new Instance("test", InstanceArgs.builder()
/// .directoryId(testAwsDirectoryServiceDirectory.id())
/// .identityManagementType("EXISTING_DIRECTORY")
/// .inboundCallsEnabled(true)
/// .instanceAlias("friendly-name-connect")
/// .outboundCallsEnabled(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:connect:Instance
/// properties:
/// directoryId: ${testAwsDirectoryServiceDirectory.id}
/// identityManagementType: EXISTING_DIRECTORY
/// inboundCallsEnabled: true
/// instanceAlias: friendly-name-connect
/// outboundCallsEnabled: true
/// ```
/// <!--End PulumiCodeChooser -->
///
///
/// ### With SAML
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.connect.Instance("test", {
/// identityManagementType: "SAML",
/// inboundCallsEnabled: true,
/// instanceAlias: "friendly-name-connect",
/// outboundCallsEnabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.connect.Instance("test",
/// identity_management_type="SAML",
/// inbound_calls_enabled=True,
/// instance_alias="friendly-name-connect",
/// outbound_calls_enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.Connect.Instance("test", new()
/// {
/// IdentityManagementType = "SAML",
/// InboundCallsEnabled = true,
/// InstanceAlias = "friendly-name-connect",
/// OutboundCallsEnabled = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := connect.NewInstance(ctx, "test", &connect.InstanceArgs{
/// IdentityManagementType: pulumi.String("SAML"),
/// InboundCallsEnabled:    pulumi.Bool(true),
/// InstanceAlias:          pulumi.String("friendly-name-connect"),
/// OutboundCallsEnabled:   pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var test = new Instance("test", InstanceArgs.builder()
/// .identityManagementType("SAML")
/// .inboundCallsEnabled(true)
/// .instanceAlias("friendly-name-connect")
/// .outboundCallsEnabled(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:connect:Instance
/// properties:
/// identityManagementType: SAML
/// inboundCallsEnabled: true
/// instanceAlias: friendly-name-connect
/// outboundCallsEnabled: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> - (String) ID of the connect instance.
///
/// #### Optional
///
/// - <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// - <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Connect instances using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:connect/instance:Instance example f1288a1f-6193-445a-b47e-af739b2
/// ```
class Instance extends CustomResource {
  /// Amazon Resource Name (ARN) of the instance.
  late final Output<String> arn;

  /// Specifies whether auto resolve best voices is enabled. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> autoResolveBestVoicesEnabled;

  /// Specifies whether contact flow logs are enabled. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> contactFlowLogsEnabled;

  /// Specifies whether contact lens is enabled. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> contactLensEnabled;

  /// When the instance was created.
  late final Output<String> createdTime;

  /// The identifier for the directory if<span pulumi-lang-nodejs=" identityManagementType " pulumi-lang-dotnet=" IdentityManagementType " pulumi-lang-go=" identityManagementType " pulumi-lang-python=" identity_management_type " pulumi-lang-yaml=" identityManagementType " pulumi-lang-java=" identityManagementType "> identity_management_type </span>is `EXISTING_DIRECTORY`.
  late final Output<String?> directoryId;

  /// Specifies whether early media for outbound calls is enabled . Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> if outbound calls is enabled.
  late final Output<bool?> earlyMediaEnabled;

  /// Specifies the identity management type attached to the instance. Allowed Values are: `SAML`, `CONNECT_MANAGED`, `EXISTING_DIRECTORY`.
  late final Output<String> identityManagementType;

  /// Specifies whether inbound calls are enabled.
  late final Output<bool> inboundCallsEnabled;

  /// Specifies the name of the instance. Required if <span pulumi-lang-nodejs="`directoryId`" pulumi-lang-dotnet="`DirectoryId`" pulumi-lang-go="`directoryId`" pulumi-lang-python="`directory_id`" pulumi-lang-yaml="`directoryId`" pulumi-lang-java="`directoryId`">`directory_id`</span> not specified.
  late final Output<String?> instanceAlias;

  /// Specifies whether multi-party calls/conference is enabled. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> multiPartyConferenceEnabled;

  /// Specifies whether outbound calls are enabled.
  late final Output<bool> outboundCallsEnabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The service role of the instance.
  late final Output<String> serviceRole;

  /// The state of the instance.
  late final Output<String> status;

  /// Tags to apply to the Instance. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// <!-- * <span pulumi-lang-nodejs="`useCustomTtsVoices`" pulumi-lang-dotnet="`UseCustomTtsVoices`" pulumi-lang-go="`useCustomTtsVoices`" pulumi-lang-python="`use_custom_tts_voices`" pulumi-lang-yaml="`useCustomTtsVoices`" pulumi-lang-java="`useCustomTtsVoices`">`use_custom_tts_voices`</span> - (Optional) Whether use custom tts voices is enabled. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> -->
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Instance(
    String name, {
    InstanceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:connect/instance:Instance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.autoResolveBestVoicesEnabled =
        registerOutput<bool?>('autoResolveBestVoicesEnabled');
    this.contactFlowLogsEnabled =
        registerOutput<bool?>('contactFlowLogsEnabled');
    this.contactLensEnabled = registerOutput<bool?>('contactLensEnabled');
    this.createdTime = registerOutput<String>('createdTime');
    this.directoryId = registerOutput<String?>('directoryId');
    this.earlyMediaEnabled = registerOutput<bool?>('earlyMediaEnabled');
    this.identityManagementType =
        registerOutput<String>('identityManagementType');
    this.inboundCallsEnabled = registerOutput<bool>('inboundCallsEnabled');
    this.instanceAlias = registerOutput<String?>('instanceAlias');
    this.multiPartyConferenceEnabled =
        registerOutput<bool?>('multiPartyConferenceEnabled');
    this.outboundCallsEnabled = registerOutput<bool>('outboundCallsEnabled');
    this.region = registerOutput<String>('region');
    this.serviceRole = registerOutput<String>('serviceRole');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}

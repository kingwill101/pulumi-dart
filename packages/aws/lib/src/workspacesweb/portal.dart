import 'package:pulumi/pulumi.dart' as pulumi;
import 'portal_args.dart';
import 'portal_timeouts.dart';

/// Resource for managing an AWS WorkSpaces Web Portal.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.workspacesweb.Portal("example", {
///     displayName: "example-portal",
///     instanceType: "standard.regular",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.workspacesweb.Portal("example",
///     display_name="example-portal",
///     instance_type="standard.regular")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.WorkSpacesWeb.Portal("example", new()
///     {
///         DisplayName = "example-portal",
///         InstanceType = "standard.regular",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspacesweb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workspacesweb.NewPortal(ctx, "example", &workspacesweb.PortalArgs{
/// 			DisplayName:  pulumi.String("example-portal"),
/// 			InstanceType: pulumi.String("standard.regular"),
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
/// import com.pulumi.aws.workspacesweb.Portal;
/// import com.pulumi.aws.workspacesweb.PortalArgs;
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
///         var example = new Portal("example", PortalArgs.builder()
///             .displayName("example-portal")
///             .instanceType("standard.regular")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:workspacesweb:Portal
///     properties:
///       displayName: example-portal
///       instanceType: standard.regular
/// ```
///
///
/// ### Complete Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kms.Key("example", {
///     description: "KMS key for WorkSpaces Web Portal",
///     deletionWindowInDays: 7,
/// });
/// const examplePortal = new aws.workspacesweb.Portal("example", {
///     displayName: "example-portal",
///     instanceType: "standard.large",
///     authenticationType: "IAM_Identity_Center",
///     customerManagedKey: example.arn,
///     maxConcurrentSessions: 10,
///     additionalEncryptionContext: {
///         Environment: "Production",
///     },
///     tags: {
///         Name: "example-portal",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kms.Key("example",
///     description="KMS key for WorkSpaces Web Portal",
///     deletion_window_in_days=7)
/// example_portal = aws.workspacesweb.Portal("example",
///     display_name="example-portal",
///     instance_type="standard.large",
///     authentication_type="IAM_Identity_Center",
///     customer_managed_key=example.arn,
///     max_concurrent_sessions=10,
///     additional_encryption_context={
///         "Environment": "Production",
///     },
///     tags={
///         "Name": "example-portal",
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
///     var example = new Aws.Kms.Key("example", new()
///     {
///         Description = "KMS key for WorkSpaces Web Portal",
///         DeletionWindowInDays = 7,
///     });
///
///     var examplePortal = new Aws.WorkSpacesWeb.Portal("example", new()
///     {
///         DisplayName = "example-portal",
///         InstanceType = "standard.large",
///         AuthenticationType = "IAM_Identity_Center",
///         CustomerManagedKey = example.Arn,
///         MaxConcurrentSessions = 10,
///         AdditionalEncryptionContext =
///         {
///             { "Environment", "Production" },
///         },
///         Tags =
///         {
///             { "Name", "example-portal" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspacesweb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// 			Description:          pulumi.String("KMS key for WorkSpaces Web Portal"),
/// 			DeletionWindowInDays: pulumi.Int(7),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workspacesweb.NewPortal(ctx, "example", &workspacesweb.PortalArgs{
/// 			DisplayName:           pulumi.String("example-portal"),
/// 			InstanceType:          pulumi.String("standard.large"),
/// 			AuthenticationType:    pulumi.String("IAM_Identity_Center"),
/// 			CustomerManagedKey:    example.Arn,
/// 			MaxConcurrentSessions: pulumi.Int(10),
/// 			AdditionalEncryptionContext: pulumi.StringMap{
/// 				"Environment": pulumi.String("Production"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example-portal"),
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
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.workspacesweb.Portal;
/// import com.pulumi.aws.workspacesweb.PortalArgs;
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
///         var example = new Key("example", KeyArgs.builder()
///             .description("KMS key for WorkSpaces Web Portal")
///             .deletionWindowInDays(7)
///             .build());
///
///         var examplePortal = new Portal("examplePortal", PortalArgs.builder()
///             .displayName("example-portal")
///             .instanceType("standard.large")
///             .authenticationType("IAM_Identity_Center")
///             .customerManagedKey(example.arn())
///             .maxConcurrentSessions(10)
///             .additionalEncryptionContext(Map.of("Environment", "Production"))
///             .tags(Map.of("Name", "example-portal"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kms:Key
///     properties:
///       description: KMS key for WorkSpaces Web Portal
///       deletionWindowInDays: 7
///   examplePortal:
///     type: aws:workspacesweb:Portal
///     name: example
///     properties:
///       displayName: example-portal
///       instanceType: standard.large
///       authenticationType: IAM_Identity_Center
///       customerManagedKey: ${example.arn}
///       maxConcurrentSessions: 10
///       additionalEncryptionContext:
///         Environment: Production
///       tags:
///         Name: example-portal
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import WorkSpaces Web Portal using the `portal_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:workspacesweb/portal:Portal example arn:aws:workspaces-web:us-west-2:123456789012:portal/abcdef12345678
/// ```
class Portal extends pulumi.CustomResource {
  /// Additional encryption context for the customer managed key. Forces replacement if changed.
  late final pulumi.Output<Map<String, String>?> additionalEncryptionContext;

  /// Authentication type for the portal. Valid values: `Standard`, `IAM_Identity_Center`.
  late final pulumi.Output<String> authenticationType;

  /// ARN of the browser settings to use for the portal.
  late final pulumi.Output<String> browserSettingsArn;

  /// Browser type of the portal.
  late final pulumi.Output<String> browserType;

  /// Creation date of the portal.
  late final pulumi.Output<String> creationDate;

  /// ARN of the customer managed key. Forces replacement if changed.
  late final pulumi.Output<String?> customerManagedKey;

  /// ARN of the data protection settings associated with the portal.
  late final pulumi.Output<String> dataProtectionSettingsArn;

  /// Display name of the portal.
  late final pulumi.Output<String> displayName;

  /// Instance type for the portal. Valid values: `standard.regular`, `standard.large`.
  late final pulumi.Output<String> instanceType;

  /// ARN of the IP access settings associated with the portal.
  late final pulumi.Output<String> ipAccessSettingsArn;

  /// Maximum number of concurrent sessions for the portal.
  late final pulumi.Output<int> maxConcurrentSessions;

  /// ARN of the network settings associated with the portal.
  late final pulumi.Output<String> networkSettingsArn;

  /// ARN of the portal.
  late final pulumi.Output<String> portalArn;

  /// Endpoint URL of the portal.
  late final pulumi.Output<String> portalEndpoint;

  /// Status of the portal.
  late final pulumi.Output<String> portalStatus;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Renderer type of the portal.
  late final pulumi.Output<String> rendererType;

  /// ARN of the session logger associated with the portal.
  late final pulumi.Output<String> sessionLoggerArn;

  /// Reason for the current status of the portal.
  late final pulumi.Output<String> statusReason;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<PortalTimeouts?> timeouts;

  /// ARN of the trust store associated with the portal.
  late final pulumi.Output<String> trustStoreArn;

  /// ARN of the user access logging settings associated with the portal.
  late final pulumi.Output<String> userAccessLoggingSettingsArn;

  /// ARN of the user settings associated with the portal.
  late final pulumi.Output<String> userSettingsArn;

  /// Creates a new [Portal].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Portal]. {@macro pulumi_workspacesweb_portal_portal_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Portal(String name, {PortalArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:workspacesweb/portal:Portal',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.additionalEncryptionContext = registerOutput<Map<String, String>?>(
      'additionalEncryptionContext',
    );
    this.authenticationType = registerOutput<String>('authenticationType');
    this.browserSettingsArn = registerOutput<String>('browserSettingsArn');
    this.browserType = registerOutput<String>('browserType');
    this.creationDate = registerOutput<String>('creationDate');
    this.customerManagedKey = registerOutput<String?>('customerManagedKey');
    this.dataProtectionSettingsArn = registerOutput<String>(
      'dataProtectionSettingsArn',
    );
    this.displayName = registerOutput<String>('displayName');
    this.instanceType = registerOutput<String>('instanceType');
    this.ipAccessSettingsArn = registerOutput<String>('ipAccessSettingsArn');
    this.maxConcurrentSessions = registerOutput<int>('maxConcurrentSessions');
    this.networkSettingsArn = registerOutput<String>('networkSettingsArn');
    this.portalArn = registerOutput<String>('portalArn');
    this.portalEndpoint = registerOutput<String>('portalEndpoint');
    this.portalStatus = registerOutput<String>('portalStatus');
    this.region = registerOutput<String>('region');
    this.rendererType = registerOutput<String>('rendererType');
    this.sessionLoggerArn = registerOutput<String>('sessionLoggerArn');
    this.statusReason = registerOutput<String>('statusReason');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<PortalTimeouts?>('timeouts');
    this.trustStoreArn = registerOutput<String>('trustStoreArn');
    this.userAccessLoggingSettingsArn = registerOutput<String>(
      'userAccessLoggingSettingsArn',
    );
    this.userSettingsArn = registerOutput<String>('userSettingsArn');
  }
}

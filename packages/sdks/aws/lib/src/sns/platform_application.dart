import 'package:pulumi/pulumi.dart' as pulumi;
import 'platform_application_args.dart';
import 'platform_application_state.dart';

/// Provides an SNS platform application resource
///
/// ## Example Usage
///
/// ### Apple Push Notification Service (APNS) using certificate-based authentication
///
/// &gt; **NOTE:** For certificate-based APNS, both `platformCredential` (private key) and `platformPrincipal` (certificate) must be PEM-encoded strings. Terraform string values must be valid UTF-8, so do not pass a binary Apple `.p12` via `base64decode()` — that fails with `the result of decoding the provided string is not valid UTF-8`. Convert the `.p12` to PEM (for example with `openssl`) and load the PEM files instead.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const apnsApplication = new aws.sns.PlatformApplication("apns_application", {
///     name: "apns_application",
///     platform: "APNS",
///     platformCredential: std.file({
///         input: "apns-private-key.pem",
///     }).then(invoke => invoke.result),
///     platformPrincipal: std.file({
///         input: "apns-certificate.pem",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// apns_application = aws.sns.PlatformApplication("apns_application",
///     name="apns_application",
///     platform="APNS",
///     platform_credential=std.file(input="apns-private-key.pem").result,
///     platform_principal=std.file(input="apns-certificate.pem").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apnsApplication = new Aws.Sns.PlatformApplication("apns_application", new()
///     {
///         Name = "apns_application",
///         Platform = "APNS",
///         PlatformCredential = Std.File.Invoke(new()
///         {
///             Input = "apns-private-key.pem",
///         }).Apply(invoke => invoke.Result),
///         PlatformPrincipal = Std.File.Invoke(new()
///         {
///             Input = "apns-certificate.pem",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "apns-private-key.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile1, err := std.File(ctx, &std.FileArgs{
/// 			Input: "apns-certificate.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sns.NewPlatformApplication(ctx, "apns_application", &sns.PlatformApplicationArgs{
/// 			Name:               pulumi.String("apns_application"),
/// 			Platform:           pulumi.String("APNS"),
/// 			PlatformCredential: pulumi.String(invokeFile.Result),
/// 			PlatformPrincipal:  pulumi.String(invokeFile1.Result),
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "aws_sns_platformapplication" "apns_application" {
///   name                = "apns_application"
///   platform            = "APNS"
///   platform_credential = file("apns-private-key.pem")
///   platform_principal  = file("apns-certificate.pem")
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sns.PlatformApplication;
/// import com.pulumi.aws.sns.PlatformApplicationArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var apnsApplication = new PlatformApplication("apnsApplication", PlatformApplicationArgs.builder()
///             .name("apns_application")
///             .platform("APNS")
///             .platformCredential(StdFunctions.file(FileArgs.builder()
///                 .input("apns-private-key.pem")
///                 .build()).result())
///             .platformPrincipal(StdFunctions.file(FileArgs.builder()
///                 .input("apns-certificate.pem")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   apnsApplication:
///     type: aws:sns:PlatformApplication
///     name: apns_application
///     properties:
///       name: apns_application
///       platform: APNS
///       platformCredential:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: apns-private-key.pem
///           return: result
///       platformPrincipal:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: apns-certificate.pem
///           return: result
/// ```
///
///
/// ### Apple Push Notification Service (APNS) using token-based authentication
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const apnsApplication = new aws.sns.PlatformApplication("apns_application", {
///     name: "apns_application",
///     platform: "APNS",
///     platformCredential: "<APNS SIGNING KEY>",
///     platformPrincipal: "<APNS SIGNING KEY ID>",
///     applePlatformTeamId: "<APPLE TEAM ID>",
///     applePlatformBundleId: "<APPLE BUNDLE ID>",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// apns_application = aws.sns.PlatformApplication("apns_application",
///     name="apns_application",
///     platform="APNS",
///     platform_credential="<APNS SIGNING KEY>",
///     platform_principal="<APNS SIGNING KEY ID>",
///     apple_platform_team_id="<APPLE TEAM ID>",
///     apple_platform_bundle_id="<APPLE BUNDLE ID>")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apnsApplication = new Aws.Sns.PlatformApplication("apns_application", new()
///     {
///         Name = "apns_application",
///         Platform = "APNS",
///         PlatformCredential = "<APNS SIGNING KEY>",
///         PlatformPrincipal = "<APNS SIGNING KEY ID>",
///         ApplePlatformTeamId = "<APPLE TEAM ID>",
///         ApplePlatformBundleId = "<APPLE BUNDLE ID>",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sns.NewPlatformApplication(ctx, "apns_application", &sns.PlatformApplicationArgs{
/// 			Name:                  pulumi.String("apns_application"),
/// 			Platform:              pulumi.String("APNS"),
/// 			PlatformCredential:    pulumi.String("<APNS SIGNING KEY>"),
/// 			PlatformPrincipal:     pulumi.String("<APNS SIGNING KEY ID>"),
/// 			ApplePlatformTeamId:   pulumi.String("<APPLE TEAM ID>"),
/// 			ApplePlatformBundleId: pulumi.String("<APPLE BUNDLE ID>"),
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
/// resource "aws_sns_platformapplication" "apns_application" {
///   name                     = "apns_application"
///   platform                 = "APNS"
///   platform_credential      = "<APNS SIGNING KEY>"
///   platform_principal       = "<APNS SIGNING KEY ID>"
///   apple_platform_team_id   = "<APPLE TEAM ID>"
///   apple_platform_bundle_id = "<APPLE BUNDLE ID>"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sns.PlatformApplication;
/// import com.pulumi.aws.sns.PlatformApplicationArgs;
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
///         var apnsApplication = new PlatformApplication("apnsApplication", PlatformApplicationArgs.builder()
///             .name("apns_application")
///             .platform("APNS")
///             .platformCredential("<APNS SIGNING KEY>")
///             .platformPrincipal("<APNS SIGNING KEY ID>")
///             .applePlatformTeamId("<APPLE TEAM ID>")
///             .applePlatformBundleId("<APPLE BUNDLE ID>")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   apnsApplication:
///     type: aws:sns:PlatformApplication
///     name: apns_application
///     properties:
///       name: apns_application
///       platform: APNS
///       platformCredential: <APNS SIGNING KEY>
///       platformPrincipal: <APNS SIGNING KEY ID>
///       applePlatformTeamId: <APPLE TEAM ID>
///       applePlatformBundleId: <APPLE BUNDLE ID>
/// ```
///
///
/// ### Google Cloud Messaging (GCM)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const gcmApplication = new aws.sns.PlatformApplication("gcm_application", {
///     name: "gcm_application",
///     platform: "GCM",
///     platformCredential: "<GCM API KEY>",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// gcm_application = aws.sns.PlatformApplication("gcm_application",
///     name="gcm_application",
///     platform="GCM",
///     platform_credential="<GCM API KEY>")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var gcmApplication = new Aws.Sns.PlatformApplication("gcm_application", new()
///     {
///         Name = "gcm_application",
///         Platform = "GCM",
///         PlatformCredential = "<GCM API KEY>",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sns.NewPlatformApplication(ctx, "gcm_application", &sns.PlatformApplicationArgs{
/// 			Name:               pulumi.String("gcm_application"),
/// 			Platform:           pulumi.String("GCM"),
/// 			PlatformCredential: pulumi.String("<GCM API KEY>"),
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
/// resource "aws_sns_platformapplication" "gcm_application" {
///   name                = "gcm_application"
///   platform            = "GCM"
///   platform_credential = "<GCM API KEY>"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sns.PlatformApplication;
/// import com.pulumi.aws.sns.PlatformApplicationArgs;
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
///         var gcmApplication = new PlatformApplication("gcmApplication", PlatformApplicationArgs.builder()
///             .name("gcm_application")
///             .platform("GCM")
///             .platformCredential("<GCM API KEY>")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   gcmApplication:
///     type: aws:sns:PlatformApplication
///     name: gcm_application
///     properties:
///       name: gcm_application
///       platform: GCM
///       platformCredential: <GCM API KEY>
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SNS platform applications using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:sns/platformApplication:PlatformApplication gcm_application arn:aws:sns:us-west-2:123456789012:app/GCM/gcm_application
/// ```
class PlatformApplication extends pulumi.CustomResource {
  /// The bundle identifier that's assigned to your iOS app. May only include alphanumeric characters, hyphens (-), and periods (.).
  late final pulumi.Output<String?> applePlatformBundleId;
  /// The identifier that's assigned to your Apple developer account team. Must be 10 alphanumeric characters.
  late final pulumi.Output<String?> applePlatformTeamId;
  /// The ARN of the SNS platform application
  late final pulumi.Output<String> arn;
  /// The ARN of the SNS Topic triggered when a delivery to any of the platform endpoints associated with your platform application encounters a permanent failure.
  late final pulumi.Output<String?> eventDeliveryFailureTopicArn;
  /// The ARN of the SNS Topic triggered when a new platform endpoint is added to your platform application.
  late final pulumi.Output<String?> eventEndpointCreatedTopicArn;
  /// The ARN of the SNS Topic triggered when an existing platform endpoint is deleted from your platform application.
  late final pulumi.Output<String?> eventEndpointDeletedTopicArn;
  /// The ARN of the SNS Topic triggered when an existing platform endpoint is changed from your platform application.
  late final pulumi.Output<String?> eventEndpointUpdatedTopicArn;
  /// The IAM role ARN permitted to receive failure feedback for this application and give SNS write access to use CloudWatch logs on your behalf.
  late final pulumi.Output<String?> failureFeedbackRoleArn;
  /// The friendly name for the SNS platform application
  late final pulumi.Output<String> name;
  /// The platform that the app is registered with. See [Platform](http://docs.aws.amazon.com/sns/latest/dg/mobile-push-send-register.html) for supported platforms.
  late final pulumi.Output<String> platform;
  /// Application Platform credential. See [Credential](http://docs.aws.amazon.com/sns/latest/dg/mobile-push-send-register.html) for type of credential required for platform. The value of this attribute when stored into the Terraform state is only a hash of the real value, so therefore it is not practical to use this as an attribute for other resources.
  late final pulumi.Output<String> platformCredential;
  /// Application Platform principal. See [Principal](http://docs.aws.amazon.com/sns/latest/api/API_CreatePlatformApplication.html) for type of principal required for platform. The value of this attribute when stored into the Terraform state is only a hash of the real value, so therefore it is not practical to use this as an attribute for other resources.
  late final pulumi.Output<String?> platformPrincipal;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The IAM role ARN permitted to receive success feedback for this application and give SNS write access to use CloudWatch logs on your behalf.
  late final pulumi.Output<String?> successFeedbackRoleArn;
  /// The sample rate percentage (0-100) of successfully delivered messages.
  ///
  /// The following attributes are needed only when using APNS token credentials:
  late final pulumi.Output<String?> successFeedbackSampleRate;

  /// Creates a new [PlatformApplication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PlatformApplication]. {@macro pulumi_sns_platform_application_platform_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PlatformApplication(
    String name, {
    PlatformApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sns/platformApplication:PlatformApplication',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.51.1').merge(options),
          additionalSecretOutputs: const ['platformCredential', 'platformPrincipal'],
        ) {
    applePlatformBundleId = registerOutput<String?>('applePlatformBundleId');
    applePlatformTeamId = registerOutput<String?>('applePlatformTeamId');
    arn = registerOutput<String>('arn');
    eventDeliveryFailureTopicArn = registerOutput<String?>('eventDeliveryFailureTopicArn');
    eventEndpointCreatedTopicArn = registerOutput<String?>('eventEndpointCreatedTopicArn');
    eventEndpointDeletedTopicArn = registerOutput<String?>('eventEndpointDeletedTopicArn');
    eventEndpointUpdatedTopicArn = registerOutput<String?>('eventEndpointUpdatedTopicArn');
    failureFeedbackRoleArn = registerOutput<String?>('failureFeedbackRoleArn');
    this.name = registerOutput<String>('name');
    platform = registerOutput<String>('platform');
    platformCredential = registerOutput<String>('platformCredential', isSecret: true);
    platformPrincipal = registerOutput<String?>('platformPrincipal', isSecret: true);
    region = registerOutput<String>('region');
    successFeedbackRoleArn = registerOutput<String?>('successFeedbackRoleArn');
    successFeedbackSampleRate = registerOutput<String?>('successFeedbackSampleRate');
  }

  /// Gets an existing [PlatformApplication] resource's state with the given [name] and [id].
  static PlatformApplication get(
    String name,
    pulumi.Input<String> id, {
    PlatformApplicationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return PlatformApplication._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  PlatformApplication._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sns/platformApplication:PlatformApplication',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applePlatformBundleId = registerOutput<String?>('applePlatformBundleId');
    applePlatformTeamId = registerOutput<String?>('applePlatformTeamId');
    arn = registerOutput<String>('arn');
    eventDeliveryFailureTopicArn = registerOutput<String?>('eventDeliveryFailureTopicArn');
    eventEndpointCreatedTopicArn = registerOutput<String?>('eventEndpointCreatedTopicArn');
    eventEndpointDeletedTopicArn = registerOutput<String?>('eventEndpointDeletedTopicArn');
    eventEndpointUpdatedTopicArn = registerOutput<String?>('eventEndpointUpdatedTopicArn');
    failureFeedbackRoleArn = registerOutput<String?>('failureFeedbackRoleArn');
    this.name = registerOutput<String>('name');
    platform = registerOutput<String>('platform');
    platformCredential = registerOutput<String>('platformCredential', isSecret: true);
    platformPrincipal = registerOutput<String?>('platformPrincipal', isSecret: true);
    region = registerOutput<String>('region');
    successFeedbackRoleArn = registerOutput<String?>('successFeedbackRoleArn');
    successFeedbackSampleRate = registerOutput<String?>('successFeedbackSampleRate');
  }

  /// Creates a typed reference to an existing [PlatformApplication] resource.
  PlatformApplication.reference(String urn)
    : super(
        'aws:sns/platformApplication:PlatformApplication',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['platformCredential', 'platformPrincipal'],
        isResourceReference: true,
      ) {
    applePlatformBundleId = registerOutput<String?>('applePlatformBundleId');
    applePlatformTeamId = registerOutput<String?>('applePlatformTeamId');
    arn = registerOutput<String>('arn');
    eventDeliveryFailureTopicArn = registerOutput<String?>('eventDeliveryFailureTopicArn');
    eventEndpointCreatedTopicArn = registerOutput<String?>('eventEndpointCreatedTopicArn');
    eventEndpointDeletedTopicArn = registerOutput<String?>('eventEndpointDeletedTopicArn');
    eventEndpointUpdatedTopicArn = registerOutput<String?>('eventEndpointUpdatedTopicArn');
    failureFeedbackRoleArn = registerOutput<String?>('failureFeedbackRoleArn');
    this.name = registerOutput<String>('name');
    platform = registerOutput<String>('platform');
    platformCredential = registerOutput<String>('platformCredential', isSecret: true);
    platformPrincipal = registerOutput<String?>('platformPrincipal', isSecret: true);
    region = registerOutput<String>('region');
    successFeedbackRoleArn = registerOutput<String?>('successFeedbackRoleArn');
    successFeedbackSampleRate = registerOutput<String?>('successFeedbackSampleRate');
  }
}

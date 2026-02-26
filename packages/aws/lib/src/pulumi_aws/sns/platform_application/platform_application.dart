import 'package:pulumi/pulumi.dart';
import 'platform_application_args.dart';

/// Provides an SNS platform application resource
///
/// ## Example Usage
///
/// ### Apple Push Notification Service (APNS) using certificate-based authentication
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const apnsApplication = new aws.sns.PlatformApplication("apns_application", {
/// name: "apns_application",
/// platform: "APNS",
/// platformCredential: "<APNS PRIVATE KEY>",
/// platformPrincipal: "<APNS CERTIFICATE>",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// apns_application = aws.sns.PlatformApplication("apns_application",
/// name="apns_application",
/// platform="APNS",
/// platform_credential="<APNS PRIVATE KEY>",
/// platform_principal="<APNS CERTIFICATE>")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var apnsApplication = new Aws.Sns.PlatformApplication("apns_application", new()
/// {
/// Name = "apns_application",
/// Platform = "APNS",
/// PlatformCredential = "<APNS PRIVATE KEY>",
/// PlatformPrincipal = "<APNS CERTIFICATE>",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sns.NewPlatformApplication(ctx, "apns_application", &sns.PlatformApplicationArgs{
/// Name:               pulumi.String("apns_application"),
/// Platform:           pulumi.String("APNS"),
/// PlatformCredential: pulumi.String("<APNS PRIVATE KEY>"),
/// PlatformPrincipal:  pulumi.String("<APNS CERTIFICATE>"),
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
/// import com.pulumi.aws.sns.PlatformApplication;
/// import com.pulumi.aws.sns.PlatformApplicationArgs;
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
/// var apnsApplication = new PlatformApplication("apnsApplication", PlatformApplicationArgs.builder()
/// .name("apns_application")
/// .platform("APNS")
/// .platformCredential("<APNS PRIVATE KEY>")
/// .platformPrincipal("<APNS CERTIFICATE>")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// apnsApplication:
/// type: aws:sns:PlatformApplication
/// name: apns_application
/// properties:
/// name: apns_application
/// platform: APNS
/// platformCredential: <APNS PRIVATE KEY>
/// platformPrincipal: <APNS CERTIFICATE>
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Apple Push Notification Service (APNS) using token-based authentication
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const apnsApplication = new aws.sns.PlatformApplication("apns_application", {
/// name: "apns_application",
/// platform: "APNS",
/// platformCredential: "<APNS SIGNING KEY>",
/// platformPrincipal: "<APNS SIGNING KEY ID>",
/// applePlatformTeamId: "<APPLE TEAM ID>",
/// applePlatformBundleId: "<APPLE BUNDLE ID>",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// apns_application = aws.sns.PlatformApplication("apns_application",
/// name="apns_application",
/// platform="APNS",
/// platform_credential="<APNS SIGNING KEY>",
/// platform_principal="<APNS SIGNING KEY ID>",
/// apple_platform_team_id="<APPLE TEAM ID>",
/// apple_platform_bundle_id="<APPLE BUNDLE ID>")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var apnsApplication = new Aws.Sns.PlatformApplication("apns_application", new()
/// {
/// Name = "apns_application",
/// Platform = "APNS",
/// PlatformCredential = "<APNS SIGNING KEY>",
/// PlatformPrincipal = "<APNS SIGNING KEY ID>",
/// ApplePlatformTeamId = "<APPLE TEAM ID>",
/// ApplePlatformBundleId = "<APPLE BUNDLE ID>",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sns.NewPlatformApplication(ctx, "apns_application", &sns.PlatformApplicationArgs{
/// Name:                  pulumi.String("apns_application"),
/// Platform:              pulumi.String("APNS"),
/// PlatformCredential:    pulumi.String("<APNS SIGNING KEY>"),
/// PlatformPrincipal:     pulumi.String("<APNS SIGNING KEY ID>"),
/// ApplePlatformTeamId:   pulumi.String("<APPLE TEAM ID>"),
/// ApplePlatformBundleId: pulumi.String("<APPLE BUNDLE ID>"),
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
/// import com.pulumi.aws.sns.PlatformApplication;
/// import com.pulumi.aws.sns.PlatformApplicationArgs;
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
/// var apnsApplication = new PlatformApplication("apnsApplication", PlatformApplicationArgs.builder()
/// .name("apns_application")
/// .platform("APNS")
/// .platformCredential("<APNS SIGNING KEY>")
/// .platformPrincipal("<APNS SIGNING KEY ID>")
/// .applePlatformTeamId("<APPLE TEAM ID>")
/// .applePlatformBundleId("<APPLE BUNDLE ID>")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// apnsApplication:
/// type: aws:sns:PlatformApplication
/// name: apns_application
/// properties:
/// name: apns_application
/// platform: APNS
/// platformCredential: <APNS SIGNING KEY>
/// platformPrincipal: <APNS SIGNING KEY ID>
/// applePlatformTeamId: <APPLE TEAM ID>
/// applePlatformBundleId: <APPLE BUNDLE ID>
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Google Cloud Messaging (GCM)
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const gcmApplication = new aws.sns.PlatformApplication("gcm_application", {
/// name: "gcm_application",
/// platform: "GCM",
/// platformCredential: "<GCM API KEY>",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// gcm_application = aws.sns.PlatformApplication("gcm_application",
/// name="gcm_application",
/// platform="GCM",
/// platform_credential="<GCM API KEY>")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var gcmApplication = new Aws.Sns.PlatformApplication("gcm_application", new()
/// {
/// Name = "gcm_application",
/// Platform = "GCM",
/// PlatformCredential = "<GCM API KEY>",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sns.NewPlatformApplication(ctx, "gcm_application", &sns.PlatformApplicationArgs{
/// Name:               pulumi.String("gcm_application"),
/// Platform:           pulumi.String("GCM"),
/// PlatformCredential: pulumi.String("<GCM API KEY>"),
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
/// import com.pulumi.aws.sns.PlatformApplication;
/// import com.pulumi.aws.sns.PlatformApplicationArgs;
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
/// var gcmApplication = new PlatformApplication("gcmApplication", PlatformApplicationArgs.builder()
/// .name("gcm_application")
/// .platform("GCM")
/// .platformCredential("<GCM API KEY>")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// gcmApplication:
/// type: aws:sns:PlatformApplication
/// name: gcm_application
/// properties:
/// name: gcm_application
/// platform: GCM
/// platformCredential: <GCM API KEY>
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import SNS platform applications using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:sns/platformApplication:PlatformApplication gcm_application arn:aws:sns:us-west-2:123456789012:app/GCM/gcm_application
/// ```
class PlatformApplication extends CustomResource {
  /// The bundle identifier that's assigned to your iOS app. May only include alphanumeric characters, hyphens (-), and periods (.).
  late final Output<String?> applePlatformBundleId;

  /// The identifier that's assigned to your Apple developer account team. Must be 10 alphanumeric characters.
  late final Output<String?> applePlatformTeamId;

  /// The ARN of the SNS platform application
  late final Output<String> arn;

  /// The ARN of the SNS Topic triggered when a delivery to any of the platform endpoints associated with your platform application encounters a permanent failure.
  late final Output<String?> eventDeliveryFailureTopicArn;

  /// The ARN of the SNS Topic triggered when a new platform endpoint is added to your platform application.
  late final Output<String?> eventEndpointCreatedTopicArn;

  /// The ARN of the SNS Topic triggered when an existing platform endpoint is deleted from your platform application.
  late final Output<String?> eventEndpointDeletedTopicArn;

  /// The ARN of the SNS Topic triggered when an existing platform endpoint is changed from your platform application.
  late final Output<String?> eventEndpointUpdatedTopicArn;

  /// The IAM role ARN permitted to receive failure feedback for this application and give SNS write access to use CloudWatch logs on your behalf.
  late final Output<String?> failureFeedbackRoleArn;

  /// The friendly name for the SNS platform application
  late final Output<String> name;

  /// The platform that the app is registered with. See [Platform](http://docs.aws.amazon.com/sns/latest/dg/mobile-push-send-register.html) for supported platforms.
  late final Output<String> platform;

  /// Application Platform credential. See [Credential](http://docs.aws.amazon.com/sns/latest/dg/mobile-push-send-register.html) for type of credential required for platform. The value of this attribute when stored into the state is only a hash of the real value, so therefore it is not practical to use this as an attribute for other resources.
  late final Output<String> platformCredential;

  /// Application Platform principal. See [Principal](http://docs.aws.amazon.com/sns/latest/api/API_CreatePlatformApplication.html) for type of principal required for platform. The value of this attribute when stored into the state is only a hash of the real value, so therefore it is not practical to use this as an attribute for other resources.
  late final Output<String?> platformPrincipal;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The IAM role ARN permitted to receive success feedback for this application and give SNS write access to use CloudWatch logs on your behalf.
  late final Output<String?> successFeedbackRoleArn;

  /// The sample rate percentage (0-100) of successfully delivered messages.
  ///
  /// The following attributes are needed only when using APNS token credentials:
  late final Output<String?> successFeedbackSampleRate;

  PlatformApplication(
    String name, {
    PlatformApplicationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sns/platformApplication:PlatformApplication',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applePlatformBundleId =
        registerOutput<String?>('applePlatformBundleId');
    this.applePlatformTeamId = registerOutput<String?>('applePlatformTeamId');
    this.arn = registerOutput<String>('arn');
    this.eventDeliveryFailureTopicArn =
        registerOutput<String?>('eventDeliveryFailureTopicArn');
    this.eventEndpointCreatedTopicArn =
        registerOutput<String?>('eventEndpointCreatedTopicArn');
    this.eventEndpointDeletedTopicArn =
        registerOutput<String?>('eventEndpointDeletedTopicArn');
    this.eventEndpointUpdatedTopicArn =
        registerOutput<String?>('eventEndpointUpdatedTopicArn');
    this.failureFeedbackRoleArn =
        registerOutput<String?>('failureFeedbackRoleArn');
    this.name = registerOutput<String>('name');
    this.platform = registerOutput<String>('platform');
    this.platformCredential = registerOutput<String>('platformCredential');
    this.platformPrincipal = registerOutput<String?>('platformPrincipal');
    this.region = registerOutput<String>('region');
    this.successFeedbackRoleArn =
        registerOutput<String?>('successFeedbackRoleArn');
    this.successFeedbackSampleRate =
        registerOutput<String?>('successFeedbackSampleRate');
  }
}

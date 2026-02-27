import 'package:pulumi/pulumi.dart' as pulumi;
import 'platform_application_args.dart';

/// Provides an SNS platform application resource
///
/// ## Example Usage
///
/// ### Apple Push Notification Service (APNS) using certificate-based authentication
///
///
///
/// ### Apple Push Notification Service (APNS) using token-based authentication
///
///
///
/// ### Google Cloud Messaging (GCM)
///
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

  /// Application Platform credential. See [Credential](http://docs.aws.amazon.com/sns/latest/dg/mobile-push-send-register.html) for type of credential required for platform. The value of this attribute when stored into the state is only a hash of the real value, so therefore it is not practical to use this as an attribute for other resources.
  late final pulumi.Output<String> platformCredential;

  /// Application Platform principal. See [Principal](http://docs.aws.amazon.com/sns/latest/api/API_CreatePlatformApplication.html) for type of principal required for platform. The value of this attribute when stored into the state is only a hash of the real value, so therefore it is not practical to use this as an attribute for other resources.
  late final pulumi.Output<String?> platformPrincipal;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The IAM role ARN permitted to receive success feedback for this application and give SNS write access to use CloudWatch logs on your behalf.
  late final pulumi.Output<String?> successFeedbackRoleArn;

  /// The sample rate percentage (0-100) of successfully delivered messages.
  ///
  /// The following attributes are needed only when using APNS token credentials:
  late final pulumi.Output<String?> successFeedbackSampleRate;

  PlatformApplication(
    String name, {
    PlatformApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sns/platformApplication:PlatformApplication',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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

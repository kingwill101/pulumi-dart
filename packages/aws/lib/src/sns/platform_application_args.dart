// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sns_platform_application_platform_application_args_doc}
/// The set of arguments for PlatformApplication.
/// {@endtemplate}
/// {@macro pulumi_sns_platform_application_platform_application_args_doc}
class PlatformApplicationArgs {
  /// The bundle identifier that's assigned to your iOS app. May only include alphanumeric characters, hyphens (-), and periods (.).
  final pulumi.Input<String>? applePlatformBundleId;

  /// The identifier that's assigned to your Apple developer account team. Must be 10 alphanumeric characters.
  final pulumi.Input<String>? applePlatformTeamId;

  /// The ARN of the SNS Topic triggered when a delivery to any of the platform endpoints associated with your platform application encounters a permanent failure.
  final pulumi.Input<String>? eventDeliveryFailureTopicArn;

  /// The ARN of the SNS Topic triggered when a new platform endpoint is added to your platform application.
  final pulumi.Input<String>? eventEndpointCreatedTopicArn;

  /// The ARN of the SNS Topic triggered when an existing platform endpoint is deleted from your platform application.
  final pulumi.Input<String>? eventEndpointDeletedTopicArn;

  /// The ARN of the SNS Topic triggered when an existing platform endpoint is changed from your platform application.
  final pulumi.Input<String>? eventEndpointUpdatedTopicArn;

  /// The IAM role ARN permitted to receive failure feedback for this application and give SNS write access to use CloudWatch logs on your behalf.
  final pulumi.Input<String>? failureFeedbackRoleArn;

  /// The friendly name for the SNS platform application
  final pulumi.Input<String>? name;

  /// The platform that the app is registered with. See [Platform](http://docs.aws.amazon.com/sns/latest/dg/mobile-push-send-register.html) for supported platforms.
  final pulumi.Input<String> platform;

  /// Application Platform credential. See [Credential](http://docs.aws.amazon.com/sns/latest/dg/mobile-push-send-register.html) for type of credential required for platform. The value of this attribute when stored into the state is only a hash of the real value, so therefore it is not practical to use this as an attribute for other resources.
  final pulumi.Input<String> platformCredential;

  /// Application Platform principal. See [Principal](http://docs.aws.amazon.com/sns/latest/api/API_CreatePlatformApplication.html) for type of principal required for platform. The value of this attribute when stored into the state is only a hash of the real value, so therefore it is not practical to use this as an attribute for other resources.
  final pulumi.Input<String>? platformPrincipal;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The IAM role ARN permitted to receive success feedback for this application and give SNS write access to use CloudWatch logs on your behalf.
  final pulumi.Input<String>? successFeedbackRoleArn;

  /// The sample rate percentage (0-100) of successfully delivered messages.
  ///
  /// The following attributes are needed only when using APNS token credentials:
  final pulumi.Input<String>? successFeedbackSampleRate;

  /// Creates a new [PlatformApplicationArgs].
  /// [applePlatformBundleId] The bundle identifier that's assigned to your iOS app. May only include alphanumeric characters, hyphens (-), and periods (.).
  /// [applePlatformTeamId] The identifier that's assigned to your Apple developer account team. Must be 10 alphanumeric characters.
  /// [eventDeliveryFailureTopicArn] The ARN of the SNS Topic triggered when a delivery to any of the platform endpoints associated with your platform application encounters a permanent failure.
  /// [eventEndpointCreatedTopicArn] The ARN of the SNS Topic triggered when a new platform endpoint is added to your platform application.
  /// [eventEndpointDeletedTopicArn] The ARN of the SNS Topic triggered when an existing platform endpoint is deleted from your platform application.
  /// [eventEndpointUpdatedTopicArn] The ARN of the SNS Topic triggered when an existing platform endpoint is changed from your platform application.
  /// [failureFeedbackRoleArn] The IAM role ARN permitted to receive failure feedback for this application and give SNS write access to use CloudWatch logs on your behalf.
  /// [name] The friendly name for the SNS platform application
  /// [platform] The platform that the app is registered with. See [Platform](http://docs.aws.amazon.com/sns/latest/dg/mobile-push-send-register.html) for supported platforms.
  /// [platformCredential] Application Platform credential. See [Credential](http://docs.aws.amazon.com/sns/latest/dg/mobile-push-send-register.html) for type of credential required for platform. The value of this attribute when stored into the state is only a hash of the real value, so therefore it is not practical to use this as an attribute for other resources.
  /// [platformPrincipal] Application Platform principal. See [Principal](http://docs.aws.amazon.com/sns/latest/api/API_CreatePlatformApplication.html) for type of principal required for platform. The value of this attribute when stored into the state is only a hash of the real value, so therefore it is not practical to use this as an attribute for other resources.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [successFeedbackRoleArn] The IAM role ARN permitted to receive success feedback for this application and give SNS write access to use CloudWatch logs on your behalf.
  /// [successFeedbackSampleRate] The sample rate percentage (0-100) of successfully delivered messages.
  PlatformApplicationArgs({
    String? applePlatformBundleId,
    String? applePlatformTeamId,
    String? eventDeliveryFailureTopicArn,
    String? eventEndpointCreatedTopicArn,
    String? eventEndpointDeletedTopicArn,
    String? eventEndpointUpdatedTopicArn,
    String? failureFeedbackRoleArn,
    String? name,
    required String platform,
    required String platformCredential,
    String? platformPrincipal,
    String? region,
    String? successFeedbackRoleArn,
    String? successFeedbackSampleRate,
  })  : applePlatformBundleId =
            pulumi.Input.asOptionalInput<String>(applePlatformBundleId),
        applePlatformTeamId =
            pulumi.Input.asOptionalInput<String>(applePlatformTeamId),
        eventDeliveryFailureTopicArn =
            pulumi.Input.asOptionalInput<String>(eventDeliveryFailureTopicArn),
        eventEndpointCreatedTopicArn =
            pulumi.Input.asOptionalInput<String>(eventEndpointCreatedTopicArn),
        eventEndpointDeletedTopicArn =
            pulumi.Input.asOptionalInput<String>(eventEndpointDeletedTopicArn),
        eventEndpointUpdatedTopicArn =
            pulumi.Input.asOptionalInput<String>(eventEndpointUpdatedTopicArn),
        failureFeedbackRoleArn =
            pulumi.Input.asOptionalInput<String>(failureFeedbackRoleArn),
        name = pulumi.Input.asOptionalInput<String>(name),
        platform = pulumi.Input.asInput<String>(platform),
        platformCredential = pulumi.Input.asInput<String>(platformCredential),
        platformPrincipal =
            pulumi.Input.asOptionalInput<String>(platformPrincipal),
        region = pulumi.Input.asOptionalInput<String>(region),
        successFeedbackRoleArn =
            pulumi.Input.asOptionalInput<String>(successFeedbackRoleArn),
        successFeedbackSampleRate =
            pulumi.Input.asOptionalInput<String>(successFeedbackSampleRate);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final applePlatformBundleIdValue = applePlatformBundleId;
    if (applePlatformBundleIdValue != null) {
      map['applePlatformBundleId'] = applePlatformBundleIdValue;
    }
    final applePlatformTeamIdValue = applePlatformTeamId;
    if (applePlatformTeamIdValue != null) {
      map['applePlatformTeamId'] = applePlatformTeamIdValue;
    }
    final eventDeliveryFailureTopicArnValue = eventDeliveryFailureTopicArn;
    if (eventDeliveryFailureTopicArnValue != null) {
      map['eventDeliveryFailureTopicArn'] = eventDeliveryFailureTopicArnValue;
    }
    final eventEndpointCreatedTopicArnValue = eventEndpointCreatedTopicArn;
    if (eventEndpointCreatedTopicArnValue != null) {
      map['eventEndpointCreatedTopicArn'] = eventEndpointCreatedTopicArnValue;
    }
    final eventEndpointDeletedTopicArnValue = eventEndpointDeletedTopicArn;
    if (eventEndpointDeletedTopicArnValue != null) {
      map['eventEndpointDeletedTopicArn'] = eventEndpointDeletedTopicArnValue;
    }
    final eventEndpointUpdatedTopicArnValue = eventEndpointUpdatedTopicArn;
    if (eventEndpointUpdatedTopicArnValue != null) {
      map['eventEndpointUpdatedTopicArn'] = eventEndpointUpdatedTopicArnValue;
    }
    final failureFeedbackRoleArnValue = failureFeedbackRoleArn;
    if (failureFeedbackRoleArnValue != null) {
      map['failureFeedbackRoleArn'] = failureFeedbackRoleArnValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['platform'] = platform;
    map['platformCredential'] = platformCredential;
    final platformPrincipalValue = platformPrincipal;
    if (platformPrincipalValue != null) {
      map['platformPrincipal'] = platformPrincipalValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final successFeedbackRoleArnValue = successFeedbackRoleArn;
    if (successFeedbackRoleArnValue != null) {
      map['successFeedbackRoleArn'] = successFeedbackRoleArnValue;
    }
    final successFeedbackSampleRateValue = successFeedbackSampleRate;
    if (successFeedbackSampleRateValue != null) {
      map['successFeedbackSampleRate'] = successFeedbackSampleRateValue;
    }
    return map;
  }

  factory PlatformApplicationArgs.fromMap(Map<String, dynamic> map) {
    return PlatformApplicationArgs(
      applePlatformBundleId: map['applePlatformBundleId'] == null
          ? null
          : map['applePlatformBundleId'] as String,
      applePlatformTeamId: map['applePlatformTeamId'] == null
          ? null
          : map['applePlatformTeamId'] as String,
      eventDeliveryFailureTopicArn: map['eventDeliveryFailureTopicArn'] == null
          ? null
          : map['eventDeliveryFailureTopicArn'] as String,
      eventEndpointCreatedTopicArn: map['eventEndpointCreatedTopicArn'] == null
          ? null
          : map['eventEndpointCreatedTopicArn'] as String,
      eventEndpointDeletedTopicArn: map['eventEndpointDeletedTopicArn'] == null
          ? null
          : map['eventEndpointDeletedTopicArn'] as String,
      eventEndpointUpdatedTopicArn: map['eventEndpointUpdatedTopicArn'] == null
          ? null
          : map['eventEndpointUpdatedTopicArn'] as String,
      failureFeedbackRoleArn: map['failureFeedbackRoleArn'] == null
          ? null
          : map['failureFeedbackRoleArn'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      platform: map['platform'] as String,
      platformCredential: map['platformCredential'] as String,
      platformPrincipal: map['platformPrincipal'] == null
          ? null
          : map['platformPrincipal'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      successFeedbackRoleArn: map['successFeedbackRoleArn'] == null
          ? null
          : map['successFeedbackRoleArn'] as String,
      successFeedbackSampleRate: map['successFeedbackSampleRate'] == null
          ? null
          : map['successFeedbackSampleRate'] as String,
    );
  }
}

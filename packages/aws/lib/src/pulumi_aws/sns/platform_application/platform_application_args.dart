// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for PlatformApplication.
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

  PlatformApplicationArgs({
    this.applePlatformBundleId,
    this.applePlatformTeamId,
    this.eventDeliveryFailureTopicArn,
    this.eventEndpointCreatedTopicArn,
    this.eventEndpointDeletedTopicArn,
    this.eventEndpointUpdatedTopicArn,
    this.failureFeedbackRoleArn,
    this.name,
    required this.platform,
    required this.platformCredential,
    this.platformPrincipal,
    this.region,
    this.successFeedbackRoleArn,
    this.successFeedbackSampleRate,
  });

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
      applePlatformBundleId:
          pulumi.Input.asOptionalInput<String>(map['applePlatformBundleId']),
      applePlatformTeamId:
          pulumi.Input.asOptionalInput<String>(map['applePlatformTeamId']),
      eventDeliveryFailureTopicArn: pulumi.Input.asOptionalInput<String>(
          map['eventDeliveryFailureTopicArn']),
      eventEndpointCreatedTopicArn: pulumi.Input.asOptionalInput<String>(
          map['eventEndpointCreatedTopicArn']),
      eventEndpointDeletedTopicArn: pulumi.Input.asOptionalInput<String>(
          map['eventEndpointDeletedTopicArn']),
      eventEndpointUpdatedTopicArn: pulumi.Input.asOptionalInput<String>(
          map['eventEndpointUpdatedTopicArn']),
      failureFeedbackRoleArn:
          pulumi.Input.asOptionalInput<String>(map['failureFeedbackRoleArn']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      platform: pulumi.Input.asInput<String>(map['platform']),
      platformCredential:
          pulumi.Input.asInput<String>(map['platformCredential']),
      platformPrincipal:
          pulumi.Input.asOptionalInput<String>(map['platformPrincipal']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      successFeedbackRoleArn:
          pulumi.Input.asOptionalInput<String>(map['successFeedbackRoleArn']),
      successFeedbackSampleRate: pulumi.Input.asOptionalInput<String>(
          map['successFeedbackSampleRate']),
    );
  }
}

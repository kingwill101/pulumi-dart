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
  const PlatformApplicationArgs({
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
    return <String, dynamic>{
      'applePlatformBundleId': ?applePlatformBundleId,
      'applePlatformTeamId': ?applePlatformTeamId,
      'eventDeliveryFailureTopicArn': ?eventDeliveryFailureTopicArn,
      'eventEndpointCreatedTopicArn': ?eventEndpointCreatedTopicArn,
      'eventEndpointDeletedTopicArn': ?eventEndpointDeletedTopicArn,
      'eventEndpointUpdatedTopicArn': ?eventEndpointUpdatedTopicArn,
      'failureFeedbackRoleArn': ?failureFeedbackRoleArn,
      'name': ?name,
      'platform': platform,
      'platformCredential': platformCredential,
      'platformPrincipal': ?platformPrincipal,
      'region': ?region,
      'successFeedbackRoleArn': ?successFeedbackRoleArn,
      'successFeedbackSampleRate': ?successFeedbackSampleRate,
    };
  }

  factory PlatformApplicationArgs.fromMap(Map<String, dynamic> map) {
    return PlatformApplicationArgs(
      applePlatformBundleId: (() { final guardedValue = map['applePlatformBundleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applePlatformTeamId: (() { final guardedValue = map['applePlatformTeamId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventDeliveryFailureTopicArn: (() { final guardedValue = map['eventDeliveryFailureTopicArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventEndpointCreatedTopicArn: (() { final guardedValue = map['eventEndpointCreatedTopicArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventEndpointDeletedTopicArn: (() { final guardedValue = map['eventEndpointDeletedTopicArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventEndpointUpdatedTopicArn: (() { final guardedValue = map['eventEndpointUpdatedTopicArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      failureFeedbackRoleArn: (() { final guardedValue = map['failureFeedbackRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      platform: pulumi.Input.fromValue(map['platform'] as String),
      platformCredential: pulumi.Input.fromValue(map['platformCredential'] as String),
      platformPrincipal: (() { final guardedValue = map['platformPrincipal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      successFeedbackRoleArn: (() { final guardedValue = map['successFeedbackRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      successFeedbackSampleRate: (() { final guardedValue = map['successFeedbackSampleRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


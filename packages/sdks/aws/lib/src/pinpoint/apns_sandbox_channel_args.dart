// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pinpoint_apns_sandbox_channel_apns_sandbox_channel_args_doc}
/// The set of arguments for ApnsSandboxChannel.
/// {@endtemplate}
/// {@macro pulumi_pinpoint_apns_sandbox_channel_apns_sandbox_channel_args_doc}
class ApnsSandboxChannelArgs {
  /// Application ID.
  final pulumi.Input<String> applicationId;
  /// ID assigned to your iOS app. To find this value, choose Certificates, IDs & Profiles, choose App IDs in the Identifiers section, and choose your app. Required if using Key credentials.
  final pulumi.Input<String?>? bundleId;
  /// Pem encoded TLS Certificate from Apple. Required if using Certificate credentials.
  final pulumi.Input<String?>? certificate;
  /// Default authentication method used for APNs Sandbox. __NOTE__: AWS End User Messaging uses this default for every APNs push notification that you send using the console. You can override the default when you send a message programmatically using the AWS End User Messaging API, the AWS CLI, or an AWS SDK. If your default authentication type fails, AWS End User Messaging doesn't attempt to use the other authentication type.
  final pulumi.Input<String?>? defaultAuthenticationMethod;
  /// Whether the channel is enabled or disabled. Defaults to `true`.
  final pulumi.Input<bool?>? enabled;
  /// Certificate Private Key file (ie. `.key` file). Required if using Certificate credentials.
  final pulumi.Input<String?>? privateKey;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ID assigned to your Apple developer account team. This value is provided on the Membership page. Required if using Key credentials.
  final pulumi.Input<String?>? teamId;
  /// `.p8` file that you download from your Apple developer account when you create an authentication key. Required if using Key credentials.
  final pulumi.Input<String?>? tokenKey;
  /// ID assigned to your signing key. To find this value, choose Certificates, IDs & Profiles, and choose your key in the Keys section. Required if using Key credentials.
  final pulumi.Input<String?>? tokenKeyId;

  /// Creates a new [ApnsSandboxChannelArgs].
  /// [applicationId] Application ID.
  /// [bundleId] ID assigned to your iOS app. To find this value, choose Certificates, IDs & Profiles, choose App IDs in the Identifiers section, and choose your app. Required if using Key credentials.
  /// [certificate] Pem encoded TLS Certificate from Apple. Required if using Certificate credentials.
  /// [defaultAuthenticationMethod] Default authentication method used for APNs Sandbox. __NOTE__: AWS End User Messaging uses this default for every APNs push notification that you send using the console. You can override the default when you send a message programmatically using the AWS End User Messaging API, the AWS CLI, or an AWS SDK. If your default authentication type fails, AWS End User Messaging doesn't attempt to use the other authentication type.
  /// [enabled] Whether the channel is enabled or disabled. Defaults to `true`.
  /// [privateKey] Certificate Private Key file (ie. `.key` file). Required if using Certificate credentials.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [teamId] ID assigned to your Apple developer account team. This value is provided on the Membership page. Required if using Key credentials.
  /// [tokenKey] `.p8` file that you download from your Apple developer account when you create an authentication key. Required if using Key credentials.
  /// [tokenKeyId] ID assigned to your signing key. To find this value, choose Certificates, IDs & Profiles, and choose your key in the Keys section. Required if using Key credentials.
  const ApnsSandboxChannelArgs({
    required this.applicationId,
    this.bundleId,
    this.certificate,
    this.defaultAuthenticationMethod,
    this.enabled,
    this.privateKey,
    this.region,
    this.teamId,
    this.tokenKey,
    this.tokenKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'bundleId': ?bundleId,
      'certificate': ?certificate,
      'defaultAuthenticationMethod': ?defaultAuthenticationMethod,
      'enabled': ?enabled,
      'privateKey': ?privateKey,
      'region': ?region,
      'teamId': ?teamId,
      'tokenKey': ?tokenKey,
      'tokenKeyId': ?tokenKeyId,
    };
  }

  factory ApnsSandboxChannelArgs.fromMap(Map<String, dynamic> map) {
    return ApnsSandboxChannelArgs(
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      bundleId: (() { final guardedValue = map['bundleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultAuthenticationMethod: (() { final guardedValue = map['defaultAuthenticationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      teamId: (() { final guardedValue = map['teamId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenKey: (() { final guardedValue = map['tokenKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenKeyId: (() { final guardedValue = map['tokenKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

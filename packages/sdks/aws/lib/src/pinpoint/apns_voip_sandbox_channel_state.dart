// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApnsVoipSandboxChannel resources.
class ApnsVoipSandboxChannelState {
  /// The application ID.
  final pulumi.Input<String>? applicationId;
  /// The ID assigned to your iOS app. To find this value, choose Certificates, IDs & Profiles, choose App IDs in the Identifiers section, and choose your app.
  final pulumi.Input<String>? bundleId;
  /// The pem encoded TLS Certificate from Apple.
  final pulumi.Input<String>? certificate;
  /// The default authentication method used for APNs.
  /// __NOTE__: Amazon Pinpoint uses this default for every APNs push notification that you send using the console.
  /// You can override the default when you send a message programmatically using the Amazon Pinpoint API, the AWS CLI, or an AWS SDK.
  /// If your default authentication type fails, Amazon Pinpoint doesn't attempt to use the other authentication type.
  ///
  /// One of the following sets of credentials is also required.
  ///
  /// If you choose to use __Certificate credentials__ you will have to provide:
  final pulumi.Input<String>? defaultAuthenticationMethod;
  /// Whether the channel is enabled or disabled. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The Certificate Private Key file (ie. `.key` file).
  ///
  /// If you choose to use __Key credentials__ you will have to provide:
  final pulumi.Input<String>? privateKey;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID assigned to your Apple developer account team. This value is provided on the Membership page.
  final pulumi.Input<String>? teamId;
  /// The `.p8` file that you download from your Apple developer account when you create an authentication key.
  final pulumi.Input<String>? tokenKey;
  /// The ID assigned to your signing key. To find this value, choose Certificates, IDs & Profiles, and choose your key in the Keys section.
  final pulumi.Input<String>? tokenKeyId;

  /// Creates a new [ApnsVoipSandboxChannelState].
  /// [applicationId] The application ID.
  /// [bundleId] The ID assigned to your iOS app. To find this value, choose Certificates, IDs & Profiles, choose App IDs in the Identifiers section, and choose your app.
  /// [certificate] The pem encoded TLS Certificate from Apple.
  /// [defaultAuthenticationMethod] The default authentication method used for APNs.
  /// [enabled] Whether the channel is enabled or disabled. Defaults to `true`.
  /// [privateKey] The Certificate Private Key file (ie. `.key` file).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [teamId] The ID assigned to your Apple developer account team. This value is provided on the Membership page.
  /// [tokenKey] The `.p8` file that you download from your Apple developer account when you create an authentication key.
  /// [tokenKeyId] The ID assigned to your signing key. To find this value, choose Certificates, IDs & Profiles, and choose your key in the Keys section.
  const ApnsVoipSandboxChannelState({
    this.applicationId,
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
      'applicationId': ?applicationId,
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

  factory ApnsVoipSandboxChannelState.fromMap(Map<String, dynamic> map) {
    return ApnsVoipSandboxChannelState(
      applicationId: (() { final guardedValue = map['applicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
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


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pinpoint_apns_voip_sandbox_channel_apns_voip_sandbox_channel_args_doc}
/// The set of arguments for ApnsVoipSandboxChannel.
/// {@endtemplate}
/// {@macro pulumi_pinpoint_apns_voip_sandbox_channel_apns_voip_sandbox_channel_args_doc}
class ApnsVoipSandboxChannelArgs {
  /// The application ID.
  final pulumi.Input<String> applicationId;

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

  /// Creates a new [ApnsVoipSandboxChannelArgs].
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
  ApnsVoipSandboxChannelArgs({
    required String applicationId,
    String? bundleId,
    String? certificate,
    String? defaultAuthenticationMethod,
    bool? enabled,
    String? privateKey,
    String? region,
    String? teamId,
    String? tokenKey,
    String? tokenKeyId,
  })  : applicationId = pulumi.Input.asInput<String>(applicationId),
        bundleId = pulumi.Input.asOptionalInput<String>(bundleId),
        certificate = pulumi.Input.asOptionalInput<String>(certificate),
        defaultAuthenticationMethod =
            pulumi.Input.asOptionalInput<String>(defaultAuthenticationMethod),
        enabled = pulumi.Input.asOptionalInput<bool>(enabled),
        privateKey = pulumi.Input.asOptionalInput<String>(privateKey),
        region = pulumi.Input.asOptionalInput<String>(region),
        teamId = pulumi.Input.asOptionalInput<String>(teamId),
        tokenKey = pulumi.Input.asOptionalInput<String>(tokenKey),
        tokenKeyId = pulumi.Input.asOptionalInput<String>(tokenKeyId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationId'] = applicationId;
    final bundleIdValue = bundleId;
    if (bundleIdValue != null) {
      map['bundleId'] = bundleIdValue;
    }
    final certificateValue = certificate;
    if (certificateValue != null) {
      map['certificate'] = certificateValue;
    }
    final defaultAuthenticationMethodValue = defaultAuthenticationMethod;
    if (defaultAuthenticationMethodValue != null) {
      map['defaultAuthenticationMethod'] = defaultAuthenticationMethodValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final privateKeyValue = privateKey;
    if (privateKeyValue != null) {
      map['privateKey'] = privateKeyValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final teamIdValue = teamId;
    if (teamIdValue != null) {
      map['teamId'] = teamIdValue;
    }
    final tokenKeyValue = tokenKey;
    if (tokenKeyValue != null) {
      map['tokenKey'] = tokenKeyValue;
    }
    final tokenKeyIdValue = tokenKeyId;
    if (tokenKeyIdValue != null) {
      map['tokenKeyId'] = tokenKeyIdValue;
    }
    return map;
  }

  factory ApnsVoipSandboxChannelArgs.fromMap(Map<String, dynamic> map) {
    return ApnsVoipSandboxChannelArgs(
      applicationId: map['applicationId'] as String,
      bundleId: map['bundleId'] == null ? null : map['bundleId'] as String,
      certificate:
          map['certificate'] == null ? null : map['certificate'] as String,
      defaultAuthenticationMethod: map['defaultAuthenticationMethod'] == null
          ? null
          : map['defaultAuthenticationMethod'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      privateKey:
          map['privateKey'] == null ? null : map['privateKey'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      teamId: map['teamId'] == null ? null : map['teamId'] as String,
      tokenKey: map['tokenKey'] == null ? null : map['tokenKey'] as String,
      tokenKeyId:
          map['tokenKeyId'] == null ? null : map['tokenKeyId'] as String,
    );
  }
}

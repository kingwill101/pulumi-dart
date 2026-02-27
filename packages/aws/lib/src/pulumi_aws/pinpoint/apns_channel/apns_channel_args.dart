// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ApnsChannel.
class ApnsChannelArgs {
  /// The application ID.
  final Input<String> applicationId;

  /// The ID assigned to your iOS app. To find this value, choose Certificates, IDs & Profiles, choose App IDs in the Identifiers section, and choose your app.
  final Input<String>? bundleId;

  /// The pem encoded TLS Certificate from Apple.
  final Input<String>? certificate;

  /// The default authentication method used for APNs.
  /// __NOTE__: Amazon Pinpoint uses this default for every APNs push notification that you send using the console.
  /// You can override the default when you send a message programmatically using the Amazon Pinpoint API, the AWS CLI, or an AWS SDK.
  /// If your default authentication type fails, Amazon Pinpoint doesn't attempt to use the other authentication type.
  ///
  /// One of the following sets of credentials is also required.
  ///
  /// If you choose to use __Certificate credentials__ you will have to provide:
  final Input<String>? defaultAuthenticationMethod;

  /// Whether the channel is enabled or disabled. Defaults to `true`.
  final Input<bool>? enabled;

  /// The Certificate Private Key file (ie. `.key` file).
  ///
  /// If you choose to use __Key credentials__ you will have to provide:
  final Input<String>? privateKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ID assigned to your Apple developer account team. This value is provided on the Membership page.
  final Input<String>? teamId;

  /// The `.p8` file that you download from your Apple developer account when you create an authentication key.
  final Input<String>? tokenKey;

  /// The ID assigned to your signing key. To find this value, choose Certificates, IDs & Profiles, and choose your key in the Keys section.
  final Input<String>? tokenKeyId;

  ApnsChannelArgs({
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

  factory ApnsChannelArgs.fromMap(Map<String, dynamic> map) {
    return ApnsChannelArgs(
      applicationId: Input.asInput<String>(map['applicationId']),
      bundleId: Input.asOptionalInput<String>(map['bundleId']),
      certificate: Input.asOptionalInput<String>(map['certificate']),
      defaultAuthenticationMethod:
          Input.asOptionalInput<String>(map['defaultAuthenticationMethod']),
      enabled: Input.asOptionalInput<bool>(map['enabled']),
      privateKey: Input.asOptionalInput<String>(map['privateKey']),
      region: Input.asOptionalInput<String>(map['region']),
      teamId: Input.asOptionalInput<String>(map['teamId']),
      tokenKey: Input.asOptionalInput<String>(map['tokenKey']),
      tokenKeyId: Input.asOptionalInput<String>(map['tokenKeyId']),
    );
  }
}

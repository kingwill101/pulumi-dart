// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_security_token_service_preferences_security_token_service_preferences_args_doc}
/// The set of arguments for SecurityTokenServicePreferences.
/// {@endtemplate}
/// {@macro pulumi_iam_security_token_service_preferences_security_token_service_preferences_args_doc}
class SecurityTokenServicePreferencesArgs {
  /// The version of the STS global endpoint token. Valid values: `v1Token`, `v2Token`.
  final pulumi.Input<String> globalEndpointTokenVersion;

  /// Creates a new [SecurityTokenServicePreferencesArgs].
  /// [globalEndpointTokenVersion] The version of the STS global endpoint token. Valid values: `v1Token`, `v2Token`.
  SecurityTokenServicePreferencesArgs({
    required this.globalEndpointTokenVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalEndpointTokenVersion': globalEndpointTokenVersion,
    };
  }

  factory SecurityTokenServicePreferencesArgs.fromMap(Map<String, dynamic> map) {
    return SecurityTokenServicePreferencesArgs(
      globalEndpointTokenVersion: (map['globalEndpointTokenVersion'] as String).input(),
    );
  }
}


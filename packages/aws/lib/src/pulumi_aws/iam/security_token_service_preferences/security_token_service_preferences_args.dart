// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for SecurityTokenServicePreferences.
class SecurityTokenServicePreferencesArgs {
  /// The version of the STS global endpoint token. Valid values: `v1Token`, `v2Token`.
  final pulumi.Input<String> globalEndpointTokenVersion;

  SecurityTokenServicePreferencesArgs({
    required this.globalEndpointTokenVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['globalEndpointTokenVersion'] = globalEndpointTokenVersion;
    return map;
  }

  factory SecurityTokenServicePreferencesArgs.fromMap(
      Map<String, dynamic> map) {
    return SecurityTokenServicePreferencesArgs(
      globalEndpointTokenVersion:
          pulumi.Input.asInput<String>(map['globalEndpointTokenVersion']),
    );
  }
}

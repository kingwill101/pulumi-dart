// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for EnvironmentAddonsConfig.
class EnvironmentAddonsConfigArgs {
  /// Flag to enable/disable Analytics.
  final Input<bool>? analyticsEnabled;

  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}`.
  final Input<String> envId;

  EnvironmentAddonsConfigArgs({
    this.analyticsEnabled,
    required this.envId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final analyticsEnabledValue = analyticsEnabled;
    if (analyticsEnabledValue != null) {
      map['analyticsEnabled'] = analyticsEnabledValue;
    }
    map['envId'] = envId;
    return map;
  }

  factory EnvironmentAddonsConfigArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentAddonsConfigArgs(
      analyticsEnabled: Input.asOptionalInput<bool>(map['analyticsEnabled']),
      envId: Input.asInput<String>(map['envId']),
    );
  }
}

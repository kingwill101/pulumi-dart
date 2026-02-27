// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for EnvironmentAddonsConfig.
class EnvironmentAddonsConfigArgs {
  /// Flag to enable/disable Analytics.
  final pulumi.Input<bool>? analyticsEnabled;

  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}`.
  final pulumi.Input<String> envId;

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
      analyticsEnabled:
          pulumi.Input.asOptionalInput<bool>(map['analyticsEnabled']),
      envId: pulumi.Input.asInput<String>(map['envId']),
    );
  }
}

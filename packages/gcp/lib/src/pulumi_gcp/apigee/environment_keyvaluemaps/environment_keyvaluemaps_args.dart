// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for EnvironmentKeyvaluemaps.
class EnvironmentKeyvaluemapsArgs {
  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}`.
  final pulumi.Input<String> envId;

  /// Required. ID of the key value map.
  final pulumi.Input<String>? name;

  EnvironmentKeyvaluemapsArgs({
    required this.envId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['envId'] = envId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory EnvironmentKeyvaluemapsArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentKeyvaluemapsArgs(
      envId: pulumi.Input.asInput<String>(map['envId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
    );
  }
}

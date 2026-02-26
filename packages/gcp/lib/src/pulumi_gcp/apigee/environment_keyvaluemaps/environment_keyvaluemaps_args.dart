// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for EnvironmentKeyvaluemaps.
class EnvironmentKeyvaluemapsArgs {
  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}`.
  final Input<String> envId;

  /// Required. ID of the key value map.
  final Input<String>? name;

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
      envId: Input.asInput<String>(map['envId']),
      name: Input.asOptionalInput<String>(map['name']),
    );
  }
}

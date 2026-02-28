// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_environment_keyvaluemaps_environment_keyvaluemaps_args_doc}
/// The set of arguments for EnvironmentKeyvaluemaps.
/// {@endtemplate}
/// {@macro pulumi_apigee_environment_keyvaluemaps_environment_keyvaluemaps_args_doc}
class EnvironmentKeyvaluemapsArgs {
  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}`.
  final pulumi.Input<String> envId;

  /// Required. ID of the key value map.
  final pulumi.Input<String>? name;

  /// Creates a new [EnvironmentKeyvaluemapsArgs].
  /// [envId] The Apigee environment group associated with the Apigee environment,
  /// [name] Required. ID of the key value map.
  EnvironmentKeyvaluemapsArgs({
    required String envId,
    String? name,
  })  : envId = pulumi.Input.asInput<String>(envId),
        name = pulumi.Input.asOptionalInput<String>(name);

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
      envId: map['envId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

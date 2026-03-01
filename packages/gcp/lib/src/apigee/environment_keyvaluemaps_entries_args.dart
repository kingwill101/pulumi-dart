// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_environment_keyvaluemaps_entries_environment_keyvaluemaps_entries_args_doc}
/// The set of arguments for EnvironmentKeyvaluemapsEntries.
/// {@endtemplate}
/// {@macro pulumi_apigee_environment_keyvaluemaps_entries_environment_keyvaluemaps_entries_args_doc}
class EnvironmentKeyvaluemapsEntriesArgs {
  /// The Apigee environment keyvalumaps Id associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}/keyvaluemaps/{{keyvaluemap_name}}`.
  final pulumi.Input<String> envKeyvaluemapId;
  /// Required. Resource URI that can be used to identify the scope of the key value map entries.
  final pulumi.Input<String>? name;
  /// Required. Data or payload that is being retrieved and associated with the unique key.
  final pulumi.Input<String> value;

  /// Creates a new [EnvironmentKeyvaluemapsEntriesArgs].
  /// [envKeyvaluemapId] The Apigee environment keyvalumaps Id associated with the Apigee environment,
  /// [name] Required. Resource URI that can be used to identify the scope of the key value map entries.
  /// [value] Required. Data or payload that is being retrieved and associated with the unique key.
  EnvironmentKeyvaluemapsEntriesArgs({
    required String envKeyvaluemapId,
    String? name,
    required String value,
  }) :
      envKeyvaluemapId = pulumi.Input.asInput<String>(envKeyvaluemapId),
      name = pulumi.Input.asOptionalInput<String>(name),
      value = pulumi.Input.asInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'envKeyvaluemapId': envKeyvaluemapId,
      'name': ?name,
      'value': value,
    };
  }

  factory EnvironmentKeyvaluemapsEntriesArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentKeyvaluemapsEntriesArgs(
      envKeyvaluemapId: map['envKeyvaluemapId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] as String,
    );
  }
}


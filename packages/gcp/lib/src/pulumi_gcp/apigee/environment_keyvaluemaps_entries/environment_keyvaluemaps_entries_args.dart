// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for EnvironmentKeyvaluemapsEntries.
class EnvironmentKeyvaluemapsEntriesArgs {
  /// The Apigee environment keyvalumaps Id associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}/keyvaluemaps/{{keyvaluemap_name}}`.
  final Input<String> envKeyvaluemapId;

  /// Required. Resource URI that can be used to identify the scope of the key value map entries.
  final Input<String>? name;

  /// Required. Data or payload that is being retrieved and associated with the unique key.
  final Input<String> value;

  EnvironmentKeyvaluemapsEntriesArgs({
    required this.envKeyvaluemapId,
    this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['envKeyvaluemapId'] = envKeyvaluemapId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['value'] = value;
    return map;
  }

  factory EnvironmentKeyvaluemapsEntriesArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentKeyvaluemapsEntriesArgs(
      envKeyvaluemapId: Input.asInput<String>(map['envKeyvaluemapId']),
      name: Input.asOptionalInput<String>(map['name']),
      value: Input.asInput<String>(map['value']),
    );
  }
}

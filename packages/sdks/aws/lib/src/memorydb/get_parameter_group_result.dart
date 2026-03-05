// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_parameter_group_parameter.dart';

/// Result data returned by getParameterGroup.
class GetParameterGroupResult {
  /// ARN of the parameter group.
  final String arn;

  /// Description of the parameter group.
  final String description;

  /// Engine version that the parameter group can be used with.
  final String family;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Name of the parameter.
  final String name;

  /// Set of user-defined MemoryDB parameters applied by the parameter group.
  final List<GetParameterGroupParameter> parameters;
  final String region;

  /// Map of tags assigned to the parameter group.
  final Map<String, String> tags;

  /// Creates a new [GetParameterGroupResult].
  /// [arn] ARN of the parameter group.
  /// [description] Description of the parameter group.
  /// [family] Engine version that the parameter group can be used with.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Name of the parameter.
  /// [parameters] Set of user-defined MemoryDB parameters applied by the parameter group.
  /// [region] Required.
  /// [tags] Map of tags assigned to the parameter group.
  GetParameterGroupResult({
    required this.arn,
    required this.description,
    required this.family,
    required this.id,
    required this.name,
    required this.parameters,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'description': description,
      'family': family,
      'id': id,
      'name': name,
      'parameters':
          pulumi.Input.encodeList<
            GetParameterGroupParameter,
            Map<String, dynamic>
          >(parameters, (value) => value.toMap()),
      'region': region,
      'tags': tags,
    };
  }

  factory GetParameterGroupResult.fromMap(Map<String, dynamic> map) {
    return GetParameterGroupResult(
      arn: map['arn'] as String,
      description: map['description'] as String,
      family: map['family'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      parameters: pulumi.Input.decodeList<GetParameterGroupParameter>(
        map['parameters']!,
        (value) => GetParameterGroupParameter.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

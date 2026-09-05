// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_parameter_group_parameter.dart';

/// Result data returned by getParameterGroup.
class GetParameterGroupResult {
  /// ARN of the parameter group.
  final String? arn;
  /// Description of the parameter group.
  final String? description;
  /// Engine version that the parameter group can be used with.
  final String? family;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Name of the parameter.
  final String? name;
  /// Set of user-defined MemoryDB parameters applied by the parameter group.
  final List<GetParameterGroupParameter>? parameters;
  final String? region;
  /// Map of tags assigned to the parameter group.
  final Map<String, String>? tags;

  /// Creates a new [GetParameterGroupResult].
  /// [arn] ARN of the parameter group.
  /// [description] Description of the parameter group.
  /// [family] Engine version that the parameter group can be used with.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Name of the parameter.
  /// [parameters] Set of user-defined MemoryDB parameters applied by the parameter group.
  /// [region] Optional.
  /// [tags] Map of tags assigned to the parameter group.
  const GetParameterGroupResult({
    this.arn,
    this.description,
    this.family,
    this.id,
    this.name,
    this.parameters,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'family': ?family,
      'id': ?id,
      'name': ?name,
      'parameters': ?(() { final guardedValue = parameters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetParameterGroupParameter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetParameterGroupResult.fromMap(Map<String, dynamic> map) {
    return GetParameterGroupResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      family: (() { final guardedValue = map['family']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetParameterGroupParameter>(guardedValue, (value) => GetParameterGroupParameter.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}

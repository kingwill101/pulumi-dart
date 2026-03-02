// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_unit_configuration.dart';
import 'string_string_key_value_pair.dart';

/// Inference pool configuration
class InferencePool {
  /// Description of the resource.
  final pulumi.Input<String>? description;
  /// Property dictionary. Properties can be added, but not removed or altered.
  final pulumi.Input<List<StringStringKeyValuePair>>? properties;
  /// Gets or sets ScaleUnitConfiguration for the inference pool. Used if PoolType=ScaleUnit.
  final pulumi.Input<ScaleUnitConfiguration>? scaleUnitConfiguration;

  /// Creates a new [InferencePool].
  /// [description] Description of the resource.
  /// [properties] Property dictionary. Properties can be added, but not removed or altered.
  /// [scaleUnitConfiguration] Gets or sets ScaleUnitConfiguration for the inference pool. Used if PoolType=ScaleUnit.
  InferencePool({
    this.description,
    this.properties,
    this.scaleUnitConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'properties': ?pulumi.Input.mapOptionalInputValue<List<StringStringKeyValuePair>, List<Map<String, dynamic>>>(properties, (value) => pulumi.Input.encodeList<StringStringKeyValuePair, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scaleUnitConfiguration': ?pulumi.Input.mapOptionalInputValue<ScaleUnitConfiguration, Map<String, dynamic>>(scaleUnitConfiguration, (value) => value.toMap()),
    };
  }

  factory InferencePool.fromMap(Map<String, dynamic> map) {
    return InferencePool(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      properties: map['properties'] == null ? null : (pulumi.Input.decodeList<StringStringKeyValuePair>(map['properties'], (value) => StringStringKeyValuePair.fromMap((value as Map).cast<String, dynamic>()))).input(),
      scaleUnitConfiguration: map['scaleUnitConfiguration'] == null ? null : (ScaleUnitConfiguration.fromMap((map['scaleUnitConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_unit_configuration.dart';
import 'string_string_key_value_pair.dart';

/// Inference pool configuration
class InferencePool {
  /// Description of the resource.
  final String? description;
  /// Property dictionary. Properties can be added, but not removed or altered.
  final List<StringStringKeyValuePair>? properties;
  /// Gets or sets ScaleUnitConfiguration for the inference pool. Used if PoolType=ScaleUnit.
  final ScaleUnitConfiguration? scaleUnitConfiguration;

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
      'properties': ?properties == null ? null : pulumi.Input.encodeList<StringStringKeyValuePair, Map<String, dynamic>>(properties!, (value) => value.toMap()),
      'scaleUnitConfiguration': ?scaleUnitConfiguration == null ? null : scaleUnitConfiguration!.toMap(),
    };
  }

  factory InferencePool.fromMap(Map<String, dynamic> map) {
    return InferencePool(
      description: map['description'] == null ? null : map['description'] as String,
      properties: map['properties'] == null ? null : pulumi.Input.decodeList<StringStringKeyValuePair>(map['properties'], (value) => StringStringKeyValuePair.fromMap((value as Map).cast<String, dynamic>())),
      scaleUnitConfiguration: map['scaleUnitConfiguration'] == null ? null : ScaleUnitConfiguration.fromMap((map['scaleUnitConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}


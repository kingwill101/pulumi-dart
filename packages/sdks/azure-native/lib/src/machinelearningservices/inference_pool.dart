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
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            List<StringStringKeyValuePair>,
            List<Map<String, dynamic>>
          >(
            properties,
            (value) =>
                pulumi.Input.encodeList<
                  StringStringKeyValuePair,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'scaleUnitConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            ScaleUnitConfiguration,
            Map<String, dynamic>
          >(scaleUnitConfiguration, (value) => value.toMap()),
    };
  }

  factory InferencePool.fromMap(Map<String, dynamic> map) {
    return InferencePool(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<StringStringKeyValuePair>(
            guardedValue,
            (value) => StringStringKeyValuePair.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      scaleUnitConfiguration: (() {
        final guardedValue = map['scaleUnitConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ScaleUnitConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}

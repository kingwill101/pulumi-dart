// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_unit_configuration_response.dart';
import 'string_string_key_value_pair_response.dart';

/// Inference pool configuration
class InferencePoolResponse {
  /// Description of the resource.
  final pulumi.Input<String>? description;
  /// Property dictionary. Properties can be added, but not removed or altered.
  final pulumi.Input<List<StringStringKeyValuePairResponse>>? properties;
  /// Provisioning state for the pool.
  final pulumi.Input<String> provisioningState;
  /// Gets or sets ScaleUnitConfiguration for the inference pool. Used if PoolType=ScaleUnit.
  final pulumi.Input<ScaleUnitConfigurationResponse>? scaleUnitConfiguration;

  /// Creates a new [InferencePoolResponse].
  /// [description] Description of the resource.
  /// [properties] Property dictionary. Properties can be added, but not removed or altered.
  /// [provisioningState] Provisioning state for the pool.
  /// [scaleUnitConfiguration] Gets or sets ScaleUnitConfiguration for the inference pool. Used if PoolType=ScaleUnit.
  InferencePoolResponse({
    this.description,
    this.properties,
    required this.provisioningState,
    this.scaleUnitConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'properties': ?pulumi.Input.mapOptionalInputValue<List<StringStringKeyValuePairResponse>, List<Map<String, dynamic>>>(properties, (value) => pulumi.Input.encodeList<StringStringKeyValuePairResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'scaleUnitConfiguration': ?pulumi.Input.mapOptionalInputValue<ScaleUnitConfigurationResponse, Map<String, dynamic>>(scaleUnitConfiguration, (value) => value.toMap()),
    };
  }

  factory InferencePoolResponse.fromMap(Map<String, dynamic> map) {
    return InferencePoolResponse(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      properties: map['properties'] == null ? null : (pulumi.Input.decodeList<StringStringKeyValuePairResponse>(map['properties']!, (value) => StringStringKeyValuePairResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      scaleUnitConfiguration: map['scaleUnitConfiguration'] == null ? null : (ScaleUnitConfigurationResponse.fromMap((map['scaleUnitConfiguration']! as Map).cast<String, dynamic>())).input(),
    );
  }
}


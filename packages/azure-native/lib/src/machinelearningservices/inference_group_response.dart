// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_environment_configuration_response.dart';
import 'group_model_configuration_response.dart';
import 'string_string_key_value_pair_response.dart';

/// Inference group configuration
class InferenceGroupResponse {
  /// Description of the resource.
  final String? description;
  /// Gets or sets environment configuration for the inference group. Used if PoolType=ScaleUnit.
  final GroupEnvironmentConfigurationResponse? environmentConfiguration;
  /// Gets or sets model configuration for the inference group. Used if PoolType=ScaleUnit.
  final GroupModelConfigurationResponse? modelConfiguration;
  /// Gets or sets compute instance type.
  final String? nodeSkuType;
  /// Property dictionary. Properties can be added, but not removed or altered.
  final List<StringStringKeyValuePairResponse>? properties;
  /// Provisioning state for the inference group.
  final String provisioningState;
  /// Gets or sets Scale Unit size.
  final int? scaleUnitSize;

  /// Creates a new [InferenceGroupResponse].
  /// [description] Description of the resource.
  /// [environmentConfiguration] Gets or sets environment configuration for the inference group. Used if PoolType=ScaleUnit.
  /// [modelConfiguration] Gets or sets model configuration for the inference group. Used if PoolType=ScaleUnit.
  /// [nodeSkuType] Gets or sets compute instance type.
  /// [properties] Property dictionary. Properties can be added, but not removed or altered.
  /// [provisioningState] Provisioning state for the inference group.
  /// [scaleUnitSize] Gets or sets Scale Unit size.
  InferenceGroupResponse({
    this.description,
    this.environmentConfiguration,
    this.modelConfiguration,
    this.nodeSkuType,
    this.properties,
    required this.provisioningState,
    this.scaleUnitSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'environmentConfiguration': ?environmentConfiguration == null ? null : environmentConfiguration!.toMap(),
      'modelConfiguration': ?modelConfiguration == null ? null : modelConfiguration!.toMap(),
      'nodeSkuType': ?nodeSkuType,
      'properties': ?properties == null ? null : pulumi.Input.encodeList<StringStringKeyValuePairResponse, Map<String, dynamic>>(properties!, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'scaleUnitSize': ?scaleUnitSize,
    };
  }

  factory InferenceGroupResponse.fromMap(Map<String, dynamic> map) {
    return InferenceGroupResponse(
      description: map['description'] == null ? null : map['description'] as String,
      environmentConfiguration: map['environmentConfiguration'] == null ? null : GroupEnvironmentConfigurationResponse.fromMap((map['environmentConfiguration'] as Map).cast<String, dynamic>()),
      modelConfiguration: map['modelConfiguration'] == null ? null : GroupModelConfigurationResponse.fromMap((map['modelConfiguration'] as Map).cast<String, dynamic>()),
      nodeSkuType: map['nodeSkuType'] == null ? null : map['nodeSkuType'] as String,
      properties: map['properties'] == null ? null : pulumi.Input.decodeList<StringStringKeyValuePairResponse>(map['properties'], (value) => StringStringKeyValuePairResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      scaleUnitSize: map['scaleUnitSize'] == null ? null : map['scaleUnitSize'] as int,
    );
  }
}


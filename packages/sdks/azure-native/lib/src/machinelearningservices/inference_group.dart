// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_environment_configuration.dart';
import 'group_model_configuration.dart';
import 'string_string_key_value_pair.dart';

/// Inference group configuration
class InferenceGroup {
  /// Description of the resource.
  final String? description;
  /// Gets or sets environment configuration for the inference group. Used if PoolType=ScaleUnit.
  final GroupEnvironmentConfiguration? environmentConfiguration;
  /// Gets or sets model configuration for the inference group. Used if PoolType=ScaleUnit.
  final GroupModelConfiguration? modelConfiguration;
  /// Gets or sets compute instance type.
  final String? nodeSkuType;
  /// Property dictionary. Properties can be added, but not removed or altered.
  final List<StringStringKeyValuePair>? properties;
  /// Gets or sets Scale Unit size.
  final int? scaleUnitSize;

  /// Creates a new [InferenceGroup].
  /// [description] Description of the resource.
  /// [environmentConfiguration] Gets or sets environment configuration for the inference group. Used if PoolType=ScaleUnit.
  /// [modelConfiguration] Gets or sets model configuration for the inference group. Used if PoolType=ScaleUnit.
  /// [nodeSkuType] Gets or sets compute instance type.
  /// [properties] Property dictionary. Properties can be added, but not removed or altered.
  /// [scaleUnitSize] Gets or sets Scale Unit size.
  InferenceGroup({
    this.description,
    this.environmentConfiguration,
    this.modelConfiguration,
    this.nodeSkuType,
    this.properties,
    this.scaleUnitSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'environmentConfiguration': ?environmentConfiguration == null ? null : environmentConfiguration!.toMap(),
      'modelConfiguration': ?modelConfiguration == null ? null : modelConfiguration!.toMap(),
      'nodeSkuType': ?nodeSkuType,
      'properties': ?properties == null ? null : pulumi.Input.encodeList<StringStringKeyValuePair, Map<String, dynamic>>(properties!, (value) => value.toMap()),
      'scaleUnitSize': ?scaleUnitSize,
    };
  }

  factory InferenceGroup.fromMap(Map<String, dynamic> map) {
    return InferenceGroup(
      description: map['description'] == null ? null : map['description'] as String,
      environmentConfiguration: map['environmentConfiguration'] == null ? null : GroupEnvironmentConfiguration.fromMap((map['environmentConfiguration'] as Map).cast<String, dynamic>()),
      modelConfiguration: map['modelConfiguration'] == null ? null : GroupModelConfiguration.fromMap((map['modelConfiguration'] as Map).cast<String, dynamic>()),
      nodeSkuType: map['nodeSkuType'] == null ? null : map['nodeSkuType'] as String,
      properties: map['properties'] == null ? null : pulumi.Input.decodeList<StringStringKeyValuePair>(map['properties'], (value) => StringStringKeyValuePair.fromMap((value as Map).cast<String, dynamic>())),
      scaleUnitSize: map['scaleUnitSize'] == null ? null : map['scaleUnitSize'] as int,
    );
  }
}


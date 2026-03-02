// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_environment_configuration.dart';
import 'group_model_configuration.dart';
import 'string_string_key_value_pair.dart';

/// Inference group configuration
class InferenceGroup {
  /// Description of the resource.
  final pulumi.Input<String>? description;
  /// Gets or sets environment configuration for the inference group. Used if PoolType=ScaleUnit.
  final pulumi.Input<GroupEnvironmentConfiguration>? environmentConfiguration;
  /// Gets or sets model configuration for the inference group. Used if PoolType=ScaleUnit.
  final pulumi.Input<GroupModelConfiguration>? modelConfiguration;
  /// Gets or sets compute instance type.
  final pulumi.Input<String>? nodeSkuType;
  /// Property dictionary. Properties can be added, but not removed or altered.
  final pulumi.Input<List<StringStringKeyValuePair>>? properties;
  /// Gets or sets Scale Unit size.
  final pulumi.Input<int>? scaleUnitSize;

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
      'environmentConfiguration': ?pulumi.Input.mapOptionalInputValue<GroupEnvironmentConfiguration, Map<String, dynamic>>(environmentConfiguration, (value) => value.toMap()),
      'modelConfiguration': ?pulumi.Input.mapOptionalInputValue<GroupModelConfiguration, Map<String, dynamic>>(modelConfiguration, (value) => value.toMap()),
      'nodeSkuType': ?nodeSkuType,
      'properties': ?pulumi.Input.mapOptionalInputValue<List<StringStringKeyValuePair>, List<Map<String, dynamic>>>(properties, (value) => pulumi.Input.encodeList<StringStringKeyValuePair, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scaleUnitSize': ?scaleUnitSize,
    };
  }

  factory InferenceGroup.fromMap(Map<String, dynamic> map) {
    return InferenceGroup(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      environmentConfiguration: map['environmentConfiguration'] == null ? null : (GroupEnvironmentConfiguration.fromMap((map['environmentConfiguration']! as Map).cast<String, dynamic>())).input(),
      modelConfiguration: map['modelConfiguration'] == null ? null : (GroupModelConfiguration.fromMap((map['modelConfiguration']! as Map).cast<String, dynamic>())).input(),
      nodeSkuType: map['nodeSkuType'] == null ? null : (map['nodeSkuType']! as String).input(),
      properties: map['properties'] == null ? null : (pulumi.Input.decodeList<StringStringKeyValuePair>(map['properties']!, (value) => StringStringKeyValuePair.fromMap((value as Map).cast<String, dynamic>()))).input(),
      scaleUnitSize: map['scaleUnitSize'] == null ? null : (map['scaleUnitSize']! as int).input(),
    );
  }
}


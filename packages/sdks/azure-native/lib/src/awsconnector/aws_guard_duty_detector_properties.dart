// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cfndata_source_configurations.dart';
import 'cfnfeature_configuration.dart';
import 'tag_item.dart';

/// Definition of awsGuardDutyDetector
class AwsGuardDutyDetectorProperties {
  /// Property dataSources
  final pulumi.Input<CFNDataSourceConfigurations>? dataSources;
  /// Property enable
  final pulumi.Input<bool>? enable;
  /// Property features
  final pulumi.Input<List<CFNFeatureConfiguration>>? features;
  /// Property findingPublishingFrequency
  final pulumi.Input<String>? findingPublishingFrequency;
  /// Property id
  final pulumi.Input<String>? id;
  /// Property tags
  final pulumi.Input<List<TagItem>>? tags;

  /// Creates a new [AwsGuardDutyDetectorProperties].
  /// [dataSources] Property dataSources
  /// [enable] Property enable
  /// [features] Property features
  /// [findingPublishingFrequency] Property findingPublishingFrequency
  /// [id] Property id
  /// [tags] Property tags
  AwsGuardDutyDetectorProperties({
    this.dataSources,
    this.enable,
    this.features,
    this.findingPublishingFrequency,
    this.id,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSources': ?pulumi.Input.mapOptionalInputValue<CFNDataSourceConfigurations, Map<String, dynamic>>(dataSources, (value) => value.toMap()),
      'enable': ?enable,
      'features': ?pulumi.Input.mapOptionalInputValue<List<CFNFeatureConfiguration>, List<Map<String, dynamic>>>(features, (value) => pulumi.Input.encodeList<CFNFeatureConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'findingPublishingFrequency': ?findingPublishingFrequency,
      'id': ?id,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<TagItem>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<TagItem, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AwsGuardDutyDetectorProperties.fromMap(Map<String, dynamic> map) {
    return AwsGuardDutyDetectorProperties(
      dataSources: map['dataSources'] == null ? null : (CFNDataSourceConfigurations.fromMap((map['dataSources']! as Map).cast<String, dynamic>())).input(),
      enable: map['enable'] == null ? null : (map['enable']! as bool).input(),
      features: map['features'] == null ? null : (pulumi.Input.decodeList<CFNFeatureConfiguration>(map['features']!, (value) => CFNFeatureConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      findingPublishingFrequency: map['findingPublishingFrequency'] == null ? null : (map['findingPublishingFrequency']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      tags: map['tags'] == null ? null : (pulumi.Input.decodeList<TagItem>(map['tags']!, (value) => TagItem.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


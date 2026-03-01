// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cfndata_source_configurations.dart';
import 'cfnfeature_configuration.dart';
import 'tag_item.dart';

/// Definition of awsGuardDutyDetector
class AwsGuardDutyDetectorProperties {
  /// Property dataSources
  final CFNDataSourceConfigurations? dataSources;
  /// Property enable
  final bool? enable;
  /// Property features
  final List<CFNFeatureConfiguration>? features;
  /// Property findingPublishingFrequency
  final String? findingPublishingFrequency;
  /// Property id
  final String? id;
  /// Property tags
  final List<TagItem>? tags;

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
      'dataSources': ?dataSources == null ? null : dataSources!.toMap(),
      'enable': ?enable,
      'features': ?features == null ? null : pulumi.Input.encodeList<CFNFeatureConfiguration, Map<String, dynamic>>(features!, (value) => value.toMap()),
      'findingPublishingFrequency': ?findingPublishingFrequency,
      'id': ?id,
      'tags': ?tags == null ? null : pulumi.Input.encodeList<TagItem, Map<String, dynamic>>(tags!, (value) => value.toMap()),
    };
  }

  factory AwsGuardDutyDetectorProperties.fromMap(Map<String, dynamic> map) {
    return AwsGuardDutyDetectorProperties(
      dataSources: map['dataSources'] == null ? null : CFNDataSourceConfigurations.fromMap((map['dataSources'] as Map).cast<String, dynamic>()),
      enable: map['enable'] == null ? null : map['enable'] as bool,
      features: map['features'] == null ? null : pulumi.Input.decodeList<CFNFeatureConfiguration>(map['features'], (value) => CFNFeatureConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      findingPublishingFrequency: map['findingPublishingFrequency'] == null ? null : map['findingPublishingFrequency'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<TagItem>(map['tags'], (value) => TagItem.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


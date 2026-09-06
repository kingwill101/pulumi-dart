// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cfndata_source_configurations.dart';
import 'cfnfeature_configuration.dart';
import 'tag_item.dart';

/// Definition of awsGuardDutyDetector
class AwsGuardDutyDetectorProperties {
  /// Property dataSources
  final pulumi.Input<CFNDataSourceConfigurations?>? dataSources;
  /// Property enable
  final pulumi.Input<bool?>? enable;
  /// Property features
  final pulumi.Input<List<CFNFeatureConfiguration>?>? features;
  /// Property findingPublishingFrequency
  final pulumi.Input<String?>? findingPublishingFrequency;
  /// Property id
  final pulumi.Input<String?>? id;
  /// Property tags
  final pulumi.Input<List<TagItem>?>? tags;

  /// Creates a new [AwsGuardDutyDetectorProperties].
  /// [dataSources] Property dataSources
  /// [enable] Property enable
  /// [features] Property features
  /// [findingPublishingFrequency] Property findingPublishingFrequency
  /// [id] Property id
  /// [tags] Property tags
  const AwsGuardDutyDetectorProperties({
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
      dataSources: (() { final guardedValue = map['dataSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CFNDataSourceConfigurations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      features: (() { final guardedValue = map['features']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CFNFeatureConfiguration>(guardedValue, (value) => CFNFeatureConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      findingPublishingFrequency: (() { final guardedValue = map['findingPublishingFrequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagItem>(guardedValue, (value) => TagItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

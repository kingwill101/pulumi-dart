// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cfndata_source_configurations_response.dart';
import 'cfnfeature_configuration_response.dart';
import 'tag_item_response.dart';

/// Definition of awsGuardDutyDetector
class AwsGuardDutyDetectorPropertiesResponse {
  /// Property dataSources
  final pulumi.Input<CFNDataSourceConfigurationsResponse>? dataSources;
  /// Property enable
  final pulumi.Input<bool>? enable;
  /// Property features
  final pulumi.Input<List<CFNFeatureConfigurationResponse>>? features;
  /// Property findingPublishingFrequency
  final pulumi.Input<String>? findingPublishingFrequency;
  /// Property id
  final pulumi.Input<String>? id;
  /// Property tags
  final pulumi.Input<List<TagItemResponse>>? tags;

  /// Creates a new [AwsGuardDutyDetectorPropertiesResponse].
  /// [dataSources] Property dataSources
  /// [enable] Property enable
  /// [features] Property features
  /// [findingPublishingFrequency] Property findingPublishingFrequency
  /// [id] Property id
  /// [tags] Property tags
  AwsGuardDutyDetectorPropertiesResponse({
    this.dataSources,
    this.enable,
    this.features,
    this.findingPublishingFrequency,
    this.id,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSources': ?pulumi.Input.mapOptionalInputValue<CFNDataSourceConfigurationsResponse, Map<String, dynamic>>(dataSources, (value) => value.toMap()),
      'enable': ?enable,
      'features': ?pulumi.Input.mapOptionalInputValue<List<CFNFeatureConfigurationResponse>, List<Map<String, dynamic>>>(features, (value) => pulumi.Input.encodeList<CFNFeatureConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'findingPublishingFrequency': ?findingPublishingFrequency,
      'id': ?id,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<TagItemResponse>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<TagItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AwsGuardDutyDetectorPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsGuardDutyDetectorPropertiesResponse(
      dataSources: map['dataSources'] == null ? null : (CFNDataSourceConfigurationsResponse.fromMap((map['dataSources']! as Map).cast<String, dynamic>())).input(),
      enable: map['enable'] == null ? null : (map['enable']! as bool).input(),
      features: map['features'] == null ? null : (pulumi.Input.decodeList<CFNFeatureConfigurationResponse>(map['features']!, (value) => CFNFeatureConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      findingPublishingFrequency: map['findingPublishingFrequency'] == null ? null : (map['findingPublishingFrequency']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      tags: map['tags'] == null ? null : (pulumi.Input.decodeList<TagItemResponse>(map['tags']!, (value) => TagItemResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


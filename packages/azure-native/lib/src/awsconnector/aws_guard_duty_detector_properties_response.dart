// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cfndata_source_configurations_response.dart';
import 'cfnfeature_configuration_response.dart';
import 'tag_item_response.dart';

/// Definition of awsGuardDutyDetector
class AwsGuardDutyDetectorPropertiesResponse {
  /// Property dataSources
  final CFNDataSourceConfigurationsResponse? dataSources;
  /// Property enable
  final bool? enable;
  /// Property features
  final List<CFNFeatureConfigurationResponse>? features;
  /// Property findingPublishingFrequency
  final String? findingPublishingFrequency;
  /// Property id
  final String? id;
  /// Property tags
  final List<TagItemResponse>? tags;

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
      'dataSources': ?dataSources == null ? null : dataSources!.toMap(),
      'enable': ?enable,
      'features': ?features == null ? null : pulumi.Input.encodeList<CFNFeatureConfigurationResponse, Map<String, dynamic>>(features!, (value) => value.toMap()),
      'findingPublishingFrequency': ?findingPublishingFrequency,
      'id': ?id,
      'tags': ?tags == null ? null : pulumi.Input.encodeList<TagItemResponse, Map<String, dynamic>>(tags!, (value) => value.toMap()),
    };
  }

  factory AwsGuardDutyDetectorPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsGuardDutyDetectorPropertiesResponse(
      dataSources: map['dataSources'] == null ? null : CFNDataSourceConfigurationsResponse.fromMap((map['dataSources'] as Map).cast<String, dynamic>()),
      enable: map['enable'] == null ? null : map['enable'] as bool,
      features: map['features'] == null ? null : pulumi.Input.decodeList<CFNFeatureConfigurationResponse>(map['features'], (value) => CFNFeatureConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      findingPublishingFrequency: map['findingPublishingFrequency'] == null ? null : map['findingPublishingFrequency'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<TagItemResponse>(map['tags'], (value) => TagItemResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


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
  const AwsGuardDutyDetectorPropertiesResponse({
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
      dataSources: (() { final guardedValue = map['dataSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CFNDataSourceConfigurationsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      features: (() { final guardedValue = map['features']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CFNFeatureConfigurationResponse>(guardedValue, (value) => CFNFeatureConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      findingPublishingFrequency: (() { final guardedValue = map['findingPublishingFrequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagItemResponse>(guardedValue, (value) => TagItemResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

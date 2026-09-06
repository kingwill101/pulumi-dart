// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'business_process_identifier_response.dart';
import 'business_process_mapping_item_response.dart';
import 'business_process_stage_response.dart';
import 'tracking_profile_definition_response.dart';

/// The properties of business process development artifact.
class BusinessProcessDevelopmentArtifactPropertiesResponse {
  /// The business process mapping.
  final pulumi.Input<Map<String, BusinessProcessMappingItemResponse>?>? businessProcessMapping;
  /// The business process stages.
  final pulumi.Input<Map<String, BusinessProcessStageResponse>?>? businessProcessStages;
  /// The description of the business process.
  final pulumi.Input<String?>? description;
  /// The business process identifier.
  final pulumi.Input<BusinessProcessIdentifierResponse?>? identifier;
  /// The tracking profile for the business process.
  final pulumi.Input<Map<String, TrackingProfileDefinitionResponse>?>? trackingProfiles;

  /// Creates a new [BusinessProcessDevelopmentArtifactPropertiesResponse].
  /// [businessProcessMapping] The business process mapping.
  /// [businessProcessStages] The business process stages.
  /// [description] The description of the business process.
  /// [identifier] The business process identifier.
  /// [trackingProfiles] The tracking profile for the business process.
  const BusinessProcessDevelopmentArtifactPropertiesResponse({
    this.businessProcessMapping,
    this.businessProcessStages,
    this.description,
    this.identifier,
    this.trackingProfiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'businessProcessMapping': ?pulumi.Input.mapOptionalInputValue<Map<String, BusinessProcessMappingItemResponse>, Map<String, Map<String, dynamic>>>(businessProcessMapping, (value) => pulumi.Input.encodeMapValues<BusinessProcessMappingItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'businessProcessStages': ?pulumi.Input.mapOptionalInputValue<Map<String, BusinessProcessStageResponse>, Map<String, Map<String, dynamic>>>(businessProcessStages, (value) => pulumi.Input.encodeMapValues<BusinessProcessStageResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'identifier': ?pulumi.Input.mapOptionalInputValue<BusinessProcessIdentifierResponse, Map<String, dynamic>>(identifier, (value) => value.toMap()),
      'trackingProfiles': ?pulumi.Input.mapOptionalInputValue<Map<String, TrackingProfileDefinitionResponse>, Map<String, Map<String, dynamic>>>(trackingProfiles, (value) => pulumi.Input.encodeMapValues<TrackingProfileDefinitionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BusinessProcessDevelopmentArtifactPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BusinessProcessDevelopmentArtifactPropertiesResponse(
      businessProcessMapping: (() { final guardedValue = map['businessProcessMapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<BusinessProcessMappingItemResponse>(guardedValue, (value) => BusinessProcessMappingItemResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      businessProcessStages: (() { final guardedValue = map['businessProcessStages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<BusinessProcessStageResponse>(guardedValue, (value) => BusinessProcessStageResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identifier: (() { final guardedValue = map['identifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BusinessProcessIdentifierResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trackingProfiles: (() { final guardedValue = map['trackingProfiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<TrackingProfileDefinitionResponse>(guardedValue, (value) => TrackingProfileDefinitionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

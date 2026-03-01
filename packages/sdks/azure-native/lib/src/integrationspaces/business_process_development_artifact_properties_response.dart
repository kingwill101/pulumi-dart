// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'business_process_identifier_response.dart';
import 'business_process_mapping_item_response.dart';
import 'business_process_stage_response.dart';
import 'tracking_profile_definition_response.dart';

/// The properties of business process development artifact.
class BusinessProcessDevelopmentArtifactPropertiesResponse {
  /// The business process mapping.
  final Map<String, BusinessProcessMappingItemResponse>? businessProcessMapping;
  /// The business process stages.
  final Map<String, BusinessProcessStageResponse>? businessProcessStages;
  /// The description of the business process.
  final String? description;
  /// The business process identifier.
  final BusinessProcessIdentifierResponse? identifier;
  /// The tracking profile for the business process.
  final Map<String, TrackingProfileDefinitionResponse>? trackingProfiles;

  /// Creates a new [BusinessProcessDevelopmentArtifactPropertiesResponse].
  /// [businessProcessMapping] The business process mapping.
  /// [businessProcessStages] The business process stages.
  /// [description] The description of the business process.
  /// [identifier] The business process identifier.
  /// [trackingProfiles] The tracking profile for the business process.
  BusinessProcessDevelopmentArtifactPropertiesResponse({
    this.businessProcessMapping,
    this.businessProcessStages,
    this.description,
    this.identifier,
    this.trackingProfiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'businessProcessMapping': ?businessProcessMapping == null ? null : pulumi.Input.encodeMapValues<BusinessProcessMappingItemResponse, Map<String, dynamic>>(businessProcessMapping!, (value) => value.toMap()),
      'businessProcessStages': ?businessProcessStages == null ? null : pulumi.Input.encodeMapValues<BusinessProcessStageResponse, Map<String, dynamic>>(businessProcessStages!, (value) => value.toMap()),
      'description': ?description,
      'identifier': ?identifier == null ? null : identifier!.toMap(),
      'trackingProfiles': ?trackingProfiles == null ? null : pulumi.Input.encodeMapValues<TrackingProfileDefinitionResponse, Map<String, dynamic>>(trackingProfiles!, (value) => value.toMap()),
    };
  }

  factory BusinessProcessDevelopmentArtifactPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BusinessProcessDevelopmentArtifactPropertiesResponse(
      businessProcessMapping: map['businessProcessMapping'] == null ? null : pulumi.Input.decodeMapValues<BusinessProcessMappingItemResponse>(map['businessProcessMapping'], (value) => BusinessProcessMappingItemResponse.fromMap((value as Map).cast<String, dynamic>())),
      businessProcessStages: map['businessProcessStages'] == null ? null : pulumi.Input.decodeMapValues<BusinessProcessStageResponse>(map['businessProcessStages'], (value) => BusinessProcessStageResponse.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      identifier: map['identifier'] == null ? null : BusinessProcessIdentifierResponse.fromMap((map['identifier'] as Map).cast<String, dynamic>()),
      trackingProfiles: map['trackingProfiles'] == null ? null : pulumi.Input.decodeMapValues<TrackingProfileDefinitionResponse>(map['trackingProfiles'], (value) => TrackingProfileDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'business_process_reference_response.dart';
import 'flow_tracking_definition_response.dart';

/// The tracking profile for the business process
class TrackingProfileDefinitionResponse {
  /// The business process reference.
  final BusinessProcessReferenceResponse? businessProcess;
  /// The tracking definition schema uri.
  final String? schema;
  /// The tracking definitions.
  final Map<String, FlowTrackingDefinitionResponse>? trackingDefinitions;

  /// Creates a new [TrackingProfileDefinitionResponse].
  /// [businessProcess] The business process reference.
  /// [schema] The tracking definition schema uri.
  /// [trackingDefinitions] The tracking definitions.
  TrackingProfileDefinitionResponse({
    this.businessProcess,
    this.schema,
    this.trackingDefinitions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'businessProcess': ?businessProcess == null ? null : businessProcess!.toMap(),
      'schema': ?schema,
      'trackingDefinitions': ?trackingDefinitions == null ? null : pulumi.Input.encodeMapValues<FlowTrackingDefinitionResponse, Map<String, dynamic>>(trackingDefinitions!, (value) => value.toMap()),
    };
  }

  factory TrackingProfileDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return TrackingProfileDefinitionResponse(
      businessProcess: map['businessProcess'] == null ? null : BusinessProcessReferenceResponse.fromMap((map['businessProcess'] as Map).cast<String, dynamic>()),
      schema: map['schema'] == null ? null : map['schema'] as String,
      trackingDefinitions: map['trackingDefinitions'] == null ? null : pulumi.Input.decodeMapValues<FlowTrackingDefinitionResponse>(map['trackingDefinitions'], (value) => FlowTrackingDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


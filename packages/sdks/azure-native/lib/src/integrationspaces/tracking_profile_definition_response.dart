// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'business_process_reference_response.dart';
import 'flow_tracking_definition_response.dart';

/// The tracking profile for the business process
class TrackingProfileDefinitionResponse {
  /// The business process reference.
  final pulumi.Input<BusinessProcessReferenceResponse>? businessProcess;
  /// The tracking definition schema uri.
  final pulumi.Input<String>? schema;
  /// The tracking definitions.
  final pulumi.Input<Map<String, FlowTrackingDefinitionResponse>>? trackingDefinitions;

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
      'businessProcess': ?pulumi.Input.mapOptionalInputValue<BusinessProcessReferenceResponse, Map<String, dynamic>>(businessProcess, (value) => value.toMap()),
      'schema': ?schema,
      'trackingDefinitions': ?pulumi.Input.mapOptionalInputValue<Map<String, FlowTrackingDefinitionResponse>, Map<String, Map<String, dynamic>>>(trackingDefinitions, (value) => pulumi.Input.encodeMapValues<FlowTrackingDefinitionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TrackingProfileDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return TrackingProfileDefinitionResponse(
      businessProcess: (() { final guardedValue = map['businessProcess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BusinessProcessReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trackingDefinitions: (() { final guardedValue = map['trackingDefinitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<FlowTrackingDefinitionResponse>(guardedValue, (value) => FlowTrackingDefinitionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}


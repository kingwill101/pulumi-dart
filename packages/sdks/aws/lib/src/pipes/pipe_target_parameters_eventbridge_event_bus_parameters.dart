// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeTargetParametersEventbridgeEventBusParameters {
  /// Free-form string, with a maximum of 128 characters, used to decide what fields to expect in the event detail.
  final pulumi.Input<String?>? detailType;
  /// URL subdomain of the endpoint. For example, if the URL for Endpoint is https://abcde.veo.endpoints.event.amazonaws.com, then the EndpointId is abcde.veo.
  final pulumi.Input<String?>? endpointId;
  /// List of AWS resources, identified by ARN, which the event primarily concerns. Any number, including zero, may be present.
  final pulumi.Input<List<String>?>? resources;
  /// Source of the event. Maximum length of 256.
  final pulumi.Input<String?>? source;
  /// Time stamp of the event, per RFC3339. If no time stamp is provided, the time stamp of the PutEvents call is used. This is the JSON path to the field in the event e.g. $.detail.timestamp
  final pulumi.Input<String?>? time;

  /// Creates a new [PipeTargetParametersEventbridgeEventBusParameters].
  /// [detailType] Free-form string, with a maximum of 128 characters, used to decide what fields to expect in the event detail.
  /// [endpointId] URL subdomain of the endpoint. For example, if the URL for Endpoint is https://abcde.veo.endpoints.event.amazonaws.com, then the EndpointId is abcde.veo.
  /// [resources] List of AWS resources, identified by ARN, which the event primarily concerns. Any number, including zero, may be present.
  /// [source] Source of the event. Maximum length of 256.
  /// [time] Time stamp of the event, per RFC3339. If no time stamp is provided, the time stamp of the PutEvents call is used. This is the JSON path to the field in the event e.g. $.detail.timestamp
  const PipeTargetParametersEventbridgeEventBusParameters({
    this.detailType,
    this.endpointId,
    this.resources,
    this.source,
    this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detailType': ?detailType,
      'endpointId': ?endpointId,
      'resources': ?resources,
      'source': ?source,
      'time': ?time,
    };
  }

  factory PipeTargetParametersEventbridgeEventBusParameters.fromMap(Map<String, dynamic> map) {
    return PipeTargetParametersEventbridgeEventBusParameters(
      detailType: (() { final guardedValue = map['detailType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointId: (() { final guardedValue = map['endpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      time: (() { final guardedValue = map['time']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

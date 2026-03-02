// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of which streams are sent to which destinations.
class DataFlowResponse {
  /// The builtIn transform to transform stream data
  final pulumi.Input<String>? builtInTransform;
  /// List of destinations for this data flow.
  final pulumi.Input<List<String>>? destinations;
  /// The output stream of the transform. Only required if the transform changes data to a different stream.
  final pulumi.Input<String>? outputStream;
  /// List of streams for this data flow.
  final pulumi.Input<List<String>>? streams;
  /// The KQL query to transform stream data.
  final pulumi.Input<String>? transformKql;

  /// Creates a new [DataFlowResponse].
  /// [builtInTransform] The builtIn transform to transform stream data
  /// [destinations] List of destinations for this data flow.
  /// [outputStream] The output stream of the transform. Only required if the transform changes data to a different stream.
  /// [streams] List of streams for this data flow.
  /// [transformKql] The KQL query to transform stream data.
  DataFlowResponse({
    this.builtInTransform,
    this.destinations,
    this.outputStream,
    this.streams,
    this.transformKql,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builtInTransform': ?builtInTransform,
      'destinations': ?destinations,
      'outputStream': ?outputStream,
      'streams': ?streams,
      'transformKql': ?transformKql,
    };
  }

  factory DataFlowResponse.fromMap(Map<String, dynamic> map) {
    return DataFlowResponse(
      builtInTransform: map['builtInTransform'] == null ? null : (map['builtInTransform'] as String).input(),
      destinations: map['destinations'] == null ? null : ((map['destinations'] as List).cast<String>()).input(),
      outputStream: map['outputStream'] == null ? null : (map['outputStream'] as String).input(),
      streams: map['streams'] == null ? null : ((map['streams'] as List).cast<String>()).input(),
      transformKql: map['transformKql'] == null ? null : (map['transformKql'] as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


/// Definition of which streams are sent to which destinations.
class DataFlowResponse {
  /// The builtIn transform to transform stream data
  final String? builtInTransform;
  /// List of destinations for this data flow.
  final List<String>? destinations;
  /// The output stream of the transform. Only required if the transform changes data to a different stream.
  final String? outputStream;
  /// List of streams for this data flow.
  final List<String>? streams;
  /// The KQL query to transform stream data.
  final String? transformKql;

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
      builtInTransform: map['builtInTransform'] == null ? null : map['builtInTransform'] as String,
      destinations: map['destinations'] == null ? null : (map['destinations'] as List).cast<String>(),
      outputStream: map['outputStream'] == null ? null : map['outputStream'] as String,
      streams: map['streams'] == null ? null : (map['streams'] as List).cast<String>(),
      transformKql: map['transformKql'] == null ? null : map['transformKql'] as String,
    );
  }
}


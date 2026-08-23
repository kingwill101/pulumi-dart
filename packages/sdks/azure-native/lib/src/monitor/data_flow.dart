// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of which streams are sent to which destinations.
class DataFlow {
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

  /// Creates a new [DataFlow].
  /// [builtInTransform] The builtIn transform to transform stream data
  /// [destinations] List of destinations for this data flow.
  /// [outputStream] The output stream of the transform. Only required if the transform changes data to a different stream.
  /// [streams] List of streams for this data flow.
  /// [transformKql] The KQL query to transform stream data.
  const DataFlow({
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

  factory DataFlow.fromMap(Map<String, dynamic> map) {
    return DataFlow(
      builtInTransform: (() { final guardedValue = map['builtInTransform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputStream: (() { final guardedValue = map['outputStream']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streams: (() { final guardedValue = map['streams']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      transformKql: (() { final guardedValue = map['transformKql']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_flow_folder.dart';
import 'data_flow_sink.dart';
import 'data_flow_source.dart';
import 'transformation.dart';

/// Data flow flowlet
class Flowlet {
  /// List of tags that can be used for describing the data flow.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The description of the data flow.
  final pulumi.Input<String>? description;
  /// The folder that this data flow is in. If not specified, Data flow will appear at the root level.
  final pulumi.Input<DataFlowFolder>? folder;
  /// Flowlet script.
  final pulumi.Input<String>? script;
  /// Flowlet script lines.
  final pulumi.Input<List<String>>? scriptLines;
  /// List of sinks in Flowlet.
  final pulumi.Input<List<DataFlowSink>>? sinks;
  /// List of sources in Flowlet.
  final pulumi.Input<List<DataFlowSource>>? sources;
  /// List of transformations in Flowlet.
  final pulumi.Input<List<Transformation>>? transformations_;
  /// Type of data flow.
  /// Expected value is 'Flowlet'.
  final pulumi.Input<String> type;

  /// Creates a new [Flowlet].
  /// [annotations] List of tags that can be used for describing the data flow.
  /// [description] The description of the data flow.
  /// [folder] The folder that this data flow is in. If not specified, Data flow will appear at the root level.
  /// [script] Flowlet script.
  /// [scriptLines] Flowlet script lines.
  /// [sinks] List of sinks in Flowlet.
  /// [sources] List of sources in Flowlet.
  /// [transformations_] List of transformations in Flowlet.
  /// [type] Type of data flow.
  const Flowlet({
    this.annotations,
    this.description,
    this.folder,
    this.script,
    this.scriptLines,
    this.sinks,
    this.sources,
    this.transformations_,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'description': ?description,
      'folder': ?pulumi.Input.mapOptionalInputValue<DataFlowFolder, Map<String, dynamic>>(folder, (value) => value.toMap()),
      'script': ?script,
      'scriptLines': ?scriptLines,
      'sinks': ?pulumi.Input.mapOptionalInputValue<List<DataFlowSink>, List<Map<String, dynamic>>>(sinks, (value) => pulumi.Input.encodeList<DataFlowSink, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sources': ?pulumi.Input.mapOptionalInputValue<List<DataFlowSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<DataFlowSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transformations': ?pulumi.Input.mapOptionalInputValue<List<Transformation>, List<Map<String, dynamic>>>(transformations_, (value) => pulumi.Input.encodeList<Transformation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory Flowlet.fromMap(Map<String, dynamic> map) {
    return Flowlet(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folder: (() { final guardedValue = map['folder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataFlowFolder.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      script: (() { final guardedValue = map['script']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scriptLines: (() { final guardedValue = map['scriptLines']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sinks: (() { final guardedValue = map['sinks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataFlowSink>(guardedValue, (value) => DataFlowSink.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sources: (() { final guardedValue = map['sources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataFlowSource>(guardedValue, (value) => DataFlowSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      transformations_: (() { final guardedValue = map['transformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Transformation>(guardedValue, (value) => Transformation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

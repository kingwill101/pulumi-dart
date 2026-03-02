// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_flow_folder.dart';
import 'data_flow_sink.dart';
import 'data_flow_source.dart';
import 'transformation.dart';

/// Mapping data flow.
class MappingDataFlow {
  /// List of tags that can be used for describing the data flow.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The description of the data flow.
  final pulumi.Input<String>? description;
  /// The folder that this data flow is in. If not specified, Data flow will appear at the root level.
  final pulumi.Input<DataFlowFolder>? folder;
  /// DataFlow script.
  final pulumi.Input<String>? script;
  /// Data flow script lines.
  final pulumi.Input<List<String>>? scriptLines;
  /// List of sinks in data flow.
  final pulumi.Input<List<DataFlowSink>>? sinks;
  /// List of sources in data flow.
  final pulumi.Input<List<DataFlowSource>>? sources;
  /// List of transformations in data flow.
  final pulumi.Input<List<Transformation>>? transformations;
  /// Type of data flow.
  /// Expected value is 'MappingDataFlow'.
  final pulumi.Input<String> type;

  /// Creates a new [MappingDataFlow].
  /// [annotations] List of tags that can be used for describing the data flow.
  /// [description] The description of the data flow.
  /// [folder] The folder that this data flow is in. If not specified, Data flow will appear at the root level.
  /// [script] DataFlow script.
  /// [scriptLines] Data flow script lines.
  /// [sinks] List of sinks in data flow.
  /// [sources] List of sources in data flow.
  /// [transformations] List of transformations in data flow.
  /// [type] Type of data flow.
  MappingDataFlow({
    this.annotations,
    this.description,
    this.folder,
    this.script,
    this.scriptLines,
    this.sinks,
    this.sources,
    this.transformations,
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
      'transformations': ?pulumi.Input.mapOptionalInputValue<List<Transformation>, List<Map<String, dynamic>>>(transformations, (value) => pulumi.Input.encodeList<Transformation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory MappingDataFlow.fromMap(Map<String, dynamic> map) {
    return MappingDataFlow(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<dynamic>()).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      folder: map['folder'] == null ? null : (DataFlowFolder.fromMap((map['folder']! as Map).cast<String, dynamic>())).input(),
      script: map['script'] == null ? null : (map['script']! as String).input(),
      scriptLines: map['scriptLines'] == null ? null : ((map['scriptLines']! as List).cast<String>()).input(),
      sinks: map['sinks'] == null ? null : (pulumi.Input.decodeList<DataFlowSink>(map['sinks']!, (value) => DataFlowSink.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sources: map['sources'] == null ? null : (pulumi.Input.decodeList<DataFlowSource>(map['sources']!, (value) => DataFlowSource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      transformations: map['transformations'] == null ? null : (pulumi.Input.decodeList<Transformation>(map['transformations']!, (value) => Transformation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: (map['type'] as String).input(),
    );
  }
}


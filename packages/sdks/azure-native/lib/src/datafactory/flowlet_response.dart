// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_flow_response_folder.dart';
import 'data_flow_sink_response.dart';
import 'data_flow_source_response.dart';
import 'transformation_response.dart';

/// Data flow flowlet
class FlowletResponse {
  /// List of tags that can be used for describing the data flow.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The description of the data flow.
  final pulumi.Input<String>? description;
  /// The folder that this data flow is in. If not specified, Data flow will appear at the root level.
  final pulumi.Input<DataFlowResponseFolder>? folder;
  /// Flowlet script.
  final pulumi.Input<String>? script;
  /// Flowlet script lines.
  final pulumi.Input<List<String>>? scriptLines;
  /// List of sinks in Flowlet.
  final pulumi.Input<List<DataFlowSinkResponse>>? sinks;
  /// List of sources in Flowlet.
  final pulumi.Input<List<DataFlowSourceResponse>>? sources;
  /// List of transformations in Flowlet.
  final pulumi.Input<List<TransformationResponse>>? transformations;
  /// Type of data flow.
  /// Expected value is 'Flowlet'.
  final pulumi.Input<String> type;

  /// Creates a new [FlowletResponse].
  /// [annotations] List of tags that can be used for describing the data flow.
  /// [description] The description of the data flow.
  /// [folder] The folder that this data flow is in. If not specified, Data flow will appear at the root level.
  /// [script] Flowlet script.
  /// [scriptLines] Flowlet script lines.
  /// [sinks] List of sinks in Flowlet.
  /// [sources] List of sources in Flowlet.
  /// [transformations] List of transformations in Flowlet.
  /// [type] Type of data flow.
  FlowletResponse({
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
      'folder': ?pulumi.Input.mapOptionalInputValue<DataFlowResponseFolder, Map<String, dynamic>>(folder, (value) => value.toMap()),
      'script': ?script,
      'scriptLines': ?scriptLines,
      'sinks': ?pulumi.Input.mapOptionalInputValue<List<DataFlowSinkResponse>, List<Map<String, dynamic>>>(sinks, (value) => pulumi.Input.encodeList<DataFlowSinkResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sources': ?pulumi.Input.mapOptionalInputValue<List<DataFlowSourceResponse>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<DataFlowSourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transformations': ?pulumi.Input.mapOptionalInputValue<List<TransformationResponse>, List<Map<String, dynamic>>>(transformations, (value) => pulumi.Input.encodeList<TransformationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory FlowletResponse.fromMap(Map<String, dynamic> map) {
    return FlowletResponse(
      annotations: map['annotations'] == null ? null : ((map['annotations'] as List).cast<dynamic>()).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      folder: map['folder'] == null ? null : (DataFlowResponseFolder.fromMap((map['folder'] as Map).cast<String, dynamic>())).input(),
      script: map['script'] == null ? null : (map['script'] as String).input(),
      scriptLines: map['scriptLines'] == null ? null : ((map['scriptLines'] as List).cast<String>()).input(),
      sinks: map['sinks'] == null ? null : (pulumi.Input.decodeList<DataFlowSinkResponse>(map['sinks'], (value) => DataFlowSinkResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sources: map['sources'] == null ? null : (pulumi.Input.decodeList<DataFlowSourceResponse>(map['sources'], (value) => DataFlowSourceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      transformations: map['transformations'] == null ? null : (pulumi.Input.decodeList<TransformationResponse>(map['transformations'], (value) => TransformationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: (map['type'] as String).input(),
    );
  }
}


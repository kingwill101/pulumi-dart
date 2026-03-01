// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_flow_response_folder.dart';
import 'data_flow_sink_response.dart';
import 'data_flow_source_response.dart';
import 'transformation_response.dart';

/// Mapping data flow.
class MappingDataFlowResponse {
  /// List of tags that can be used for describing the data flow.
  final List<dynamic>? annotations;
  /// The description of the data flow.
  final String? description;
  /// The folder that this data flow is in. If not specified, Data flow will appear at the root level.
  final DataFlowResponseFolder? folder;
  /// DataFlow script.
  final String? script;
  /// Data flow script lines.
  final List<String>? scriptLines;
  /// List of sinks in data flow.
  final List<DataFlowSinkResponse>? sinks;
  /// List of sources in data flow.
  final List<DataFlowSourceResponse>? sources;
  /// List of transformations in data flow.
  final List<TransformationResponse>? transformations;
  /// Type of data flow.
  /// Expected value is 'MappingDataFlow'.
  final String type;

  /// Creates a new [MappingDataFlowResponse].
  /// [annotations] List of tags that can be used for describing the data flow.
  /// [description] The description of the data flow.
  /// [folder] The folder that this data flow is in. If not specified, Data flow will appear at the root level.
  /// [script] DataFlow script.
  /// [scriptLines] Data flow script lines.
  /// [sinks] List of sinks in data flow.
  /// [sources] List of sources in data flow.
  /// [transformations] List of transformations in data flow.
  /// [type] Type of data flow.
  MappingDataFlowResponse({
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
      'folder': ?folder == null ? null : folder!.toMap(),
      'script': ?script,
      'scriptLines': ?scriptLines,
      'sinks': ?sinks == null ? null : pulumi.Input.encodeList<DataFlowSinkResponse, Map<String, dynamic>>(sinks!, (value) => value.toMap()),
      'sources': ?sources == null ? null : pulumi.Input.encodeList<DataFlowSourceResponse, Map<String, dynamic>>(sources!, (value) => value.toMap()),
      'transformations': ?transformations == null ? null : pulumi.Input.encodeList<TransformationResponse, Map<String, dynamic>>(transformations!, (value) => value.toMap()),
      'type': type,
    };
  }

  factory MappingDataFlowResponse.fromMap(Map<String, dynamic> map) {
    return MappingDataFlowResponse(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      description: map['description'] == null ? null : map['description'] as String,
      folder: map['folder'] == null ? null : DataFlowResponseFolder.fromMap((map['folder'] as Map).cast<String, dynamic>()),
      script: map['script'] == null ? null : map['script'] as String,
      scriptLines: map['scriptLines'] == null ? null : (map['scriptLines'] as List).cast<String>(),
      sinks: map['sinks'] == null ? null : pulumi.Input.decodeList<DataFlowSinkResponse>(map['sinks'], (value) => DataFlowSinkResponse.fromMap((value as Map).cast<String, dynamic>())),
      sources: map['sources'] == null ? null : pulumi.Input.decodeList<DataFlowSourceResponse>(map['sources'], (value) => DataFlowSourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      transformations: map['transformations'] == null ? null : pulumi.Input.decodeList<TransformationResponse>(map['transformations'], (value) => TransformationResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}


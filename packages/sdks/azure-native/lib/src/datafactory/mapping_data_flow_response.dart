// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_flow_response_folder.dart';
import 'data_flow_sink_response.dart';
import 'data_flow_source_response.dart';
import 'transformation_response.dart';

/// Mapping data flow.
class MappingDataFlowResponse {
  /// List of tags that can be used for describing the data flow.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The description of the data flow.
  final pulumi.Input<String>? description;
  /// The folder that this data flow is in. If not specified, Data flow will appear at the root level.
  final pulumi.Input<DataFlowResponseFolder>? folder;
  /// DataFlow script.
  final pulumi.Input<String>? script;
  /// Data flow script lines.
  final pulumi.Input<List<String>>? scriptLines;
  /// List of sinks in data flow.
  final pulumi.Input<List<DataFlowSinkResponse>>? sinks;
  /// List of sources in data flow.
  final pulumi.Input<List<DataFlowSourceResponse>>? sources;
  /// List of transformations in data flow.
  final pulumi.Input<List<TransformationResponse>>? transformations_;
  /// Type of data flow.
  /// Expected value is 'MappingDataFlow'.
  final pulumi.Input<String> type;

  /// Creates a new [MappingDataFlowResponse].
  /// [annotations] List of tags that can be used for describing the data flow.
  /// [description] The description of the data flow.
  /// [folder] The folder that this data flow is in. If not specified, Data flow will appear at the root level.
  /// [script] DataFlow script.
  /// [scriptLines] Data flow script lines.
  /// [sinks] List of sinks in data flow.
  /// [sources] List of sources in data flow.
  /// [transformations_] List of transformations in data flow.
  /// [type] Type of data flow.
  const MappingDataFlowResponse({
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
      'folder': ?pulumi.Input.mapOptionalInputValue<DataFlowResponseFolder, Map<String, dynamic>>(folder, (value) => value.toMap()),
      'script': ?script,
      'scriptLines': ?scriptLines,
      'sinks': ?pulumi.Input.mapOptionalInputValue<List<DataFlowSinkResponse>, List<Map<String, dynamic>>>(sinks, (value) => pulumi.Input.encodeList<DataFlowSinkResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sources': ?pulumi.Input.mapOptionalInputValue<List<DataFlowSourceResponse>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<DataFlowSourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transformations': ?pulumi.Input.mapOptionalInputValue<List<TransformationResponse>, List<Map<String, dynamic>>>(transformations_, (value) => pulumi.Input.encodeList<TransformationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory MappingDataFlowResponse.fromMap(Map<String, dynamic> map) {
    return MappingDataFlowResponse(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folder: (() { final guardedValue = map['folder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataFlowResponseFolder.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      script: (() { final guardedValue = map['script']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scriptLines: (() { final guardedValue = map['scriptLines']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sinks: (() { final guardedValue = map['sinks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataFlowSinkResponse>(guardedValue, (value) => DataFlowSinkResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sources: (() { final guardedValue = map['sources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataFlowSourceResponse>(guardedValue, (value) => DataFlowSourceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      transformations_: (() { final guardedValue = map['transformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TransformationResponse>(guardedValue, (value) => TransformationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}


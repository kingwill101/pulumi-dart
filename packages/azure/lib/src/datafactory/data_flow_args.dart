// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_flow_sink.dart';
import 'data_flow_source.dart';
import 'data_flow_transformation.dart';

/// {@template pulumi_datafactory_data_flow_data_flow_args_doc}
/// The set of arguments for DataFlow.
/// {@endtemplate}
/// {@macro pulumi_datafactory_data_flow_data_flow_args_doc}
class DataFlowArgs {
  /// List of tags that can be used for describing the Data Factory Data Flow.
  final pulumi.Input<List<String>>? annotations;
  /// The ID of Data Factory in which to associate the Data Flow with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
  /// The description for the Data Factory Data Flow.
  final pulumi.Input<String>? description;
  /// The folder that this Data Flow is in. If not specified, the Data Flow will appear at the root level.
  final pulumi.Input<String>? folder;
  /// Specifies the name of the Data Factory Data Flow. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The script for the Data Factory Data Flow.
  final pulumi.Input<String>? script;
  /// The script lines for the Data Factory Data Flow.
  final pulumi.Input<List<String>>? scriptLines;
  /// One or more `sink` blocks as defined below.
  final pulumi.Input<List<DataFlowSink>> sinks;
  /// One or more `source` blocks as defined below.
  final pulumi.Input<List<DataFlowSource>> sources;
  /// One or more `transformation` blocks as defined below.
  final pulumi.Input<List<DataFlowTransformation>>? transformations;

  /// Creates a new [DataFlowArgs].
  /// [annotations] List of tags that can be used for describing the Data Factory Data Flow.
  /// [dataFactoryId] The ID of Data Factory in which to associate the Data Flow with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Data Flow.
  /// [folder] The folder that this Data Flow is in. If not specified, the Data Flow will appear at the root level.
  /// [name] Specifies the name of the Data Factory Data Flow. Changing this forces a new resource to be created.
  /// [script] The script for the Data Factory Data Flow.
  /// [scriptLines] The script lines for the Data Factory Data Flow.
  /// [sinks] One or more `sink` blocks as defined below.
  /// [sources] One or more `source` blocks as defined below.
  /// [transformations] One or more `transformation` blocks as defined below.
  DataFlowArgs({
    List<String>? annotations,
    required String dataFactoryId,
    String? description,
    String? folder,
    String? name,
    String? script,
    List<String>? scriptLines,
    required List<DataFlowSink> sinks,
    required List<DataFlowSource> sources,
    List<DataFlowTransformation>? transformations,
  }) :
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      dataFactoryId = pulumi.Input.asInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      folder = pulumi.Input.asOptionalInput<String>(folder),
      name = pulumi.Input.asOptionalInput<String>(name),
      script = pulumi.Input.asOptionalInput<String>(script),
      scriptLines = pulumi.Input.asOptionalInput<List<String>>(scriptLines),
      sinks = pulumi.Input.asInput<List<DataFlowSink>>(sinks),
      sources = pulumi.Input.asInput<List<DataFlowSource>>(sources),
      transformations = pulumi.Input.asOptionalInput<List<DataFlowTransformation>>(transformations);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'dataFactoryId': dataFactoryId,
      'description': ?description,
      'folder': ?folder,
      'name': ?name,
      'script': ?script,
      'scriptLines': ?scriptLines,
      'sinks': pulumi.Input.mapInputValue<List<DataFlowSink>, List<Map<String, dynamic>>>(sinks, (value) => pulumi.Input.encodeList<DataFlowSink, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sources': pulumi.Input.mapInputValue<List<DataFlowSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<DataFlowSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transformations': ?pulumi.Input.mapOptionalInputValue<List<DataFlowTransformation>, List<Map<String, dynamic>>>(transformations, (value) => pulumi.Input.encodeList<DataFlowTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DataFlowArgs.fromMap(Map<String, dynamic> map) {
    return DataFlowArgs(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<String>(),
      dataFactoryId: map['dataFactoryId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      folder: map['folder'] == null ? null : map['folder'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      script: map['script'] == null ? null : map['script'] as String,
      scriptLines: map['scriptLines'] == null ? null : (map['scriptLines'] as List).cast<String>(),
      sinks: pulumi.Input.decodeList<DataFlowSink>(map['sinks'], (value) => DataFlowSink.fromMap((value as Map).cast<String, dynamic>())),
      sources: pulumi.Input.decodeList<DataFlowSource>(map['sources'], (value) => DataFlowSource.fromMap((value as Map).cast<String, dynamic>())),
      transformations: map['transformations'] == null ? null : pulumi.Input.decodeList<DataFlowTransformation>(map['transformations'], (value) => DataFlowTransformation.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_flow_folder.dart';
import 'power_query_source.dart';

/// Power Query data flow.
class WranglingDataFlow {
  /// List of tags that can be used for describing the data flow.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The description of the data flow.
  final pulumi.Input<String>? description;
  /// Locale of the Power query mashup document.
  final pulumi.Input<String>? documentLocale;
  /// The folder that this data flow is in. If not specified, Data flow will appear at the root level.
  final pulumi.Input<DataFlowFolder>? folder;
  /// Power query mashup script.
  final pulumi.Input<String>? script;
  /// List of sources in Power Query.
  final pulumi.Input<List<PowerQuerySource>>? sources;
  /// Type of data flow.
  /// Expected value is 'WranglingDataFlow'.
  final pulumi.Input<String> type;

  /// Creates a new [WranglingDataFlow].
  /// [annotations] List of tags that can be used for describing the data flow.
  /// [description] The description of the data flow.
  /// [documentLocale] Locale of the Power query mashup document.
  /// [folder] The folder that this data flow is in. If not specified, Data flow will appear at the root level.
  /// [script] Power query mashup script.
  /// [sources] List of sources in Power Query.
  /// [type] Type of data flow.
  WranglingDataFlow({
    this.annotations,
    this.description,
    this.documentLocale,
    this.folder,
    this.script,
    this.sources,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'description': ?description,
      'documentLocale': ?documentLocale,
      'folder': ?pulumi.Input.mapOptionalInputValue<DataFlowFolder, Map<String, dynamic>>(folder, (value) => value.toMap()),
      'script': ?script,
      'sources': ?pulumi.Input.mapOptionalInputValue<List<PowerQuerySource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<PowerQuerySource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory WranglingDataFlow.fromMap(Map<String, dynamic> map) {
    return WranglingDataFlow(
      annotations: map['annotations'] == null ? null : ((map['annotations'] as List).cast<dynamic>()).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      documentLocale: map['documentLocale'] == null ? null : (map['documentLocale'] as String).input(),
      folder: map['folder'] == null ? null : (DataFlowFolder.fromMap((map['folder'] as Map).cast<String, dynamic>())).input(),
      script: map['script'] == null ? null : (map['script'] as String).input(),
      sources: map['sources'] == null ? null : (pulumi.Input.decodeList<PowerQuerySource>(map['sources'], (value) => PowerQuerySource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: (map['type'] as String).input(),
    );
  }
}


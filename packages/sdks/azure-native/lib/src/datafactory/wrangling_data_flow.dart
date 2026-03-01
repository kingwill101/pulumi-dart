// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_flow_folder.dart';
import 'power_query_source.dart';

/// Power Query data flow.
class WranglingDataFlow {
  /// List of tags that can be used for describing the data flow.
  final List<dynamic>? annotations;
  /// The description of the data flow.
  final String? description;
  /// Locale of the Power query mashup document.
  final String? documentLocale;
  /// The folder that this data flow is in. If not specified, Data flow will appear at the root level.
  final DataFlowFolder? folder;
  /// Power query mashup script.
  final String? script;
  /// List of sources in Power Query.
  final List<PowerQuerySource>? sources;
  /// Type of data flow.
  /// Expected value is 'WranglingDataFlow'.
  final String type;

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
      'folder': ?folder == null ? null : folder!.toMap(),
      'script': ?script,
      'sources': ?sources == null ? null : pulumi.Input.encodeList<PowerQuerySource, Map<String, dynamic>>(sources!, (value) => value.toMap()),
      'type': type,
    };
  }

  factory WranglingDataFlow.fromMap(Map<String, dynamic> map) {
    return WranglingDataFlow(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      description: map['description'] == null ? null : map['description'] as String,
      documentLocale: map['documentLocale'] == null ? null : map['documentLocale'] as String,
      folder: map['folder'] == null ? null : DataFlowFolder.fromMap((map['folder'] as Map).cast<String, dynamic>()),
      script: map['script'] == null ? null : map['script'] as String,
      sources: map['sources'] == null ? null : pulumi.Input.decodeList<PowerQuerySource>(map['sources'], (value) => PowerQuerySource.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}


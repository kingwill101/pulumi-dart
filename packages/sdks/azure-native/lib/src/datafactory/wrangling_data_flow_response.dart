// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_flow_response_folder.dart';
import 'power_query_source_response.dart';

/// Power Query data flow.
class WranglingDataFlowResponse {
  /// List of tags that can be used for describing the data flow.
  final List<dynamic>? annotations;
  /// The description of the data flow.
  final String? description;
  /// Locale of the Power query mashup document.
  final String? documentLocale;
  /// The folder that this data flow is in. If not specified, Data flow will appear at the root level.
  final DataFlowResponseFolder? folder;
  /// Power query mashup script.
  final String? script;
  /// List of sources in Power Query.
  final List<PowerQuerySourceResponse>? sources;
  /// Type of data flow.
  /// Expected value is 'WranglingDataFlow'.
  final String type;

  /// Creates a new [WranglingDataFlowResponse].
  /// [annotations] List of tags that can be used for describing the data flow.
  /// [description] The description of the data flow.
  /// [documentLocale] Locale of the Power query mashup document.
  /// [folder] The folder that this data flow is in. If not specified, Data flow will appear at the root level.
  /// [script] Power query mashup script.
  /// [sources] List of sources in Power Query.
  /// [type] Type of data flow.
  WranglingDataFlowResponse({
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
      'sources': ?sources == null ? null : pulumi.Input.encodeList<PowerQuerySourceResponse, Map<String, dynamic>>(sources!, (value) => value.toMap()),
      'type': type,
    };
  }

  factory WranglingDataFlowResponse.fromMap(Map<String, dynamic> map) {
    return WranglingDataFlowResponse(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      description: map['description'] == null ? null : map['description'] as String,
      documentLocale: map['documentLocale'] == null ? null : map['documentLocale'] as String,
      folder: map['folder'] == null ? null : DataFlowResponseFolder.fromMap((map['folder'] as Map).cast<String, dynamic>()),
      script: map['script'] == null ? null : map['script'] as String,
      sources: map['sources'] == null ? null : pulumi.Input.decodeList<PowerQuerySourceResponse>(map['sources'], (value) => PowerQuerySourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_flow_response_folder.dart';
import 'power_query_source_response.dart';

/// Power Query data flow.
class WranglingDataFlowResponse {
  /// List of tags that can be used for describing the data flow.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The description of the data flow.
  final pulumi.Input<String>? description;
  /// Locale of the Power query mashup document.
  final pulumi.Input<String>? documentLocale;
  /// The folder that this data flow is in. If not specified, Data flow will appear at the root level.
  final pulumi.Input<DataFlowResponseFolder>? folder;
  /// Power query mashup script.
  final pulumi.Input<String>? script;
  /// List of sources in Power Query.
  final pulumi.Input<List<PowerQuerySourceResponse>>? sources;
  /// Type of data flow.
  /// Expected value is 'WranglingDataFlow'.
  final pulumi.Input<String> type;

  /// Creates a new [WranglingDataFlowResponse].
  /// [annotations] List of tags that can be used for describing the data flow.
  /// [description] The description of the data flow.
  /// [documentLocale] Locale of the Power query mashup document.
  /// [folder] The folder that this data flow is in. If not specified, Data flow will appear at the root level.
  /// [script] Power query mashup script.
  /// [sources] List of sources in Power Query.
  /// [type] Type of data flow.
  const WranglingDataFlowResponse({
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
      'folder': ?pulumi.Input.mapOptionalInputValue<DataFlowResponseFolder, Map<String, dynamic>>(folder, (value) => value.toMap()),
      'script': ?script,
      'sources': ?pulumi.Input.mapOptionalInputValue<List<PowerQuerySourceResponse>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<PowerQuerySourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory WranglingDataFlowResponse.fromMap(Map<String, dynamic> map) {
    return WranglingDataFlowResponse(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      documentLocale: (() { final guardedValue = map['documentLocale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folder: (() { final guardedValue = map['folder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataFlowResponseFolder.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      script: (() { final guardedValue = map['script']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sources: (() { final guardedValue = map['sources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PowerQuerySourceResponse>(guardedValue, (value) => PowerQuerySourceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}


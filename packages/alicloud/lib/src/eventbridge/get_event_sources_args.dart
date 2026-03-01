// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventbridge_get_event_sources_get_event_sources_args_doc}
/// Arguments for getEventSources.
/// {@endtemplate}
/// {@macro pulumi_eventbridge_get_event_sources_get_event_sources_args_doc}
class GetEventSourcesArgs {
  /// A list of Event Source IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Event Source name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetEventSourcesArgs].
  /// [ids] A list of Event Source IDs.
  /// [nameRegex] A regex string to filter results by Event Source name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetEventSourcesArgs({
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetEventSourcesArgs.fromMap(Map<String, dynamic> map) {
    return GetEventSourcesArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}


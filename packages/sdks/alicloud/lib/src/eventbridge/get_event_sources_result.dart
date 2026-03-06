// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_event_sources_source.dart';

/// Result data returned by getEventSources.
class GetEventSourcesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final List<GetEventSourcesSource> sources;

  /// Creates a new [GetEventSourcesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [sources] Required.
  const GetEventSourcesResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'sources': pulumi.Input.encodeList<GetEventSourcesSource, Map<String, dynamic>>(sources, (value) => value.toMap()),
    };
  }

  factory GetEventSourcesResult.fromMap(Map<String, dynamic> map) {
    return GetEventSourcesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sources: pulumi.Input.decodeList<GetEventSourcesSource>(map['sources']!, (value) => GetEventSourcesSource.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


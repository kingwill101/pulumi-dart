// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'source_context2.dart';

/// Source describes the location of the source used for the build.
class Source8 {
  /// If provided, some of the source code used for the build may be found in these locations, in the case where the source repository had multiple remotes or submodules. This list will not include the context specified in the context field.
  final List<SourceContext2>? additionalContexts;

  /// If provided, the input binary artifacts for the build came from this location.
  final String? artifactStorageSourceUri;

  /// If provided, the source code used for the build came from this location.
  final SourceContext2? context;

  /// Hash(es) of the build source, which can be used to verify that the original source integrity was maintained in the build. The keys to this map are file paths used as build source and the values contain the hash values for those files. If the build source came in a single package such as a gzipped tarfile (.tar.gz), the FileHash will be for the single path to that file.
  final Map<String, String>? fileHashes;

  Source8({
    this.additionalContexts,
    this.artifactStorageSourceUri,
    this.context,
    this.fileHashes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalContextsValue = additionalContexts;
    if (additionalContextsValue != null) {
      map['additionalContexts'] =
          Input.encodeList<SourceContext2, Map<String, dynamic>>(
              additionalContextsValue, (value) => value.toMap());
    }
    final artifactStorageSourceUriValue = artifactStorageSourceUri;
    if (artifactStorageSourceUriValue != null) {
      map['artifactStorageSourceUri'] = artifactStorageSourceUriValue;
    }
    final contextValue = context;
    if (contextValue != null) {
      map['context'] = contextValue.toMap();
    }
    final fileHashesValue = fileHashes;
    if (fileHashesValue != null) {
      map['fileHashes'] = fileHashesValue;
    }
    return map;
  }

  factory Source8.fromMap(Map<String, dynamic> map) {
    return Source8(
      additionalContexts: map['additionalContexts'] == null
          ? null
          : Input.decodeList<SourceContext2>(
              map['additionalContexts'],
              (value) => SourceContext2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      artifactStorageSourceUri: map['artifactStorageSourceUri'] == null
          ? null
          : map['artifactStorageSourceUri'] as String,
      context: map['context'] == null
          ? null
          : SourceContext2.fromMap(
              (map['context'] as Map).cast<String, dynamic>()),
      fileHashes: map['fileHashes'] == null
          ? null
          : (map['fileHashes'] as Map).cast<String, String>(),
    );
  }
}

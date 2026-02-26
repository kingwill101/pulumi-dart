// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'source_context_response2.dart';

/// Source describes the location of the source used for the build.
class SourceResponse8 {
  /// If provided, some of the source code used for the build may be found in these locations, in the case where the source repository had multiple remotes or submodules. This list will not include the context specified in the context field.
  final List<SourceContextResponse2> additionalContexts;

  /// If provided, the input binary artifacts for the build came from this location.
  final String artifactStorageSourceUri;

  /// If provided, the source code used for the build came from this location.
  final SourceContextResponse2 context;

  /// Hash(es) of the build source, which can be used to verify that the original source integrity was maintained in the build. The keys to this map are file paths used as build source and the values contain the hash values for those files. If the build source came in a single package such as a gzipped tarfile (.tar.gz), the FileHash will be for the single path to that file.
  final Map<String, String> fileHashes;

  SourceResponse8({
    required this.additionalContexts,
    required this.artifactStorageSourceUri,
    required this.context,
    required this.fileHashes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['additionalContexts'] =
        Input.encodeList<SourceContextResponse2, Map<String, dynamic>>(
            additionalContexts, (value) => value.toMap());
    map['artifactStorageSourceUri'] = artifactStorageSourceUri;
    map['context'] = context.toMap();
    map['fileHashes'] = fileHashes;
    return map;
  }

  factory SourceResponse8.fromMap(Map<String, dynamic> map) {
    return SourceResponse8(
      additionalContexts: Input.decodeList<SourceContextResponse2>(
          map['additionalContexts'],
          (value) => SourceContextResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      artifactStorageSourceUri: map['artifactStorageSourceUri'] as String,
      context: SourceContextResponse2.fromMap(
          (map['context'] as Map).cast<String, dynamic>()),
      fileHashes: (map['fileHashes'] as Map).cast<String, String>(),
    );
  }
}

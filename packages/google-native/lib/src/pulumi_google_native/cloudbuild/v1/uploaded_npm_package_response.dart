// ignore_for_file: unused_element, unnecessary_cast

import 'file_hashes_response.dart';
import 'time_span_response.dart';

/// An npm package uploaded to Artifact Registry using the NpmPackage directive.
class UploadedNpmPackageResponse {
  /// Hash types and values of the npm package.
  final FileHashesResponse fileHashes;

  /// Stores timing information for pushing the specified artifact.
  final TimeSpanResponse pushTiming;

  /// URI of the uploaded npm package.
  final String uri;

  UploadedNpmPackageResponse({
    required this.fileHashes,
    required this.pushTiming,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fileHashes'] = fileHashes.toMap();
    map['pushTiming'] = pushTiming.toMap();
    map['uri'] = uri;
    return map;
  }

  factory UploadedNpmPackageResponse.fromMap(Map<String, dynamic> map) {
    return UploadedNpmPackageResponse(
      fileHashes: FileHashesResponse.fromMap(
          (map['fileHashes'] as Map).cast<String, dynamic>()),
      pushTiming: TimeSpanResponse.fromMap(
          (map['pushTiming'] as Map).cast<String, dynamic>()),
      uri: map['uri'] as String,
    );
  }
}

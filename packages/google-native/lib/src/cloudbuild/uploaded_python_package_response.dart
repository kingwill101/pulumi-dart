// ignore_for_file: unused_element, unnecessary_cast

import 'file_hashes_response.dart';
import 'time_span_response.dart';

/// Artifact uploaded using the PythonPackage directive.
class UploadedPythonPackageResponse {
  /// Hash types and values of the Python Artifact.
  final FileHashesResponse fileHashes;

  /// Stores timing information for pushing the specified artifact.
  final TimeSpanResponse pushTiming;

  /// URI of the uploaded artifact.
  final String uri;

  /// Creates a new [UploadedPythonPackageResponse].
  /// [fileHashes] Hash types and values of the Python Artifact.
  /// [pushTiming] Stores timing information for pushing the specified artifact.
  /// [uri] URI of the uploaded artifact.
  UploadedPythonPackageResponse({
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

  factory UploadedPythonPackageResponse.fromMap(Map<String, dynamic> map) {
    return UploadedPythonPackageResponse(
      fileHashes: FileHashesResponse.fromMap(
          (map['fileHashes'] as Map).cast<String, dynamic>()),
      pushTiming: TimeSpanResponse.fromMap(
          (map['pushTiming'] as Map).cast<String, dynamic>()),
      uri: map['uri'] as String,
    );
  }
}

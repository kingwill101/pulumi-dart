// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_restore_range_response.dart';

/// Blob restore parameters
class BlobRestoreParametersResponse {
  /// Blob ranges to restore.
  final List<BlobRestoreRangeResponse> blobRanges;
  /// Restore blob to the specified time.
  final String timeToRestore;

  /// Creates a new [BlobRestoreParametersResponse].
  /// [blobRanges] Blob ranges to restore.
  /// [timeToRestore] Restore blob to the specified time.
  BlobRestoreParametersResponse({
    required this.blobRanges,
    required this.timeToRestore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobRanges': pulumi.Input.encodeList<BlobRestoreRangeResponse, Map<String, dynamic>>(blobRanges, (value) => value.toMap()),
      'timeToRestore': timeToRestore,
    };
  }

  factory BlobRestoreParametersResponse.fromMap(Map<String, dynamic> map) {
    return BlobRestoreParametersResponse(
      blobRanges: pulumi.Input.decodeList<BlobRestoreRangeResponse>(map['blobRanges'], (value) => BlobRestoreRangeResponse.fromMap((value as Map).cast<String, dynamic>())),
      timeToRestore: map['timeToRestore'] as String,
    );
  }
}


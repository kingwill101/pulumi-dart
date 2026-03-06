// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Reference to an asset via its path in a job output.
class OutputPathAssetReferenceResponse {
  /// ARM resource ID of the job.
  final pulumi.Input<String>? jobId;
  /// The path of the file/directory in the job output.
  final pulumi.Input<String>? path;
  /// Enum to determine which reference method to use for an asset.
  /// Expected value is 'OutputPath'.
  final pulumi.Input<String> referenceType;

  /// Creates a new [OutputPathAssetReferenceResponse].
  /// [jobId] ARM resource ID of the job.
  /// [path] The path of the file/directory in the job output.
  /// [referenceType] Enum to determine which reference method to use for an asset.
  const OutputPathAssetReferenceResponse({
    this.jobId,
    this.path,
    required this.referenceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobId': ?jobId,
      'path': ?path,
      'referenceType': referenceType,
    };
  }

  factory OutputPathAssetReferenceResponse.fromMap(Map<String, dynamic> map) {
    return OutputPathAssetReferenceResponse(
      jobId: (() { final guardedValue = map['jobId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      referenceType: pulumi.Input.fromValue(map['referenceType'] as String),
    );
  }
}


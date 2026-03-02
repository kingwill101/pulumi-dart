// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Reference to an asset via its path in a job output.
class OutputPathAssetReference {
  /// ARM resource ID of the job.
  final pulumi.Input<String>? jobId;
  /// The path of the file/directory in the job output.
  final pulumi.Input<String>? path;
  /// Enum to determine which reference method to use for an asset.
  /// Expected value is 'OutputPath'.
  final pulumi.Input<String> referenceType;

  /// Creates a new [OutputPathAssetReference].
  /// [jobId] ARM resource ID of the job.
  /// [path] The path of the file/directory in the job output.
  /// [referenceType] Enum to determine which reference method to use for an asset.
  OutputPathAssetReference({
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

  factory OutputPathAssetReference.fromMap(Map<String, dynamic> map) {
    return OutputPathAssetReference(
      jobId: map['jobId'] == null ? null : (map['jobId']! as String).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      referenceType: (map['referenceType'] as String).input(),
    );
  }
}


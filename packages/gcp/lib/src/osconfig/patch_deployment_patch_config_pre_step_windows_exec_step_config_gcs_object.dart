// ignore_for_file: unused_element, unnecessary_cast


class PatchDeploymentPatchConfigPreStepWindowsExecStepConfigGcsObject {
  /// Bucket of the Cloud Storage object.
  final String bucket;
  /// Generation number of the Cloud Storage object. This is used to ensure that the ExecStep specified by this PatchJob does not change.
  final String generationNumber;
  /// Name of the Cloud Storage object.
  final String object;

  /// Creates a new [PatchDeploymentPatchConfigPreStepWindowsExecStepConfigGcsObject].
  /// [bucket] Bucket of the Cloud Storage object.
  /// [generationNumber] Generation number of the Cloud Storage object. This is used to ensure that the ExecStep specified by this PatchJob does not change.
  /// [object] Name of the Cloud Storage object.
  PatchDeploymentPatchConfigPreStepWindowsExecStepConfigGcsObject({
    required this.bucket,
    required this.generationNumber,
    required this.object,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'generationNumber': generationNumber,
      'object': object,
    };
  }

  factory PatchDeploymentPatchConfigPreStepWindowsExecStepConfigGcsObject.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentPatchConfigPreStepWindowsExecStepConfigGcsObject(
      bucket: map['bucket'] as String,
      generationNumber: map['generationNumber'] as String,
      object: map['object'] as String,
    );
  }
}


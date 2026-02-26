// ignore_for_file: unused_element, unnecessary_cast

class AiReasoningEngineSpecPackageSpec {
  /// Optional. The Cloud Storage URI of the dependency files in tar.gz
  /// format.
  final String? dependencyFilesGcsUri;

  /// Optional. The Cloud Storage URI of the pickled python object.
  final String? pickleObjectGcsUri;

  /// Optional. The Python version. Currently support 3.8, 3.9, 3.10,
  /// 3.11, 3.12, 3.13. If not specified, default value is 3.10.
  final String? pythonVersion;

  /// Optional. The Cloud Storage URI of the requirements.txtfile
  final String? requirementsGcsUri;

  AiReasoningEngineSpecPackageSpec({
    this.dependencyFilesGcsUri,
    this.pickleObjectGcsUri,
    this.pythonVersion,
    this.requirementsGcsUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dependencyFilesGcsUriValue = dependencyFilesGcsUri;
    if (dependencyFilesGcsUriValue != null) {
      map['dependencyFilesGcsUri'] = dependencyFilesGcsUriValue;
    }
    final pickleObjectGcsUriValue = pickleObjectGcsUri;
    if (pickleObjectGcsUriValue != null) {
      map['pickleObjectGcsUri'] = pickleObjectGcsUriValue;
    }
    final pythonVersionValue = pythonVersion;
    if (pythonVersionValue != null) {
      map['pythonVersion'] = pythonVersionValue;
    }
    final requirementsGcsUriValue = requirementsGcsUri;
    if (requirementsGcsUriValue != null) {
      map['requirementsGcsUri'] = requirementsGcsUriValue;
    }
    return map;
  }

  factory AiReasoningEngineSpecPackageSpec.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineSpecPackageSpec(
      dependencyFilesGcsUri: map['dependencyFilesGcsUri'] == null
          ? null
          : map['dependencyFilesGcsUri'] as String,
      pickleObjectGcsUri: map['pickleObjectGcsUri'] == null
          ? null
          : map['pickleObjectGcsUri'] as String,
      pythonVersion:
          map['pythonVersion'] == null ? null : map['pythonVersion'] as String,
      requirementsGcsUri: map['requirementsGcsUri'] == null
          ? null
          : map['requirementsGcsUri'] as String,
    );
  }
}

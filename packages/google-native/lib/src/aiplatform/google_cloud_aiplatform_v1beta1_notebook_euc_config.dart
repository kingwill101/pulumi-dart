// ignore_for_file: unused_element, unnecessary_cast

/// The euc configuration of NotebookRuntimeTemplate.
class GoogleCloudAiplatformV1beta1NotebookEucConfig {
  /// Input only. Whether EUC is disabled in this NotebookRuntimeTemplate. In proto3, the default value of a boolean is false. In this way, by default EUC will be enabled for NotebookRuntimeTemplate.
  final bool? eucDisabled;

  /// Creates a new [GoogleCloudAiplatformV1beta1NotebookEucConfig].
  /// [eucDisabled] Input only. Whether EUC is disabled in this NotebookRuntimeTemplate. In proto3, the default value of a boolean is false. In this way, by default EUC will be enabled for NotebookRuntimeTemplate.
  GoogleCloudAiplatformV1beta1NotebookEucConfig({
    this.eucDisabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final eucDisabledValue = eucDisabled;
    if (eucDisabledValue != null) {
      map['eucDisabled'] = eucDisabledValue;
    }
    return map;
  }

  factory GoogleCloudAiplatformV1beta1NotebookEucConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1NotebookEucConfig(
      eucDisabled:
          map['eucDisabled'] == null ? null : map['eucDisabled'] as bool,
    );
  }
}

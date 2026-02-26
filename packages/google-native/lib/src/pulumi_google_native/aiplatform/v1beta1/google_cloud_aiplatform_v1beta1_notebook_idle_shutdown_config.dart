// ignore_for_file: unused_element, unnecessary_cast

/// The idle shutdown configuration of NotebookRuntimeTemplate, which contains the idle_timeout as required field.
class GoogleCloudAiplatformV1beta1NotebookIdleShutdownConfig {
  /// Whether Idle Shutdown is disabled in this NotebookRuntimeTemplate.
  final bool? idleShutdownDisabled;

  /// Duration is accurate to the second. In Notebook, Idle Timeout is accurate to minute so the range of idle_timeout (second) is: 10 * 60 ~ 1440 * 60.
  final String idleTimeout;

  GoogleCloudAiplatformV1beta1NotebookIdleShutdownConfig({
    this.idleShutdownDisabled,
    required this.idleTimeout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idleShutdownDisabledValue = idleShutdownDisabled;
    if (idleShutdownDisabledValue != null) {
      map['idleShutdownDisabled'] = idleShutdownDisabledValue;
    }
    map['idleTimeout'] = idleTimeout;
    return map;
  }

  factory GoogleCloudAiplatformV1beta1NotebookIdleShutdownConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1NotebookIdleShutdownConfig(
      idleShutdownDisabled: map['idleShutdownDisabled'] == null
          ? null
          : map['idleShutdownDisabled'] as bool,
      idleTimeout: map['idleTimeout'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

/// The idle shutdown configuration of NotebookRuntimeTemplate, which contains the idle_timeout as required field.
class GoogleCloudAiplatformV1NotebookIdleShutdownConfigResponse {
  /// Whether Idle Shutdown is disabled in this NotebookRuntimeTemplate.
  final bool idleShutdownDisabled;

  /// Duration is accurate to the second. In Notebook, Idle Timeout is accurate to minute so the range of idle_timeout (second) is: 10 * 60 ~ 1440 * 60.
  final String idleTimeout;

  /// Creates a new [GoogleCloudAiplatformV1NotebookIdleShutdownConfigResponse].
  /// [idleShutdownDisabled] Whether Idle Shutdown is disabled in this NotebookRuntimeTemplate.
  /// [idleTimeout] Duration is accurate to the second. In Notebook, Idle Timeout is accurate to minute so the range of idle_timeout (second) is: 10 * 60 ~ 1440 * 60.
  GoogleCloudAiplatformV1NotebookIdleShutdownConfigResponse({
    required this.idleShutdownDisabled,
    required this.idleTimeout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['idleShutdownDisabled'] = idleShutdownDisabled;
    map['idleTimeout'] = idleTimeout;
    return map;
  }

  factory GoogleCloudAiplatformV1NotebookIdleShutdownConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1NotebookIdleShutdownConfigResponse(
      idleShutdownDisabled: map['idleShutdownDisabled'] as bool,
      idleTimeout: map['idleTimeout'] as String,
    );
  }
}

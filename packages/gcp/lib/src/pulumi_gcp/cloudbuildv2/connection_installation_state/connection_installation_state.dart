// ignore_for_file: unused_element, unnecessary_cast

class ConnectionInstallationState {
  /// (Output)
  /// Output only. Link to follow for next action. Empty string if the installation is already complete.
  final String? actionUri;

  /// (Output)
  /// Output only. Message of what the user should do next to continue the installation. Empty string if the installation is already complete.
  final String? message;

  /// (Output)
  /// Output only. Current step of the installation process.
  final String? stage;

  ConnectionInstallationState({
    this.actionUri,
    this.message,
    this.stage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionUriValue = actionUri;
    if (actionUriValue != null) {
      map['actionUri'] = actionUriValue;
    }
    final messageValue = message;
    if (messageValue != null) {
      map['message'] = messageValue;
    }
    final stageValue = stage;
    if (stageValue != null) {
      map['stage'] = stageValue;
    }
    return map;
  }

  factory ConnectionInstallationState.fromMap(Map<String, dynamic> map) {
    return ConnectionInstallationState(
      actionUri: map['actionUri'] == null ? null : map['actionUri'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      stage: map['stage'] == null ? null : map['stage'] as String,
    );
  }
}

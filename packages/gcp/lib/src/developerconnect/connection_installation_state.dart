// ignore_for_file: unused_element, unnecessary_cast

class ConnectionInstallationState {
  /// Output only. Link to follow for next action. Empty string if the installation is already
  /// complete.
  final String? actionUri;

  /// Output only. Message of what the user should do next to continue the installation.
  /// Empty string if the installation is already complete.
  final String? message;

  /// (Output)
  /// Output only. Current step of the installation process.
  /// Possible values:
  /// STAGE_UNSPECIFIED
  /// PENDING_CREATE_APP
  /// PENDING_USER_OAUTH
  /// PENDING_INSTALL_APP
  /// COMPLETE
  final String? stage;

  /// Creates a new [ConnectionInstallationState].
  /// [actionUri] Output only. Link to follow for next action. Empty string if the installation is already
  /// [message] Output only. Message of what the user should do next to continue the installation.
  /// [stage] (Output)
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

// ignore_for_file: unused_element, unnecessary_cast

/// Describes stage and necessary actions to be taken by the user to complete the installation. Used for GitHub and GitHub Enterprise based connections.
class InstallationStateResponse {
  /// Link to follow for next action. Empty string if the installation is already complete.
  final String actionUri;

  /// Message of what the user should do next to continue the installation. Empty string if the installation is already complete.
  final String message;

  /// Current step of the installation process.
  final String stage;

  InstallationStateResponse({
    required this.actionUri,
    required this.message,
    required this.stage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actionUri'] = actionUri;
    map['message'] = message;
    map['stage'] = stage;
    return map;
  }

  factory InstallationStateResponse.fromMap(Map<String, dynamic> map) {
    return InstallationStateResponse(
      actionUri: map['actionUri'] as String,
      message: map['message'] as String,
      stage: map['stage'] as String,
    );
  }
}

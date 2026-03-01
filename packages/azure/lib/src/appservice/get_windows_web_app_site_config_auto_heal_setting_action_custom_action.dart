// ignore_for_file: unused_element, unnecessary_cast


class GetWindowsWebAppSiteConfigAutoHealSettingActionCustomAction {
  /// The command run when this `auto_heal` action is triggered.
  final String executable;
  /// The parameters passed to the `executable`.
  final String parameters;

  /// Creates a new [GetWindowsWebAppSiteConfigAutoHealSettingActionCustomAction].
  /// [executable] The command run when this `auto_heal` action is triggered.
  /// [parameters] The parameters passed to the `executable`.
  GetWindowsWebAppSiteConfigAutoHealSettingActionCustomAction({
    required this.executable,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executable': executable,
      'parameters': parameters,
    };
  }

  factory GetWindowsWebAppSiteConfigAutoHealSettingActionCustomAction.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppSiteConfigAutoHealSettingActionCustomAction(
      executable: map['executable'] as String,
      parameters: map['parameters'] as String,
    );
  }
}


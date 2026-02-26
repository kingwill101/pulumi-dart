// ignore_for_file: unused_element, unnecessary_cast

class AppVersionSnapshotAgentBeforeModelCallback {
  /// The description of the app version.
  final String? description;

  /// (Output)
  /// Whether summarization is disabled.
  final bool? disabled;

  /// (Output)
  /// The Python code to execute for the tool.
  final String? pythonCode;

  AppVersionSnapshotAgentBeforeModelCallback({
    this.description,
    this.disabled,
    this.pythonCode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    final pythonCodeValue = pythonCode;
    if (pythonCodeValue != null) {
      map['pythonCode'] = pythonCodeValue;
    }
    return map;
  }

  factory AppVersionSnapshotAgentBeforeModelCallback.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotAgentBeforeModelCallback(
      description:
          map['description'] == null ? null : map['description'] as String,
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      pythonCode:
          map['pythonCode'] == null ? null : map['pythonCode'] as String,
    );
  }
}

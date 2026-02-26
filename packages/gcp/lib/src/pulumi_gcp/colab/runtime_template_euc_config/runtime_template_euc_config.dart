// ignore_for_file: unused_element, unnecessary_cast

class RuntimeTemplateEucConfig {
  /// Disable end user credential access for the runtime.
  final bool? eucDisabled;

  RuntimeTemplateEucConfig({
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

  factory RuntimeTemplateEucConfig.fromMap(Map<String, dynamic> map) {
    return RuntimeTemplateEucConfig(
      eucDisabled:
          map['eucDisabled'] == null ? null : map['eucDisabled'] as bool,
    );
  }
}

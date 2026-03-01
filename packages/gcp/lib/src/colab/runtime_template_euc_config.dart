// ignore_for_file: unused_element, unnecessary_cast

class RuntimeTemplateEucConfig {
  /// Disable end user credential access for the runtime.
  final bool? eucDisabled;

  /// Creates a new [RuntimeTemplateEucConfig].
  /// [eucDisabled] Disable end user credential access for the runtime.
  RuntimeTemplateEucConfig({this.eucDisabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'eucDisabled': ?eucDisabled};
  }

  factory RuntimeTemplateEucConfig.fromMap(Map<String, dynamic> map) {
    return RuntimeTemplateEucConfig(
      eucDisabled: map['eucDisabled'] == null
          ? null
          : map['eucDisabled'] as bool,
    );
  }
}

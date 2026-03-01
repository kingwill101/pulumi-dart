// ignore_for_file: unused_element, unnecessary_cast


class PolicyStoreValidationSettings {
  /// The mode for the validation settings. Valid values: `OFF`, `STRICT`.
  ///
  /// The following arguments are optional:
  final String mode;

  /// Creates a new [PolicyStoreValidationSettings].
  /// [mode] The mode for the validation settings. Valid values: `OFF`, `STRICT`.
  PolicyStoreValidationSettings({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory PolicyStoreValidationSettings.fromMap(Map<String, dynamic> map) {
    return PolicyStoreValidationSettings(
      mode: map['mode'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


class GetLaunchTemplateEnclaveOption {
  final bool enabled;

  /// Creates a new [GetLaunchTemplateEnclaveOption].
  /// [enabled] Required.
  GetLaunchTemplateEnclaveOption({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetLaunchTemplateEnclaveOption.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateEnclaveOption(
      enabled: map['enabled'] as bool,
    );
  }
}


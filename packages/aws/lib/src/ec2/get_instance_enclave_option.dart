// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceEnclaveOption {
  /// Whether Nitro Enclaves are enabled.
  final bool enabled;

  /// Creates a new [GetInstanceEnclaveOption].
  /// [enabled] Whether Nitro Enclaves are enabled.
  GetInstanceEnclaveOption({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetInstanceEnclaveOption.fromMap(Map<String, dynamic> map) {
    return GetInstanceEnclaveOption(
      enabled: map['enabled'] as bool,
    );
  }
}

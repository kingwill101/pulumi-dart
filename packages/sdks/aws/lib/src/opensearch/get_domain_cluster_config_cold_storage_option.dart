// ignore_for_file: unused_element, unnecessary_cast


class GetDomainClusterConfigColdStorageOption {
  /// Enabled disabled toggle for off-peak update window
  final bool enabled;

  /// Creates a new [GetDomainClusterConfigColdStorageOption].
  /// [enabled] Enabled disabled toggle for off-peak update window
  GetDomainClusterConfigColdStorageOption({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetDomainClusterConfigColdStorageOption.fromMap(Map<String, dynamic> map) {
    return GetDomainClusterConfigColdStorageOption(
      enabled: map['enabled'] as bool,
    );
  }
}


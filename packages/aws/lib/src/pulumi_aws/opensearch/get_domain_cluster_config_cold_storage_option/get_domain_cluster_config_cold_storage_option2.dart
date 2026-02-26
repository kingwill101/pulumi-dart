// ignore_for_file: unused_element, unnecessary_cast

class GetDomainClusterConfigColdStorageOption2 {
  /// Enabled disabled toggle for off-peak update window
  final bool enabled;

  GetDomainClusterConfigColdStorageOption2({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetDomainClusterConfigColdStorageOption2.fromMap(
      Map<String, dynamic> map) {
    return GetDomainClusterConfigColdStorageOption2(
      enabled: map['enabled'] as bool,
    );
  }
}

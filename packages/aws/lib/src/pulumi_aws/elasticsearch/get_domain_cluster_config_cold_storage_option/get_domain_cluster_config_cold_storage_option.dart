// ignore_for_file: unused_element, unnecessary_cast

class GetDomainClusterConfigColdStorageOption {
  /// Whether node to node encryption is enabled.
  final bool enabled;

  GetDomainClusterConfigColdStorageOption({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetDomainClusterConfigColdStorageOption.fromMap(
      Map<String, dynamic> map) {
    return GetDomainClusterConfigColdStorageOption(
      enabled: map['enabled'] as bool,
    );
  }
}

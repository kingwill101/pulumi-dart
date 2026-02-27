// ignore_for_file: unused_element, unnecessary_cast

class GetDomainClusterConfigColdStorageOptionOpensearch {
  /// Enabled disabled toggle for off-peak update window
  final bool enabled;

  GetDomainClusterConfigColdStorageOptionOpensearch({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetDomainClusterConfigColdStorageOptionOpensearch.fromMap(
      Map<String, dynamic> map) {
    return GetDomainClusterConfigColdStorageOptionOpensearch(
      enabled: map['enabled'] as bool,
    );
  }
}

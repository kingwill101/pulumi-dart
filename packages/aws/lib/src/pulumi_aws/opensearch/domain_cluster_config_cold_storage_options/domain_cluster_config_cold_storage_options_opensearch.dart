// ignore_for_file: unused_element, unnecessary_cast

class DomainClusterConfigColdStorageOptionsOpensearch {
  /// Boolean to enable cold storage for an OpenSearch domain. Defaults to `false`. Master and ultrawarm nodes must be enabled for cold storage.
  final bool? enabled;

  DomainClusterConfigColdStorageOptionsOpensearch({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory DomainClusterConfigColdStorageOptionsOpensearch.fromMap(
      Map<String, dynamic> map) {
    return DomainClusterConfigColdStorageOptionsOpensearch(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

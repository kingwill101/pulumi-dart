// ignore_for_file: unused_element, unnecessary_cast

class DomainClusterConfigColdStorageOptions {
  /// Boolean to enable cold storage for an OpenSearch domain. Defaults to `false`. Master and ultrawarm nodes must be enabled for cold storage.
  final bool? enabled;

  /// Creates a new [DomainClusterConfigColdStorageOptions].
  /// [enabled] Boolean to enable cold storage for an OpenSearch domain. Defaults to `false`. Master and ultrawarm nodes must be enabled for cold storage.
  DomainClusterConfigColdStorageOptions({
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

  factory DomainClusterConfigColdStorageOptions.fromMap(
      Map<String, dynamic> map) {
    return DomainClusterConfigColdStorageOptions(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

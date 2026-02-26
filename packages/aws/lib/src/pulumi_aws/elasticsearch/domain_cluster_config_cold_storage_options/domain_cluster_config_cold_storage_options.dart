// ignore_for_file: unused_element, unnecessary_cast

class DomainClusterConfigColdStorageOptions {
  /// Boolean to enable cold storage for an Elasticsearch domain. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Master and ultrawarm nodes must be enabled for cold storage.
  final bool? enabled;

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

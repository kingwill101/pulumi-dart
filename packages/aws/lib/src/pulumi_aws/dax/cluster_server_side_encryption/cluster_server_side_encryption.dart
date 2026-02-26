// ignore_for_file: unused_element, unnecessary_cast

class ClusterServerSideEncryption {
  /// Whether to enable encryption at rest. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? enabled;

  ClusterServerSideEncryption({
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

  factory ClusterServerSideEncryption.fromMap(Map<String, dynamic> map) {
    return ClusterServerSideEncryption(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

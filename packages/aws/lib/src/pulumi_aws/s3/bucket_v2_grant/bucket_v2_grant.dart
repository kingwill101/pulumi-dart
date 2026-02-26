// ignore_for_file: unused_element, unnecessary_cast

class BucketV2Grant {
  /// Canonical user id to grant for. Used only when <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is `CanonicalUser`.
  final String? id;

  /// List of permissions to apply for grantee. Valid values are `READ`, `WRITE`, `READ_ACP`, `WRITE_ACP`, `FULL_CONTROL`.
  final List<String> permissions;

  /// Type of grantee to apply for. Valid values are `CanonicalUser` and `Group`. `AmazonCustomerByEmail` is not supported.
  final String type;

  /// Uri address to grant for. Used only when <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is `Group`.
  final String? uri;

  BucketV2Grant({
    this.id,
    required this.permissions,
    required this.type,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    map['permissions'] = permissions;
    map['type'] = type;
    final uriValue = uri;
    if (uriValue != null) {
      map['uri'] = uriValue;
    }
    return map;
  }

  factory BucketV2Grant.fromMap(Map<String, dynamic> map) {
    return BucketV2Grant(
      id: map['id'] == null ? null : map['id'] as String,
      permissions: (map['permissions'] as List).cast<String>(),
      type: map['type'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}

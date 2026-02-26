// ignore_for_file: unused_element, unnecessary_cast

class ObjectCopyGrant {
  /// Email address of the grantee. Used only when <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is `AmazonCustomerByEmail`.
  final String? email;

  /// Canonical user ID of the grantee. Used only when <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is `CanonicalUser`.
  final String? id;

  /// List of permissions to grant to grantee. Valid values are `READ`, `READ_ACP`, `WRITE_ACP`, `FULL_CONTROL`.
  final List<String> permissions;

  /// Type of grantee. Valid values are `CanonicalUser`, `Group`, and `AmazonCustomerByEmail`.
  ///
  /// This configuration block has the following optional arguments (one of the three is required):
  final String type;

  /// URI of the grantee group. Used only when <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is `Group`.
  final String? uri;

  ObjectCopyGrant({
    this.email,
    this.id,
    required this.permissions,
    required this.type,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final emailValue = email;
    if (emailValue != null) {
      map['email'] = emailValue;
    }
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

  factory ObjectCopyGrant.fromMap(Map<String, dynamic> map) {
    return ObjectCopyGrant(
      email: map['email'] == null ? null : map['email'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      permissions: (map['permissions'] as List).cast<String>(),
      type: map['type'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}

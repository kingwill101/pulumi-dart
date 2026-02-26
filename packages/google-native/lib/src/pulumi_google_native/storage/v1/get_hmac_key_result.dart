// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getHmacKey.
class GetHmacKeyResult {
  /// The ID of the HMAC Key.
  final String accessId;

  /// HTTP 1.1 Entity tag for the HMAC key.
  final String etag;

  /// The kind of item this is. For HMAC Key metadata, this is always storage#hmacKeyMetadata.
  final String kind;

  /// Project ID owning the service account to which the key authenticates.
  final String project;

  /// The link to this resource.
  final String selfLink;

  /// The email address of the key's associated service account.
  final String serviceAccountEmail;

  /// The state of the key. Can be one of ACTIVE, INACTIVE, or DELETED.
  final String state;

  /// The creation time of the HMAC key in RFC 3339 format.
  final String timeCreated;

  /// The last modification time of the HMAC key metadata in RFC 3339 format.
  final String updated;

  GetHmacKeyResult({
    required this.accessId,
    required this.etag,
    required this.kind,
    required this.project,
    required this.selfLink,
    required this.serviceAccountEmail,
    required this.state,
    required this.timeCreated,
    required this.updated,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessId'] = accessId;
    map['etag'] = etag;
    map['kind'] = kind;
    map['project'] = project;
    map['selfLink'] = selfLink;
    map['serviceAccountEmail'] = serviceAccountEmail;
    map['state'] = state;
    map['timeCreated'] = timeCreated;
    map['updated'] = updated;
    return map;
  }

  factory GetHmacKeyResult.fromMap(Map<String, dynamic> map) {
    return GetHmacKeyResult(
      accessId: map['accessId'] as String,
      etag: map['etag'] as String,
      kind: map['kind'] as String,
      project: map['project'] as String,
      selfLink: map['selfLink'] as String,
      serviceAccountEmail: map['serviceAccountEmail'] as String,
      state: map['state'] as String,
      timeCreated: map['timeCreated'] as String,
      updated: map['updated'] as String,
    );
  }
}

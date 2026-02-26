// ignore_for_file: unused_element, unnecessary_cast

/// Specifies a file available via some URI.
class OSPolicyResourceFileRemoteResponse2 {
  /// SHA256 checksum of the remote file.
  final String sha256Checksum;

  /// URI from which to fetch the object. It should contain both the protocol and path following the format `{protocol}://{location}`.
  final String uri;

  OSPolicyResourceFileRemoteResponse2({
    required this.sha256Checksum,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sha256Checksum'] = sha256Checksum;
    map['uri'] = uri;
    return map;
  }

  factory OSPolicyResourceFileRemoteResponse2.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourceFileRemoteResponse2(
      sha256Checksum: map['sha256Checksum'] as String,
      uri: map['uri'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

/// Specifies a file available via some URI.
class OSPolicyResourceFileRemote {
  /// SHA256 checksum of the remote file.
  final String? sha256Checksum;

  /// URI from which to fetch the object. It should contain both the protocol and path following the format `{protocol}://{location}`.
  final String uri;

  /// Creates a new [OSPolicyResourceFileRemote].
  /// [sha256Checksum] SHA256 checksum of the remote file.
  /// [uri] URI from which to fetch the object. It should contain both the protocol and path following the format `{protocol}://{location}`.
  OSPolicyResourceFileRemote({
    this.sha256Checksum,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final sha256ChecksumValue = sha256Checksum;
    if (sha256ChecksumValue != null) {
      map['sha256Checksum'] = sha256ChecksumValue;
    }
    map['uri'] = uri;
    return map;
  }

  factory OSPolicyResourceFileRemote.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceFileRemote(
      sha256Checksum: map['sha256Checksum'] == null
          ? null
          : map['sha256Checksum'] as String,
      uri: map['uri'] as String,
    );
  }
}

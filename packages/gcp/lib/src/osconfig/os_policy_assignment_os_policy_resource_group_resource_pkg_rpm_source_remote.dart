// ignore_for_file: unused_element, unnecessary_cast


class OsPolicyAssignmentOsPolicyResourceGroupResourcePkgRpmSourceRemote {
  /// SHA256 checksum of the remote file.
  final String? sha256Checksum;
  /// URI from which to fetch the object. It should contain
  /// both the protocol and path following the format `{protocol}://{location}`.
  final String uri;

  /// Creates a new [OsPolicyAssignmentOsPolicyResourceGroupResourcePkgRpmSourceRemote].
  /// [sha256Checksum] SHA256 checksum of the remote file.
  /// [uri] URI from which to fetch the object. It should contain
  OsPolicyAssignmentOsPolicyResourceGroupResourcePkgRpmSourceRemote({
    this.sha256Checksum,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sha256Checksum': ?sha256Checksum,
      'uri': uri,
    };
  }

  factory OsPolicyAssignmentOsPolicyResourceGroupResourcePkgRpmSourceRemote.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentOsPolicyResourceGroupResourcePkgRpmSourceRemote(
      sha256Checksum: map['sha256Checksum'] == null ? null : map['sha256Checksum'] as String,
      uri: map['uri'] as String,
    );
  }
}


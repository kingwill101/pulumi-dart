// ignore_for_file: unused_element, unnecessary_cast


class PipelineContentConfigPermission {
  /// The permission that you want to give to the AWS user that you specified in `content_config_permissions.grantee`. Valid values are `Read`, `ReadAcp`, `WriteAcp` or `FullControl`.
  final List<String>? accesses;
  /// The AWS user or group that you want to have access to transcoded files and playlists.
  final String? grantee;
  /// Specify the type of value that appears in the `content_config_permissions.grantee` object. Valid values are `Canonical`, `Email` or `Group`.
  final String? granteeType;

  /// Creates a new [PipelineContentConfigPermission].
  /// [accesses] The permission that you want to give to the AWS user that you specified in `content_config_permissions.grantee`. Valid values are `Read`, `ReadAcp`, `WriteAcp` or `FullControl`.
  /// [grantee] The AWS user or group that you want to have access to transcoded files and playlists.
  /// [granteeType] Specify the type of value that appears in the `content_config_permissions.grantee` object. Valid values are `Canonical`, `Email` or `Group`.
  PipelineContentConfigPermission({
    this.accesses,
    this.grantee,
    this.granteeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accesses': ?accesses,
      'grantee': ?grantee,
      'granteeType': ?granteeType,
    };
  }

  factory PipelineContentConfigPermission.fromMap(Map<String, dynamic> map) {
    return PipelineContentConfigPermission(
      accesses: map['accesses'] == null ? null : (map['accesses'] as List).cast<String>(),
      grantee: map['grantee'] == null ? null : map['grantee'] as String,
      granteeType: map['granteeType'] == null ? null : map['granteeType'] as String,
    );
  }
}


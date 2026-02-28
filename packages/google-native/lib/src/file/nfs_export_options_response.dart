// ignore_for_file: unused_element, unnecessary_cast


/// NFS export options specifications.
class NfsExportOptionsResponse {
  /// Either READ_ONLY, for allowing only read requests on the exported directory, or READ_WRITE, for allowing both read and write requests. The default is READ_WRITE.
  final String accessMode;
  /// An integer representing the anonymous group id with a default value of 65534. Anon_gid may only be set with squash_mode of ROOT_SQUASH. An error will be returned if this field is specified for other squash_mode settings.
  final String anonGid;
  /// An integer representing the anonymous user id with a default value of 65534. Anon_uid may only be set with squash_mode of ROOT_SQUASH. An error will be returned if this field is specified for other squash_mode settings.
  final String anonUid;
  /// List of either an IPv4 addresses in the format `{octet1}.{octet2}.{octet3}.{octet4}` or CIDR ranges in the format `{octet1}.{octet2}.{octet3}.{octet4}/{mask size}` which may mount the file share. Overlapping IP ranges are not allowed, both within and across NfsExportOptions. An error will be returned. The limit is 64 IP ranges/addresses for each FileShareConfig among all NfsExportOptions.
  final List<String> ipRanges;
  /// Either NO_ROOT_SQUASH, for allowing root access on the exported directory, or ROOT_SQUASH, for not allowing root access. The default is NO_ROOT_SQUASH.
  final String squashMode;

  /// Creates a new [NfsExportOptionsResponse].
  /// [accessMode] Either READ_ONLY, for allowing only read requests on the exported directory, or READ_WRITE, for allowing both read and write requests. The default is READ_WRITE.
  /// [anonGid] An integer representing the anonymous group id with a default value of 65534. Anon_gid may only be set with squash_mode of ROOT_SQUASH. An error will be returned if this field is specified for other squash_mode settings.
  /// [anonUid] An integer representing the anonymous user id with a default value of 65534. Anon_uid may only be set with squash_mode of ROOT_SQUASH. An error will be returned if this field is specified for other squash_mode settings.
  /// [ipRanges] List of either an IPv4 addresses in the format `{octet1}.{octet2}.{octet3}.{octet4}` or CIDR ranges in the format `{octet1}.{octet2}.{octet3}.{octet4}/{mask size}` which may mount the file share. Overlapping IP ranges are not allowed, both within and across NfsExportOptions. An error will be returned. The limit is 64 IP ranges/addresses for each FileShareConfig among all NfsExportOptions.
  /// [squashMode] Either NO_ROOT_SQUASH, for allowing root access on the exported directory, or ROOT_SQUASH, for not allowing root access. The default is NO_ROOT_SQUASH.
  NfsExportOptionsResponse({
    required this.accessMode,
    required this.anonGid,
    required this.anonUid,
    required this.ipRanges,
    required this.squashMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMode': accessMode,
      'anonGid': anonGid,
      'anonUid': anonUid,
      'ipRanges': ipRanges,
      'squashMode': squashMode,
    };
  }

  factory NfsExportOptionsResponse.fromMap(Map<String, dynamic> map) {
    return NfsExportOptionsResponse(
      accessMode: map['accessMode'] as String,
      anonGid: map['anonGid'] as String,
      anonUid: map['anonUid'] as String,
      ipRanges: (map['ipRanges'] as List).cast<String>(),
      squashMode: map['squashMode'] as String,
    );
  }
}


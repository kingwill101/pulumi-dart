// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceFileShareNfsExportOption {
  /// Either READ_ONLY, for allowing only read requests on the exported directory,
  /// or READ_WRITE, for allowing both read and write requests. The default is READ_WRITE. Default value: "READ_WRITE" Possible values: ["READ_ONLY", "READ_WRITE"]
  final String accessMode;

  /// An integer representing the anonymous group id with a default value of 65534.
  /// Anon_gid may only be set with squashMode of ROOT_SQUASH. An error will be returned
  /// if this field is specified for other squashMode settings.
  final int anonGid;

  /// An integer representing the anonymous user id with a default value of 65534.
  /// Anon_uid may only be set with squashMode of ROOT_SQUASH. An error will be returned
  /// if this field is specified for other squashMode settings.
  final int anonUid;

  /// List of either IPv4 addresses, or ranges in CIDR notation which may mount the file share.
  /// Overlapping IP ranges are not allowed, both within and across NfsExportOptions. An error will be returned.
  /// The limit is 64 IP ranges/addresses for each FileShareConfig among all NfsExportOptions.
  final List<String> ipRanges;

  /// The source VPC network for 'ip_ranges'.
  /// Required for instances using Private Service Connect, optional otherwise.
  final String network;

  /// Either NO_ROOT_SQUASH, for allowing root access on the exported directory, or ROOT_SQUASH,
  /// for not allowing root access. The default is NO_ROOT_SQUASH. Default value: "NO_ROOT_SQUASH" Possible values: ["NO_ROOT_SQUASH", "ROOT_SQUASH"]
  final String squashMode;

  /// Creates a new [GetInstanceFileShareNfsExportOption].
  /// [accessMode] Either READ_ONLY, for allowing only read requests on the exported directory,
  /// [anonGid] An integer representing the anonymous group id with a default value of 65534.
  /// [anonUid] An integer representing the anonymous user id with a default value of 65534.
  /// [ipRanges] List of either IPv4 addresses, or ranges in CIDR notation which may mount the file share.
  /// [network] The source VPC network for 'ip_ranges'.
  /// [squashMode] Either NO_ROOT_SQUASH, for allowing root access on the exported directory, or ROOT_SQUASH,
  GetInstanceFileShareNfsExportOption({
    required this.accessMode,
    required this.anonGid,
    required this.anonUid,
    required this.ipRanges,
    required this.network,
    required this.squashMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMode': accessMode,
      'anonGid': anonGid,
      'anonUid': anonUid,
      'ipRanges': ipRanges,
      'network': network,
      'squashMode': squashMode,
    };
  }

  factory GetInstanceFileShareNfsExportOption.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetInstanceFileShareNfsExportOption(
      accessMode: map['accessMode'] as String,
      anonGid: map['anonGid'] as int,
      anonUid: map['anonUid'] as int,
      ipRanges: (map['ipRanges'] as List).cast<String>(),
      network: map['network'] as String,
      squashMode: map['squashMode'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast


/// The full path to a volume that is to be migrated into ANF. Required for Migration volumes
class RemotePath {
  /// The Path to a ONTAP Host
  final String externalHostName;
  /// The name of a server on the ONTAP Host
  final String serverName;
  /// The name of a volume on the server
  final String volumeName;

  /// Creates a new [RemotePath].
  /// [externalHostName] The Path to a ONTAP Host
  /// [serverName] The name of a server on the ONTAP Host
  /// [volumeName] The name of a volume on the server
  RemotePath({
    required this.externalHostName,
    required this.serverName,
    required this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalHostName': externalHostName,
      'serverName': serverName,
      'volumeName': volumeName,
    };
  }

  factory RemotePath.fromMap(Map<String, dynamic> map) {
    return RemotePath(
      externalHostName: map['externalHostName'] as String,
      serverName: map['serverName'] as String,
      volumeName: map['volumeName'] as String,
    );
  }
}


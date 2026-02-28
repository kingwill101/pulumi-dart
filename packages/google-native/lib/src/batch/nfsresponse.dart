// ignore_for_file: unused_element, unnecessary_cast

/// Represents an NFS volume.
class NFSResponse {
  /// Remote source path exported from the NFS, e.g., "/share".
  final String remotePath;

  /// The IP address of the NFS.
  final String server;

  /// Creates a new [NFSResponse].
  /// [remotePath] Remote source path exported from the NFS, e.g., "/share".
  /// [server] The IP address of the NFS.
  NFSResponse({
    required this.remotePath,
    required this.server,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['remotePath'] = remotePath;
    map['server'] = server;
    return map;
  }

  factory NFSResponse.fromMap(Map<String, dynamic> map) {
    return NFSResponse(
      remotePath: map['remotePath'] as String,
      server: map['server'] as String,
    );
  }
}

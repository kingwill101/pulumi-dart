// ignore_for_file: unused_element, unnecessary_cast

/// Represents a mount configuration for Network File System (NFS) to mount.
class GoogleCloudAiplatformV1beta1NfsMountResponse {
  /// Destination mount path. The NFS will be mounted for the user under /mnt/nfs/
  final String mountPoint;

  /// Source path exported from NFS server. Has to start with '/', and combined with the ip address, it indicates the source mount path in the form of `server:path`
  final String path;

  /// IP address of the NFS server.
  final String server;

  /// Creates a new [GoogleCloudAiplatformV1beta1NfsMountResponse].
  /// [mountPoint] Destination mount path. The NFS will be mounted for the user under /mnt/nfs/
  /// [path] Source path exported from NFS server. Has to start with '/', and combined with the ip address, it indicates the source mount path in the form of `server:path`
  /// [server] IP address of the NFS server.
  GoogleCloudAiplatformV1beta1NfsMountResponse({
    required this.mountPoint,
    required this.path,
    required this.server,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mountPoint'] = mountPoint;
    map['path'] = path;
    map['server'] = server;
    return map;
  }

  factory GoogleCloudAiplatformV1beta1NfsMountResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1NfsMountResponse(
      mountPoint: map['mountPoint'] as String,
      path: map['path'] as String,
      server: map['server'] as String,
    );
  }
}

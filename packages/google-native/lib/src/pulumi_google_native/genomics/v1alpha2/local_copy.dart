// ignore_for_file: unused_element, unnecessary_cast

/// LocalCopy defines how a remote file should be copied to and from the VM.
class LocalCopy {
  /// The name of the disk where this parameter is located. Can be the name of one of the disks specified in the Resources field, or "boot", which represents the Docker instance's boot disk and has a mount point of `/`.
  final String disk;

  /// The path within the user's docker container where this input should be localized to and from, relative to the specified disk's mount point. For example: file.txt,
  final String path;

  LocalCopy({
    required this.disk,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disk'] = disk;
    map['path'] = path;
    return map;
  }

  factory LocalCopy.fromMap(Map<String, dynamic> map) {
    return LocalCopy(
      disk: map['disk'] as String,
      path: map['path'] as String,
    );
  }
}

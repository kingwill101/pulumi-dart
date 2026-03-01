// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesFilesystemIdMapUid {
  /// Specifies the number of group IDs to be mapped in the filesystem.
  final double count;
  /// Sets the starting group ID for mapping in the filesystem.
  final double start;
  /// Defines the target group ID for the mapping in the filesystem.
  final double target;

  /// Creates a new [DomainDevicesFilesystemIdMapUid].
  /// [count] Specifies the number of group IDs to be mapped in the filesystem.
  /// [start] Sets the starting group ID for mapping in the filesystem.
  /// [target] Defines the target group ID for the mapping in the filesystem.
  DomainDevicesFilesystemIdMapUid({
    required this.count,
    required this.start,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'start': start,
      'target': target,
    };
  }

  factory DomainDevicesFilesystemIdMapUid.fromMap(Map<String, dynamic> map) {
    return DomainDevicesFilesystemIdMapUid(
      count: map['count'] as double,
      start: map['start'] as double,
      target: map['target'] as double,
    );
  }
}


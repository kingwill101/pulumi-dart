// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceBackupsAutomaticDisk {
  /// The filesystem of this disk.
  final String filesystem;
  /// The label of this disk.
  final String label;
  /// The size of this disk.
  final int size;

  /// Creates a new [GetInstanceBackupsAutomaticDisk].
  /// [filesystem] The filesystem of this disk.
  /// [label] The label of this disk.
  /// [size] The size of this disk.
  GetInstanceBackupsAutomaticDisk({
    required this.filesystem,
    required this.label,
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filesystem': filesystem,
      'label': label,
      'size': size,
    };
  }

  factory GetInstanceBackupsAutomaticDisk.fromMap(Map<String, dynamic> map) {
    return GetInstanceBackupsAutomaticDisk(
      filesystem: map['filesystem'] as String,
      label: map['label'] as String,
      size: map['size'] as int,
    );
  }
}


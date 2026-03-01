// ignore_for_file: unused_element, unnecessary_cast

class TaskDefinitionTmpfs {
  final String? containerPath;
  final List<String>? mountOptions;
  final int size;

  /// Creates a new [TaskDefinitionTmpfs].
  /// [containerPath] Optional.
  /// [mountOptions] Optional.
  /// [size] Required.
  TaskDefinitionTmpfs({
    this.containerPath,
    this.mountOptions,
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerPath': ?containerPath,
      'mountOptions': ?mountOptions,
      'size': size,
    };
  }

  factory TaskDefinitionTmpfs.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionTmpfs(
      containerPath: map['containerPath'] == null
          ? null
          : map['containerPath'] as String,
      mountOptions: map['mountOptions'] == null
          ? null
          : (map['mountOptions'] as List).cast<String>(),
      size: map['size'] as int,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast


class GetClustersClusterBootstrapActionList {
  /// Parameters of the boot operation.
  final String arg;
  /// The name of the boot operation.
  final String name;
  /// Boot operation script path.
  final String path;

  /// Creates a new [GetClustersClusterBootstrapActionList].
  /// [arg] Parameters of the boot operation.
  /// [name] The name of the boot operation.
  /// [path] Boot operation script path.
  GetClustersClusterBootstrapActionList({
    required this.arg,
    required this.name,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arg': arg,
      'name': name,
      'path': path,
    };
  }

  factory GetClustersClusterBootstrapActionList.fromMap(Map<String, dynamic> map) {
    return GetClustersClusterBootstrapActionList(
      arg: map['arg'] as String,
      name: map['name'] as String,
      path: map['path'] as String,
    );
  }
}


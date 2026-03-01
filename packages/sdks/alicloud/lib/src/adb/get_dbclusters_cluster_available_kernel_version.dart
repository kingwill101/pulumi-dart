// ignore_for_file: unused_element, unnecessary_cast


class GetDBClustersClusterAvailableKernelVersion {
  /// The maintenance expiration time of the version
  final String expireDate;
  /// The minor version. Example: 3.1.9.
  final String kernelVersion;
  /// The time when the minor version was released.
  final String releaseDate;

  /// Creates a new [GetDBClustersClusterAvailableKernelVersion].
  /// [expireDate] The maintenance expiration time of the version
  /// [kernelVersion] The minor version. Example: 3.1.9.
  /// [releaseDate] The time when the minor version was released.
  GetDBClustersClusterAvailableKernelVersion({
    required this.expireDate,
    required this.kernelVersion,
    required this.releaseDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expireDate': expireDate,
      'kernelVersion': kernelVersion,
      'releaseDate': releaseDate,
    };
  }

  factory GetDBClustersClusterAvailableKernelVersion.fromMap(Map<String, dynamic> map) {
    return GetDBClustersClusterAvailableKernelVersion(
      expireDate: map['expireDate'] as String,
      kernelVersion: map['kernelVersion'] as String,
      releaseDate: map['releaseDate'] as String,
    );
  }
}


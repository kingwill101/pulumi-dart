// ignore_for_file: unused_element, unnecessary_cast


class GetClustersClusterAvailableKernelVersion {
  final String expireDate;
  final String kernelVersion;
  final String releaseDate;

  /// Creates a new [GetClustersClusterAvailableKernelVersion].
  /// [expireDate] Required.
  /// [kernelVersion] Required.
  /// [releaseDate] Required.
  GetClustersClusterAvailableKernelVersion({
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

  factory GetClustersClusterAvailableKernelVersion.fromMap(Map<String, dynamic> map) {
    return GetClustersClusterAvailableKernelVersion(
      expireDate: map['expireDate'] as String,
      kernelVersion: map['kernelVersion'] as String,
      releaseDate: map['releaseDate'] as String,
    );
  }
}


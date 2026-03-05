// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDBClustersClusterAvailableKernelVersion {
  /// The maintenance expiration time of the version
  final pulumi.Input<String> expireDate;
  /// The minor version. Example: 3.1.9.
  final pulumi.Input<String> kernelVersion;
  /// The time when the minor version was released.
  final pulumi.Input<String> releaseDate;

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
      expireDate: pulumi.Input.fromValue(map['expireDate'] as String),
      kernelVersion: pulumi.Input.fromValue(map['kernelVersion'] as String),
      releaseDate: pulumi.Input.fromValue(map['releaseDate'] as String),
    );
  }
}


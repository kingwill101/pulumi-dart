// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClustersClusterAvailableKernelVersion {
  final pulumi.Input<String> expireDate;
  final pulumi.Input<String> kernelVersion;
  final pulumi.Input<String> releaseDate;

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
      expireDate: pulumi.Input.fromValue(map['expireDate'] as String),
      kernelVersion: pulumi.Input.fromValue(map['kernelVersion'] as String),
      releaseDate: pulumi.Input.fromValue(map['releaseDate'] as String),
    );
  }
}


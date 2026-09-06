// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of a management cluster
class ManagementCluster {
  /// The cluster size
  final pulumi.Input<int?>? clusterSize;
  /// The hosts
  final pulumi.Input<List<String>?>? hosts;
  /// Name of the vsan datastore associated with the cluster
  final pulumi.Input<String?>? vsanDatastoreName;

  /// Creates a new [ManagementCluster].
  /// [clusterSize] The cluster size
  /// [hosts] The hosts
  /// [vsanDatastoreName] Name of the vsan datastore associated with the cluster
  const ManagementCluster({
    this.clusterSize,
    this.hosts,
    this.vsanDatastoreName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterSize': ?clusterSize,
      'hosts': ?hosts,
      'vsanDatastoreName': ?vsanDatastoreName,
    };
  }

  factory ManagementCluster.fromMap(Map<String, dynamic> map) {
    return ManagementCluster(
      clusterSize: (() { final guardedValue = map['clusterSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      hosts: (() { final guardedValue = map['hosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vsanDatastoreName: (() { final guardedValue = map['vsanDatastoreName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

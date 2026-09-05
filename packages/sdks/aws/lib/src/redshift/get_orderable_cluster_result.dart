// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOrderableCluster.
class GetOrderableClusterResult {
  /// List of Availability Zone names where the Redshift Cluster is available.
  final List<String>? availabilityZones;
  final String? clusterType;
  final String? clusterVersion;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? nodeType;
  final List<String>? preferredNodeTypes;
  final String? region;

  /// Creates a new [GetOrderableClusterResult].
  /// [availabilityZones] List of Availability Zone names where the Redshift Cluster is available.
  /// [clusterType] Optional.
  /// [clusterVersion] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [nodeType] Optional.
  /// [preferredNodeTypes] Optional.
  /// [region] Optional.
  const GetOrderableClusterResult({
    this.availabilityZones,
    this.clusterType,
    this.clusterVersion,
    this.id,
    this.nodeType,
    this.preferredNodeTypes,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZones': ?availabilityZones,
      'clusterType': ?clusterType,
      'clusterVersion': ?clusterVersion,
      'id': ?id,
      'nodeType': ?nodeType,
      'preferredNodeTypes': ?preferredNodeTypes,
      'region': ?region,
    };
  }

  factory GetOrderableClusterResult.fromMap(Map<String, dynamic> map) {
    return GetOrderableClusterResult(
      availabilityZones: (() { final guardedValue = map['availabilityZones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      clusterType: (() { final guardedValue = map['clusterType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterVersion: (() { final guardedValue = map['clusterVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeType: (() { final guardedValue = map['nodeType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      preferredNodeTypes: (() { final guardedValue = map['preferredNodeTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

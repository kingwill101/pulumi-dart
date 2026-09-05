// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNodeGroups.
class GetNodeGroupsResult {
  final String? clusterName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Set of all node group names in an EKS Cluster.
  final List<String>? names;
  final String? region;

  /// Creates a new [GetNodeGroupsResult].
  /// [clusterName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [names] Set of all node group names in an EKS Cluster.
  /// [region] Optional.
  const GetNodeGroupsResult({
    this.clusterName,
    this.id,
    this.names,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': ?clusterName,
      'id': ?id,
      'names': ?names,
      'region': ?region,
    };
  }

  factory GetNodeGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupsResult(
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (() { final guardedValue = map['names']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

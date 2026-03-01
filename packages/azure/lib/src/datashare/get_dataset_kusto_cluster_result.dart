// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDatasetKustoCluster.
class GetDatasetKustoClusterResult {
  /// The name of the Data Share Dataset.
  final String displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The resource ID of the Kusto Cluster to be shared with the receiver.
  final String kustoClusterId;
  /// The location of the Kusto Cluster.
  final String kustoClusterLocation;
  final String name;
  final String shareId;

  /// Creates a new [GetDatasetKustoClusterResult].
  /// [displayName] The name of the Data Share Dataset.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kustoClusterId] The resource ID of the Kusto Cluster to be shared with the receiver.
  /// [kustoClusterLocation] The location of the Kusto Cluster.
  /// [name] Required.
  /// [shareId] Required.
  GetDatasetKustoClusterResult({
    required this.displayName,
    required this.id,
    required this.kustoClusterId,
    required this.kustoClusterLocation,
    required this.name,
    required this.shareId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'id': id,
      'kustoClusterId': kustoClusterId,
      'kustoClusterLocation': kustoClusterLocation,
      'name': name,
      'shareId': shareId,
    };
  }

  factory GetDatasetKustoClusterResult.fromMap(Map<String, dynamic> map) {
    return GetDatasetKustoClusterResult(
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      kustoClusterId: map['kustoClusterId'] as String,
      kustoClusterLocation: map['kustoClusterLocation'] as String,
      name: map['name'] as String,
      shareId: map['shareId'] as String,
    );
  }
}


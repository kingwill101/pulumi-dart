// ignore_for_file: unused_element, unnecessary_cast


/// For display only. Metadata associated with a Google Kubernetes Engine (GKE) cluster master.
class GKEMasterInfoResponse {
  /// URI of a GKE cluster network.
  final String clusterNetworkUri;
  /// URI of a GKE cluster.
  final String clusterUri;
  /// External IP address of a GKE cluster master.
  final String externalIp;
  /// Internal IP address of a GKE cluster master.
  final String internalIp;

  /// Creates a new [GKEMasterInfoResponse].
  /// [clusterNetworkUri] URI of a GKE cluster network.
  /// [clusterUri] URI of a GKE cluster.
  /// [externalIp] External IP address of a GKE cluster master.
  /// [internalIp] Internal IP address of a GKE cluster master.
  GKEMasterInfoResponse({
    required this.clusterNetworkUri,
    required this.clusterUri,
    required this.externalIp,
    required this.internalIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterNetworkUri': clusterNetworkUri,
      'clusterUri': clusterUri,
      'externalIp': externalIp,
      'internalIp': internalIp,
    };
  }

  factory GKEMasterInfoResponse.fromMap(Map<String, dynamic> map) {
    return GKEMasterInfoResponse(
      clusterNetworkUri: map['clusterNetworkUri'] as String,
      clusterUri: map['clusterUri'] as String,
      externalIp: map['externalIp'] as String,
      internalIp: map['internalIp'] as String,
    );
  }
}


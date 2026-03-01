// ignore_for_file: unused_element, unnecessary_cast


/// Stores the origin cluster information associated to a cache.
class OriginClusterInformationResponse {
  /// ONTAP Intercluster LIF IP addresses. One IP address per cluster node is required
  final List<String> peerAddresses;
  /// ONTAP cluster name of external cluster hosting the origin volume
  final String peerClusterName;
  /// External origin volume name associated to this cache
  final String peerVolumeName;
  /// External Vserver (SVM) name  name of the SVM hosting the origin volume
  final String peerVserverName;

  /// Creates a new [OriginClusterInformationResponse].
  /// [peerAddresses] ONTAP Intercluster LIF IP addresses. One IP address per cluster node is required
  /// [peerClusterName] ONTAP cluster name of external cluster hosting the origin volume
  /// [peerVolumeName] External origin volume name associated to this cache
  /// [peerVserverName] External Vserver (SVM) name  name of the SVM hosting the origin volume
  OriginClusterInformationResponse({
    required this.peerAddresses,
    required this.peerClusterName,
    required this.peerVolumeName,
    required this.peerVserverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peerAddresses': peerAddresses,
      'peerClusterName': peerClusterName,
      'peerVolumeName': peerVolumeName,
      'peerVserverName': peerVserverName,
    };
  }

  factory OriginClusterInformationResponse.fromMap(Map<String, dynamic> map) {
    return OriginClusterInformationResponse(
      peerAddresses: (map['peerAddresses'] as List).cast<String>(),
      peerClusterName: map['peerClusterName'] as String,
      peerVolumeName: map['peerVolumeName'] as String,
      peerVserverName: map['peerVserverName'] as String,
    );
  }
}


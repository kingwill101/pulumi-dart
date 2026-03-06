// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Stores the origin cluster information associated to a cache.
class OriginClusterInformationResponse {
  /// ONTAP Intercluster LIF IP addresses. One IP address per cluster node is required
  final pulumi.Input<List<String>> peerAddresses;
  /// ONTAP cluster name of external cluster hosting the origin volume
  final pulumi.Input<String> peerClusterName;
  /// External origin volume name associated to this cache
  final pulumi.Input<String> peerVolumeName;
  /// External Vserver (SVM) name  name of the SVM hosting the origin volume
  final pulumi.Input<String> peerVserverName;

  /// Creates a new [OriginClusterInformationResponse].
  /// [peerAddresses] ONTAP Intercluster LIF IP addresses. One IP address per cluster node is required
  /// [peerClusterName] ONTAP cluster name of external cluster hosting the origin volume
  /// [peerVolumeName] External origin volume name associated to this cache
  /// [peerVserverName] External Vserver (SVM) name  name of the SVM hosting the origin volume
  const OriginClusterInformationResponse({
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
      peerAddresses: pulumi.Input.fromValue((map['peerAddresses'] as List).cast<String>()),
      peerClusterName: pulumi.Input.fromValue(map['peerClusterName'] as String),
      peerVolumeName: pulumi.Input.fromValue(map['peerVolumeName'] as String),
      peerVserverName: pulumi.Input.fromValue(map['peerVserverName'] as String),
    );
  }
}


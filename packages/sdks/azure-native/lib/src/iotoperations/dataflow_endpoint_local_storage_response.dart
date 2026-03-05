// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Local persistent volume endpoint properties
class DataflowEndpointLocalStorageResponse {
  /// Persistent volume claim name.
  final pulumi.Input<String> persistentVolumeClaimRef;

  /// Creates a new [DataflowEndpointLocalStorageResponse].
  /// [persistentVolumeClaimRef] Persistent volume claim name.
  DataflowEndpointLocalStorageResponse({
    required this.persistentVolumeClaimRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'persistentVolumeClaimRef': persistentVolumeClaimRef,
    };
  }

  factory DataflowEndpointLocalStorageResponse.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointLocalStorageResponse(
      persistentVolumeClaimRef: pulumi.Input.fromValue(map['persistentVolumeClaimRef'] as String),
    );
  }
}


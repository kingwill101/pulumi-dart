// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Local persistent volume endpoint properties
class DataflowEndpointLocalStorage {
  /// Persistent volume claim name.
  final pulumi.Input<String> persistentVolumeClaimRef;

  /// Creates a new [DataflowEndpointLocalStorage].
  /// [persistentVolumeClaimRef] Persistent volume claim name.
  const DataflowEndpointLocalStorage({
    required this.persistentVolumeClaimRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'persistentVolumeClaimRef': persistentVolumeClaimRef,
    };
  }

  factory DataflowEndpointLocalStorage.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointLocalStorage(
      persistentVolumeClaimRef: pulumi.Input.fromValue(map['persistentVolumeClaimRef'] as String),
    );
  }
}


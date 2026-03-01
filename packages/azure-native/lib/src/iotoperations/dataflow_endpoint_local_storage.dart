// ignore_for_file: unused_element, unnecessary_cast


/// Local persistent volume endpoint properties
class DataflowEndpointLocalStorage {
  /// Persistent volume claim name.
  final String persistentVolumeClaimRef;

  /// Creates a new [DataflowEndpointLocalStorage].
  /// [persistentVolumeClaimRef] Persistent volume claim name.
  DataflowEndpointLocalStorage({
    required this.persistentVolumeClaimRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'persistentVolumeClaimRef': persistentVolumeClaimRef,
    };
  }

  factory DataflowEndpointLocalStorage.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointLocalStorage(
      persistentVolumeClaimRef: map['persistentVolumeClaimRef'] as String,
    );
  }
}


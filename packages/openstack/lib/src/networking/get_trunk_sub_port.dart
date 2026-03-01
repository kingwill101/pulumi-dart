// ignore_for_file: unused_element, unnecessary_cast


class GetTrunkSubPort {
  /// The ID of the trunk parent port.
  final String portId;
  /// The numeric id of the subport segment.
  final int segmentationId;
  /// The segmenation tecnology used, e.g., "vlan".
  final String segmentationType;

  /// Creates a new [GetTrunkSubPort].
  /// [portId] The ID of the trunk parent port.
  /// [segmentationId] The numeric id of the subport segment.
  /// [segmentationType] The segmenation tecnology used, e.g., "vlan".
  GetTrunkSubPort({
    required this.portId,
    required this.segmentationId,
    required this.segmentationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'portId': portId,
      'segmentationId': segmentationId,
      'segmentationType': segmentationType,
    };
  }

  factory GetTrunkSubPort.fromMap(Map<String, dynamic> map) {
    return GetTrunkSubPort(
      portId: map['portId'] as String,
      segmentationId: map['segmentationId'] as int,
      segmentationType: map['segmentationType'] as String,
    );
  }
}


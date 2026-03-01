// ignore_for_file: unused_element, unnecessary_cast


/// Application specific parameters for the placement of volumes in the volume group
class PlacementKeyValuePairsResponse {
  /// Key for an application specific parameter for the placement of volumes in the volume group
  final String key;
  /// Value for an application specific parameter for the placement of volumes in the volume group
  final String value;

  /// Creates a new [PlacementKeyValuePairsResponse].
  /// [key] Key for an application specific parameter for the placement of volumes in the volume group
  /// [value] Value for an application specific parameter for the placement of volumes in the volume group
  PlacementKeyValuePairsResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory PlacementKeyValuePairsResponse.fromMap(Map<String, dynamic> map) {
    return PlacementKeyValuePairsResponse(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}


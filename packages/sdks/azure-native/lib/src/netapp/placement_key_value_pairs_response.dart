// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Application specific parameters for the placement of volumes in the volume group
class PlacementKeyValuePairsResponse {
  /// Key for an application specific parameter for the placement of volumes in the volume group
  final pulumi.Input<String> key;
  /// Value for an application specific parameter for the placement of volumes in the volume group
  final pulumi.Input<String> value;

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
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_db_system_shapes_db_system_shape/get_db_system_shapes_db_system_shape.dart';

/// Result data returned by getDbSystemShapes.
class GetDbSystemShapesResult {
  final String? availabilityZoneId;

  /// The list of shapes and their properties. Information about a hardware system model (shape) that's available for an Exadata infrastructure. The shape determines resources, such as CPU cores, memory, and storage, to allocate to the Exadata infrastructure.
  final List<GetDbSystemShapesDbSystemShape> dbSystemShapes;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  GetDbSystemShapesResult({
    this.availabilityZoneId,
    required this.dbSystemShapes,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final availabilityZoneIdValue = availabilityZoneId;
    if (availabilityZoneIdValue != null) {
      map['availabilityZoneId'] = availabilityZoneIdValue;
    }
    map['dbSystemShapes'] =
        Input.encodeList<GetDbSystemShapesDbSystemShape, Map<String, dynamic>>(
            dbSystemShapes, (value) => value.toMap());
    map['id'] = id;
    map['region'] = region;
    return map;
  }

  factory GetDbSystemShapesResult.fromMap(Map<String, dynamic> map) {
    return GetDbSystemShapesResult(
      availabilityZoneId: map['availabilityZoneId'] == null
          ? null
          : map['availabilityZoneId'] as String,
      dbSystemShapes: Input.decodeList<GetDbSystemShapesDbSystemShape>(
          map['dbSystemShapes'],
          (value) => GetDbSystemShapesDbSystemShape.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}

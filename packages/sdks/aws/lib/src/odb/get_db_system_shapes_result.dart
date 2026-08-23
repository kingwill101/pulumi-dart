// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_system_shapes_db_system_shape.dart';

/// Result data returned by getDbSystemShapes.
class GetDbSystemShapesResult {
  final String? availabilityZoneId;
  /// List of shapes and their properties. Information about a hardware system model (shape) that's available for an Exadata infrastructure. The shape determines resources, such as CPU cores, memory, and storage, to allocate to the Exadata infrastructure.
  final List<GetDbSystemShapesDbSystemShape> dbSystemShapes;
  final String region;

  /// Creates a new [GetDbSystemShapesResult].
  /// [availabilityZoneId] Optional.
  /// [dbSystemShapes] List of shapes and their properties. Information about a hardware system model (shape) that's available for an Exadata infrastructure. The shape determines resources, such as CPU cores, memory, and storage, to allocate to the Exadata infrastructure.
  /// [region] Required.
  const GetDbSystemShapesResult({
    this.availabilityZoneId,
    required this.dbSystemShapes,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZoneId': ?availabilityZoneId,
      'dbSystemShapes': pulumi.Input.encodeList<GetDbSystemShapesDbSystemShape, Map<String, dynamic>>(dbSystemShapes, (value) => value.toMap()),
      'region': region,
    };
  }

  factory GetDbSystemShapesResult.fromMap(Map<String, dynamic> map) {
    return GetDbSystemShapesResult(
      availabilityZoneId: (() { final guardedValue = map['availabilityZoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbSystemShapes: pulumi.Input.decodeList<GetDbSystemShapesDbSystemShape>(map['dbSystemShapes']!, (value) => GetDbSystemShapesDbSystemShape.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
    );
  }
}

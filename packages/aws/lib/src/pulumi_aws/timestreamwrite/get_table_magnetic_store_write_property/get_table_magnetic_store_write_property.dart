// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_table_magnetic_store_write_property_magnetic_store_rejected_data_location/get_table_magnetic_store_write_property_magnetic_store_rejected_data_location.dart';

class GetTableMagneticStoreWriteProperty {
  /// Flag that is set based on if magnetic store writes are enabled.
  final bool enableMagneticStoreWrites;

  /// Object containing the following attributes to describe error reports for records rejected during magnetic store writes.
  final List<
          GetTableMagneticStoreWritePropertyMagneticStoreRejectedDataLocation>
      magneticStoreRejectedDataLocations;

  GetTableMagneticStoreWriteProperty({
    required this.enableMagneticStoreWrites,
    required this.magneticStoreRejectedDataLocations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableMagneticStoreWrites'] = enableMagneticStoreWrites;
    map['magneticStoreRejectedDataLocations'] = pulumi.Input.encodeList<
            GetTableMagneticStoreWritePropertyMagneticStoreRejectedDataLocation,
            Map<String, dynamic>>(
        magneticStoreRejectedDataLocations, (value) => value.toMap());
    return map;
  }

  factory GetTableMagneticStoreWriteProperty.fromMap(Map<String, dynamic> map) {
    return GetTableMagneticStoreWriteProperty(
      enableMagneticStoreWrites: map['enableMagneticStoreWrites'] as bool,
      magneticStoreRejectedDataLocations: pulumi.Input.decodeList<
              GetTableMagneticStoreWritePropertyMagneticStoreRejectedDataLocation>(
          map['magneticStoreRejectedDataLocations'],
          (value) =>
              GetTableMagneticStoreWritePropertyMagneticStoreRejectedDataLocation
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_table_magnetic_store_write_property_magnetic_store_rejected_data_location.dart';

class GetTableMagneticStoreWriteProperty {
  /// Flag that is set based on if magnetic store writes are enabled.
  final pulumi.Input<bool> enableMagneticStoreWrites;

  /// Object containing the following attributes to describe error reports for records rejected during magnetic store writes.
  final pulumi.Input<
    List<GetTableMagneticStoreWritePropertyMagneticStoreRejectedDataLocation>
  >
  magneticStoreRejectedDataLocations;

  /// Creates a new [GetTableMagneticStoreWriteProperty].
  /// [enableMagneticStoreWrites] Flag that is set based on if magnetic store writes are enabled.
  /// [magneticStoreRejectedDataLocations] Object containing the following attributes to describe error reports for records rejected during magnetic store writes.
  GetTableMagneticStoreWriteProperty({
    required this.enableMagneticStoreWrites,
    required this.magneticStoreRejectedDataLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableMagneticStoreWrites': enableMagneticStoreWrites,
      'magneticStoreRejectedDataLocations':
          pulumi.Input.mapInputValue<
            List<
              GetTableMagneticStoreWritePropertyMagneticStoreRejectedDataLocation
            >,
            List<Map<String, dynamic>>
          >(
            magneticStoreRejectedDataLocations,
            (value) =>
                pulumi.Input.encodeList<
                  GetTableMagneticStoreWritePropertyMagneticStoreRejectedDataLocation,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetTableMagneticStoreWriteProperty.fromMap(Map<String, dynamic> map) {
    return GetTableMagneticStoreWriteProperty(
      enableMagneticStoreWrites: pulumi.Input.fromValue(
        map['enableMagneticStoreWrites'] as bool,
      ),
      magneticStoreRejectedDataLocations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetTableMagneticStoreWritePropertyMagneticStoreRejectedDataLocation
        >(
          map['magneticStoreRejectedDataLocations']!,
          (value) =>
              GetTableMagneticStoreWritePropertyMagneticStoreRejectedDataLocation.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}

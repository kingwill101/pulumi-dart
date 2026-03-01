// ignore_for_file: unused_element, unnecessary_cast

import 'table_magnetic_store_write_properties_magnetic_store_rejected_data_location.dart';

class TableMagneticStoreWriteProperties {
  /// A flag to enable magnetic store writes.
  final bool? enableMagneticStoreWrites;

  /// The location to write error reports for records rejected asynchronously during magnetic store writes. See Magnetic Store Rejected Data Location below for more details.
  final TableMagneticStoreWritePropertiesMagneticStoreRejectedDataLocation?
  magneticStoreRejectedDataLocation;

  /// Creates a new [TableMagneticStoreWriteProperties].
  /// [enableMagneticStoreWrites] A flag to enable magnetic store writes.
  /// [magneticStoreRejectedDataLocation] The location to write error reports for records rejected asynchronously during magnetic store writes. See Magnetic Store Rejected Data Location below for more details.
  TableMagneticStoreWriteProperties({
    this.enableMagneticStoreWrites,
    this.magneticStoreRejectedDataLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableMagneticStoreWrites': ?enableMagneticStoreWrites,
      'magneticStoreRejectedDataLocation':
          ?magneticStoreRejectedDataLocation == null
          ? null
          : magneticStoreRejectedDataLocation!.toMap(),
    };
  }

  factory TableMagneticStoreWriteProperties.fromMap(Map<String, dynamic> map) {
    return TableMagneticStoreWriteProperties(
      enableMagneticStoreWrites: map['enableMagneticStoreWrites'] == null
          ? null
          : map['enableMagneticStoreWrites'] as bool,
      magneticStoreRejectedDataLocation:
          map['magneticStoreRejectedDataLocation'] == null
          ? null
          : TableMagneticStoreWritePropertiesMagneticStoreRejectedDataLocation.fromMap(
              (map['magneticStoreRejectedDataLocation'] as Map)
                  .cast<String, dynamic>(),
            ),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_magnetic_store_write_properties_magnetic_store_rejected_data_location.dart';

class TableMagneticStoreWriteProperties {
  /// Whether to enable magnetic store writes.
  final pulumi.Input<bool?>? enableMagneticStoreWrites;
  /// Location to write error reports for records rejected asynchronously during magnetic store writes. See `magneticStoreRejectedDataLocation` Block below for more details.
  final pulumi.Input<TableMagneticStoreWritePropertiesMagneticStoreRejectedDataLocation?>? magneticStoreRejectedDataLocation;

  /// Creates a new [TableMagneticStoreWriteProperties].
  /// [enableMagneticStoreWrites] Whether to enable magnetic store writes.
  /// [magneticStoreRejectedDataLocation] Location to write error reports for records rejected asynchronously during magnetic store writes. See `magneticStoreRejectedDataLocation` Block below for more details.
  const TableMagneticStoreWriteProperties({
    this.enableMagneticStoreWrites,
    this.magneticStoreRejectedDataLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableMagneticStoreWrites': ?enableMagneticStoreWrites,
      'magneticStoreRejectedDataLocation': ?pulumi.Input.mapOptionalInputValue<TableMagneticStoreWritePropertiesMagneticStoreRejectedDataLocation, Map<String, dynamic>>(magneticStoreRejectedDataLocation, (value) => value.toMap()),
    };
  }

  factory TableMagneticStoreWriteProperties.fromMap(Map<String, dynamic> map) {
    return TableMagneticStoreWriteProperties(
      enableMagneticStoreWrites: (() { final guardedValue = map['enableMagneticStoreWrites']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      magneticStoreRejectedDataLocation: (() { final guardedValue = map['magneticStoreRejectedDataLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableMagneticStoreWritePropertiesMagneticStoreRejectedDataLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

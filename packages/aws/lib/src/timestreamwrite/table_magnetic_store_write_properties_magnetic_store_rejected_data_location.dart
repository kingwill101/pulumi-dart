// ignore_for_file: unused_element, unnecessary_cast

import 'table_magnetic_store_write_properties_magnetic_store_rejected_data_location_s3_configuration.dart';

class TableMagneticStoreWritePropertiesMagneticStoreRejectedDataLocation {
  /// Configuration of an S3 location to write error reports for records rejected, asynchronously, during magnetic store writes. See S3 Configuration below for more details.
  final TableMagneticStoreWritePropertiesMagneticStoreRejectedDataLocationS3Configuration?
  s3Configuration;

  /// Creates a new [TableMagneticStoreWritePropertiesMagneticStoreRejectedDataLocation].
  /// [s3Configuration] Configuration of an S3 location to write error reports for records rejected, asynchronously, during magnetic store writes. See S3 Configuration below for more details.
  TableMagneticStoreWritePropertiesMagneticStoreRejectedDataLocation({
    this.s3Configuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Configuration': ?s3Configuration == null
          ? null
          : s3Configuration!.toMap(),
    };
  }

  factory TableMagneticStoreWritePropertiesMagneticStoreRejectedDataLocation.fromMap(
    Map<String, dynamic> map,
  ) {
    return TableMagneticStoreWritePropertiesMagneticStoreRejectedDataLocation(
      s3Configuration: map['s3Configuration'] == null
          ? null
          : TableMagneticStoreWritePropertiesMagneticStoreRejectedDataLocationS3Configuration.fromMap(
              (map['s3Configuration'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

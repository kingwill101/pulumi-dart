// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_table_magnetic_store_write_property_magnetic_store_rejected_data_location_s3_configuration.dart';

class GetTableMagneticStoreWritePropertyMagneticStoreRejectedDataLocation {
  /// Object containing the following attributes to describe the configuration of an s3 location to write error reports for records rejected.
  final List<
    GetTableMagneticStoreWritePropertyMagneticStoreRejectedDataLocationS3Configuration
  >
  s3Configurations;

  /// Creates a new [GetTableMagneticStoreWritePropertyMagneticStoreRejectedDataLocation].
  /// [s3Configurations] Object containing the following attributes to describe the configuration of an s3 location to write error reports for records rejected.
  GetTableMagneticStoreWritePropertyMagneticStoreRejectedDataLocation({
    required this.s3Configurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Configurations':
          pulumi.Input.encodeList<
            GetTableMagneticStoreWritePropertyMagneticStoreRejectedDataLocationS3Configuration,
            Map<String, dynamic>
          >(s3Configurations, (value) => value.toMap()),
    };
  }

  factory GetTableMagneticStoreWritePropertyMagneticStoreRejectedDataLocation.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetTableMagneticStoreWritePropertyMagneticStoreRejectedDataLocation(
      s3Configurations:
          pulumi.Input.decodeList<
            GetTableMagneticStoreWritePropertyMagneticStoreRejectedDataLocationS3Configuration
          >(
            map['s3Configurations'],
            (value) =>
                GetTableMagneticStoreWritePropertyMagneticStoreRejectedDataLocationS3Configuration.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}

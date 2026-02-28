// ignore_for_file: unused_element, unnecessary_cast

import 'idc_application_service_integration_s3_access_grants_read_write_access.dart';

class IdcApplicationServiceIntegrationS3AccessGrants {
  /// S3 Access grants integration scope.
  final IdcApplicationServiceIntegrationS3AccessGrantsReadWriteAccess?
      readWriteAccess;

  /// Creates a new [IdcApplicationServiceIntegrationS3AccessGrants].
  /// [readWriteAccess] S3 Access grants integration scope.
  IdcApplicationServiceIntegrationS3AccessGrants({
    this.readWriteAccess,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final readWriteAccessValue = readWriteAccess;
    if (readWriteAccessValue != null) {
      map['readWriteAccess'] = readWriteAccessValue.toMap();
    }
    return map;
  }

  factory IdcApplicationServiceIntegrationS3AccessGrants.fromMap(
      Map<String, dynamic> map) {
    return IdcApplicationServiceIntegrationS3AccessGrants(
      readWriteAccess: map['readWriteAccess'] == null
          ? null
          : IdcApplicationServiceIntegrationS3AccessGrantsReadWriteAccess
              .fromMap((map['readWriteAccess'] as Map).cast<String, dynamic>()),
    );
  }
}

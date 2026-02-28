// ignore_for_file: unused_element, unnecessary_cast

import 'datastore_nfs_datastore_google_file_service.dart';
import 'datastore_nfs_datastore_third_party_file_service.dart';

class DatastoreNfsDatastore {
  /// Google service file service configuration
  /// Structure is documented below.
  final DatastoreNfsDatastoreGoogleFileService? googleFileService;

  /// Third party file service configuration
  /// Structure is documented below.
  final DatastoreNfsDatastoreThirdPartyFileService? thirdPartyFileService;

  /// Creates a new [DatastoreNfsDatastore].
  /// [googleFileService] Google service file service configuration
  /// [thirdPartyFileService] Third party file service configuration
  DatastoreNfsDatastore({
    this.googleFileService,
    this.thirdPartyFileService,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final googleFileServiceValue = googleFileService;
    if (googleFileServiceValue != null) {
      map['googleFileService'] = googleFileServiceValue.toMap();
    }
    final thirdPartyFileServiceValue = thirdPartyFileService;
    if (thirdPartyFileServiceValue != null) {
      map['thirdPartyFileService'] = thirdPartyFileServiceValue.toMap();
    }
    return map;
  }

  factory DatastoreNfsDatastore.fromMap(Map<String, dynamic> map) {
    return DatastoreNfsDatastore(
      googleFileService: map['googleFileService'] == null
          ? null
          : DatastoreNfsDatastoreGoogleFileService.fromMap(
              (map['googleFileService'] as Map).cast<String, dynamic>()),
      thirdPartyFileService: map['thirdPartyFileService'] == null
          ? null
          : DatastoreNfsDatastoreThirdPartyFileService.fromMap(
              (map['thirdPartyFileService'] as Map).cast<String, dynamic>()),
    );
  }
}

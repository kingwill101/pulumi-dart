// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_datastore_nfs_datastore_google_file_service/get_datastore_nfs_datastore_google_file_service.dart';
import '../get_datastore_nfs_datastore_third_party_file_service/get_datastore_nfs_datastore_third_party_file_service.dart';

class GetDatastoreNfsDatastore {
  /// Google service file service configuration
  final List<GetDatastoreNfsDatastoreGoogleFileService> googleFileServices;

  /// Third party file service configuration
  final List<GetDatastoreNfsDatastoreThirdPartyFileService>
      thirdPartyFileServices;

  GetDatastoreNfsDatastore({
    required this.googleFileServices,
    required this.thirdPartyFileServices,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['googleFileServices'] = pulumi.Input.encodeList<
        GetDatastoreNfsDatastoreGoogleFileService,
        Map<String, dynamic>>(googleFileServices, (value) => value.toMap());
    map['thirdPartyFileServices'] = pulumi.Input.encodeList<
        GetDatastoreNfsDatastoreThirdPartyFileService,
        Map<String, dynamic>>(thirdPartyFileServices, (value) => value.toMap());
    return map;
  }

  factory GetDatastoreNfsDatastore.fromMap(Map<String, dynamic> map) {
    return GetDatastoreNfsDatastore(
      googleFileServices:
          pulumi.Input.decodeList<GetDatastoreNfsDatastoreGoogleFileService>(
              map['googleFileServices'],
              (value) => GetDatastoreNfsDatastoreGoogleFileService.fromMap(
                  (value as Map).cast<String, dynamic>())),
      thirdPartyFileServices: pulumi.Input.decodeList<
              GetDatastoreNfsDatastoreThirdPartyFileService>(
          map['thirdPartyFileServices'],
          (value) => GetDatastoreNfsDatastoreThirdPartyFileService.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}

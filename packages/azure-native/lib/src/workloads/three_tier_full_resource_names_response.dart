// ignore_for_file: unused_element, unnecessary_cast

import 'application_server_full_resource_names_response.dart';
import 'central_server_full_resource_names_response.dart';
import 'database_server_full_resource_names_response.dart';
import 'shared_storage_resource_names_response.dart';

/// The resource name object where the specified values will be full resource names of the corresponding resources in a three tier SAP system.
class ThreeTierFullResourceNamesResponse {
  /// The full resource names object for application layer resources. The number of entries in this list should be equal to the number VMs to be created for application layer.
  final ApplicationServerFullResourceNamesResponse? applicationServer;
  /// The full resource names object for central server layer resources.
  final CentralServerFullResourceNamesResponse? centralServer;
  /// The full resource names object for database layer resources. The number of entries in this list should be equal to the number VMs to be created for database layer.
  final DatabaseServerFullResourceNamesResponse? databaseServer;
  /// The pattern type to be used for resource naming.
  /// Expected value is 'FullResourceName'.
  final String namingPatternType;
  /// The resource names object for shared storage.
  final SharedStorageResourceNamesResponse? sharedStorage;

  /// Creates a new [ThreeTierFullResourceNamesResponse].
  /// [applicationServer] The full resource names object for application layer resources. The number of entries in this list should be equal to the number VMs to be created for application layer.
  /// [centralServer] The full resource names object for central server layer resources.
  /// [databaseServer] The full resource names object for database layer resources. The number of entries in this list should be equal to the number VMs to be created for database layer.
  /// [namingPatternType] The pattern type to be used for resource naming.
  /// [sharedStorage] The resource names object for shared storage.
  ThreeTierFullResourceNamesResponse({
    this.applicationServer,
    this.centralServer,
    this.databaseServer,
    required this.namingPatternType,
    this.sharedStorage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationServer': ?applicationServer == null ? null : applicationServer!.toMap(),
      'centralServer': ?centralServer == null ? null : centralServer!.toMap(),
      'databaseServer': ?databaseServer == null ? null : databaseServer!.toMap(),
      'namingPatternType': namingPatternType,
      'sharedStorage': ?sharedStorage == null ? null : sharedStorage!.toMap(),
    };
  }

  factory ThreeTierFullResourceNamesResponse.fromMap(Map<String, dynamic> map) {
    return ThreeTierFullResourceNamesResponse(
      applicationServer: map['applicationServer'] == null ? null : ApplicationServerFullResourceNamesResponse.fromMap((map['applicationServer'] as Map).cast<String, dynamic>()),
      centralServer: map['centralServer'] == null ? null : CentralServerFullResourceNamesResponse.fromMap((map['centralServer'] as Map).cast<String, dynamic>()),
      databaseServer: map['databaseServer'] == null ? null : DatabaseServerFullResourceNamesResponse.fromMap((map['databaseServer'] as Map).cast<String, dynamic>()),
      namingPatternType: map['namingPatternType'] as String,
      sharedStorage: map['sharedStorage'] == null ? null : SharedStorageResourceNamesResponse.fromMap((map['sharedStorage'] as Map).cast<String, dynamic>()),
    );
  }
}


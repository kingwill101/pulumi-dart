// ignore_for_file: unused_element, unnecessary_cast

import 'data_lake_fabric_storage_authentication.dart';
import 'fabric_guids.dart';
import 'fabric_names.dart';

/// DataLake Fabric Storage details.
class DataLakeFabricStorage {
  /// DataLake fabric storage authentication details.
  final DataLakeFabricStorageAuthentication authentication;
  /// DataLake fabric storage endpoint to use.
  final String endpoint;
  /// Fabric path type to use.
  final String fabricPath;
  /// Fabric one lake Guids.
  final FabricGuids? guids;
  /// Fabric one lake Names.
  final FabricNames? names;

  /// Creates a new [DataLakeFabricStorage].
  /// [authentication] DataLake fabric storage authentication details.
  /// [endpoint] DataLake fabric storage endpoint to use.
  /// [fabricPath] Fabric path type to use.
  /// [guids] Fabric one lake Guids.
  /// [names] Fabric one lake Names.
  DataLakeFabricStorage({
    required this.authentication,
    required this.endpoint,
    required this.fabricPath,
    this.guids,
    this.names,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': authentication.toMap(),
      'endpoint': endpoint,
      'fabricPath': fabricPath,
      'guids': ?guids == null ? null : guids!.toMap(),
      'names': ?names == null ? null : names!.toMap(),
    };
  }

  factory DataLakeFabricStorage.fromMap(Map<String, dynamic> map) {
    return DataLakeFabricStorage(
      authentication: DataLakeFabricStorageAuthentication.fromMap((map['authentication'] as Map).cast<String, dynamic>()),
      endpoint: map['endpoint'] as String,
      fabricPath: map['fabricPath'] as String,
      guids: map['guids'] == null ? null : FabricGuids.fromMap((map['guids'] as Map).cast<String, dynamic>()),
      names: map['names'] == null ? null : FabricNames.fromMap((map['names'] as Map).cast<String, dynamic>()),
    );
  }
}


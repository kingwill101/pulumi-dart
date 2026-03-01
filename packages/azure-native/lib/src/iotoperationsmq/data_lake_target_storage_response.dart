// ignore_for_file: unused_element, unnecessary_cast

import 'data_lake_fabric_storage_response.dart';
import 'data_lake_local_storage_response.dart';
import 'data_lake_service_storage_response.dart';

/// Target storage for the DataLake. NOTE - Enum only storage is supported at a time.
class DataLakeTargetStorageResponse {
  /// DataLake service storage details.
  final DataLakeServiceStorageResponse? datalakeStorage;
  /// Fabric one lake storage details.
  final DataLakeFabricStorageResponse? fabricOneLake;
  /// Local storage details.
  final DataLakeLocalStorageResponse? localStorage;

  /// Creates a new [DataLakeTargetStorageResponse].
  /// [datalakeStorage] DataLake service storage details.
  /// [fabricOneLake] Fabric one lake storage details.
  /// [localStorage] Local storage details.
  DataLakeTargetStorageResponse({
    this.datalakeStorage,
    this.fabricOneLake,
    this.localStorage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datalakeStorage': ?datalakeStorage == null ? null : datalakeStorage!.toMap(),
      'fabricOneLake': ?fabricOneLake == null ? null : fabricOneLake!.toMap(),
      'localStorage': ?localStorage == null ? null : localStorage!.toMap(),
    };
  }

  factory DataLakeTargetStorageResponse.fromMap(Map<String, dynamic> map) {
    return DataLakeTargetStorageResponse(
      datalakeStorage: map['datalakeStorage'] == null ? null : DataLakeServiceStorageResponse.fromMap((map['datalakeStorage'] as Map).cast<String, dynamic>()),
      fabricOneLake: map['fabricOneLake'] == null ? null : DataLakeFabricStorageResponse.fromMap((map['fabricOneLake'] as Map).cast<String, dynamic>()),
      localStorage: map['localStorage'] == null ? null : DataLakeLocalStorageResponse.fromMap((map['localStorage'] as Map).cast<String, dynamic>()),
    );
  }
}


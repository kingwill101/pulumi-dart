// ignore_for_file: unused_element, unnecessary_cast

import 'data_lake_fabric_storage.dart';
import 'data_lake_local_storage.dart';
import 'data_lake_service_storage.dart';

/// Target storage for the DataLake. NOTE - Enum only storage is supported at a time.
class DataLakeTargetStorage {
  /// DataLake service storage details.
  final DataLakeServiceStorage? datalakeStorage;
  /// Fabric one lake storage details.
  final DataLakeFabricStorage? fabricOneLake;
  /// Local storage details.
  final DataLakeLocalStorage? localStorage;

  /// Creates a new [DataLakeTargetStorage].
  /// [datalakeStorage] DataLake service storage details.
  /// [fabricOneLake] Fabric one lake storage details.
  /// [localStorage] Local storage details.
  DataLakeTargetStorage({
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

  factory DataLakeTargetStorage.fromMap(Map<String, dynamic> map) {
    return DataLakeTargetStorage(
      datalakeStorage: map['datalakeStorage'] == null ? null : DataLakeServiceStorage.fromMap((map['datalakeStorage'] as Map).cast<String, dynamic>()),
      fabricOneLake: map['fabricOneLake'] == null ? null : DataLakeFabricStorage.fromMap((map['fabricOneLake'] as Map).cast<String, dynamic>()),
      localStorage: map['localStorage'] == null ? null : DataLakeLocalStorage.fromMap((map['localStorage'] as Map).cast<String, dynamic>()),
    );
  }
}


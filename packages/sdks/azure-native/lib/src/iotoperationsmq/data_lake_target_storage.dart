// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_lake_fabric_storage.dart';
import 'data_lake_local_storage.dart';
import 'data_lake_service_storage.dart';

/// Target storage for the DataLake. NOTE - Enum only storage is supported at a time.
class DataLakeTargetStorage {
  /// DataLake service storage details.
  final pulumi.Input<DataLakeServiceStorage>? datalakeStorage;
  /// Fabric one lake storage details.
  final pulumi.Input<DataLakeFabricStorage>? fabricOneLake;
  /// Local storage details.
  final pulumi.Input<DataLakeLocalStorage>? localStorage;

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
      'datalakeStorage': ?pulumi.Input.mapOptionalInputValue<DataLakeServiceStorage, Map<String, dynamic>>(datalakeStorage, (value) => value.toMap()),
      'fabricOneLake': ?pulumi.Input.mapOptionalInputValue<DataLakeFabricStorage, Map<String, dynamic>>(fabricOneLake, (value) => value.toMap()),
      'localStorage': ?pulumi.Input.mapOptionalInputValue<DataLakeLocalStorage, Map<String, dynamic>>(localStorage, (value) => value.toMap()),
    };
  }

  factory DataLakeTargetStorage.fromMap(Map<String, dynamic> map) {
    return DataLakeTargetStorage(
      datalakeStorage: map['datalakeStorage'] == null ? null : (DataLakeServiceStorage.fromMap((map['datalakeStorage'] as Map).cast<String, dynamic>())).input(),
      fabricOneLake: map['fabricOneLake'] == null ? null : (DataLakeFabricStorage.fromMap((map['fabricOneLake'] as Map).cast<String, dynamic>())).input(),
      localStorage: map['localStorage'] == null ? null : (DataLakeLocalStorage.fromMap((map['localStorage'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


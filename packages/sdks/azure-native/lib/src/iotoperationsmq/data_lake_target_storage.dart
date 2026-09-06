// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_lake_fabric_storage.dart';
import 'data_lake_local_storage.dart';
import 'data_lake_service_storage.dart';

/// Target storage for the DataLake. NOTE - Enum only storage is supported at a time.
class DataLakeTargetStorage {
  /// DataLake service storage details.
  final pulumi.Input<DataLakeServiceStorage?>? datalakeStorage;
  /// Fabric one lake storage details.
  final pulumi.Input<DataLakeFabricStorage?>? fabricOneLake;
  /// Local storage details.
  final pulumi.Input<DataLakeLocalStorage?>? localStorage;

  /// Creates a new [DataLakeTargetStorage].
  /// [datalakeStorage] DataLake service storage details.
  /// [fabricOneLake] Fabric one lake storage details.
  /// [localStorage] Local storage details.
  const DataLakeTargetStorage({
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
      datalakeStorage: (() { final guardedValue = map['datalakeStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataLakeServiceStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fabricOneLake: (() { final guardedValue = map['fabricOneLake']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataLakeFabricStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      localStorage: (() { final guardedValue = map['localStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataLakeLocalStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

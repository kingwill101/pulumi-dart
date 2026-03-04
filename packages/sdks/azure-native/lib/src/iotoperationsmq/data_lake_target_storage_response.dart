// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_lake_fabric_storage_response.dart';
import 'data_lake_local_storage_response.dart';
import 'data_lake_service_storage_response.dart';

/// Target storage for the DataLake. NOTE - Enum only storage is supported at a time.
class DataLakeTargetStorageResponse {
  /// DataLake service storage details.
  final pulumi.Input<DataLakeServiceStorageResponse>? datalakeStorage;

  /// Fabric one lake storage details.
  final pulumi.Input<DataLakeFabricStorageResponse>? fabricOneLake;

  /// Local storage details.
  final pulumi.Input<DataLakeLocalStorageResponse>? localStorage;

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
      'datalakeStorage':
          ?pulumi.Input.mapOptionalInputValue<
            DataLakeServiceStorageResponse,
            Map<String, dynamic>
          >(datalakeStorage, (value) => value.toMap()),
      'fabricOneLake':
          ?pulumi.Input.mapOptionalInputValue<
            DataLakeFabricStorageResponse,
            Map<String, dynamic>
          >(fabricOneLake, (value) => value.toMap()),
      'localStorage':
          ?pulumi.Input.mapOptionalInputValue<
            DataLakeLocalStorageResponse,
            Map<String, dynamic>
          >(localStorage, (value) => value.toMap()),
    };
  }

  factory DataLakeTargetStorageResponse.fromMap(Map<String, dynamic> map) {
    return DataLakeTargetStorageResponse(
      datalakeStorage: (() {
        final guardedValue = map['datalakeStorage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DataLakeServiceStorageResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      fabricOneLake: (() {
        final guardedValue = map['fabricOneLake'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DataLakeFabricStorageResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      localStorage: (() {
        final guardedValue = map['localStorage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DataLakeLocalStorageResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}

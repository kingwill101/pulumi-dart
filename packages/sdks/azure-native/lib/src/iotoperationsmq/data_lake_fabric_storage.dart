// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_lake_fabric_storage_authentication.dart';
import 'fabric_guids.dart';
import 'fabric_names.dart';

/// DataLake Fabric Storage details.
class DataLakeFabricStorage {
  /// DataLake fabric storage authentication details.
  final pulumi.Input<DataLakeFabricStorageAuthentication> authentication;
  /// DataLake fabric storage endpoint to use.
  final pulumi.Input<String> endpoint;
  /// Fabric path type to use.
  final pulumi.Input<String> fabricPath;
  /// Fabric one lake Guids.
  final pulumi.Input<FabricGuids>? guids;
  /// Fabric one lake Names.
  final pulumi.Input<FabricNames>? names;

  /// Creates a new [DataLakeFabricStorage].
  /// [authentication] DataLake fabric storage authentication details.
  /// [endpoint] DataLake fabric storage endpoint to use.
  /// [fabricPath] Fabric path type to use.
  /// [guids] Fabric one lake Guids.
  /// [names] Fabric one lake Names.
  const DataLakeFabricStorage({
    required this.authentication,
    required this.endpoint,
    required this.fabricPath,
    this.guids,
    this.names,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': pulumi.Input.mapInputValue<DataLakeFabricStorageAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'endpoint': endpoint,
      'fabricPath': fabricPath,
      'guids': ?pulumi.Input.mapOptionalInputValue<FabricGuids, Map<String, dynamic>>(guids, (value) => value.toMap()),
      'names': ?pulumi.Input.mapOptionalInputValue<FabricNames, Map<String, dynamic>>(names, (value) => value.toMap()),
    };
  }

  factory DataLakeFabricStorage.fromMap(Map<String, dynamic> map) {
    return DataLakeFabricStorage(
      authentication: pulumi.Input.fromValue(DataLakeFabricStorageAuthentication.fromMap((map['authentication']! as Map).cast<String, dynamic>())),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      fabricPath: pulumi.Input.fromValue(map['fabricPath'] as String),
      guids: (() { final guardedValue = map['guids']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FabricGuids.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      names: (() { final guardedValue = map['names']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FabricNames.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


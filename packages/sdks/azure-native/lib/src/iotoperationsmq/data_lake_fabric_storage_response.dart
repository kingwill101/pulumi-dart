// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_lake_fabric_storage_authentication_response.dart';
import 'fabric_guids_response.dart';
import 'fabric_names_response.dart';

/// DataLake Fabric Storage details.
class DataLakeFabricStorageResponse {
  /// DataLake fabric storage authentication details.
  final pulumi.Input<DataLakeFabricStorageAuthenticationResponse> authentication;
  /// DataLake fabric storage endpoint to use.
  final pulumi.Input<String> endpoint;
  /// Fabric path type to use.
  final pulumi.Input<String> fabricPath;
  /// Fabric one lake Guids.
  final pulumi.Input<FabricGuidsResponse>? guids;
  /// Fabric one lake Names.
  final pulumi.Input<FabricNamesResponse>? names;

  /// Creates a new [DataLakeFabricStorageResponse].
  /// [authentication] DataLake fabric storage authentication details.
  /// [endpoint] DataLake fabric storage endpoint to use.
  /// [fabricPath] Fabric path type to use.
  /// [guids] Fabric one lake Guids.
  /// [names] Fabric one lake Names.
  const DataLakeFabricStorageResponse({
    required this.authentication,
    required this.endpoint,
    required this.fabricPath,
    this.guids,
    this.names,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': pulumi.Input.mapInputValue<DataLakeFabricStorageAuthenticationResponse, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'endpoint': endpoint,
      'fabricPath': fabricPath,
      'guids': ?pulumi.Input.mapOptionalInputValue<FabricGuidsResponse, Map<String, dynamic>>(guids, (value) => value.toMap()),
      'names': ?pulumi.Input.mapOptionalInputValue<FabricNamesResponse, Map<String, dynamic>>(names, (value) => value.toMap()),
    };
  }

  factory DataLakeFabricStorageResponse.fromMap(Map<String, dynamic> map) {
    return DataLakeFabricStorageResponse(
      authentication: pulumi.Input.fromValue(DataLakeFabricStorageAuthenticationResponse.fromMap((map['authentication']! as Map).cast<String, dynamic>())),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      fabricPath: pulumi.Input.fromValue(map['fabricPath'] as String),
      guids: (() { final guardedValue = map['guids']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FabricGuidsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      names: (() { final guardedValue = map['names']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FabricNamesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


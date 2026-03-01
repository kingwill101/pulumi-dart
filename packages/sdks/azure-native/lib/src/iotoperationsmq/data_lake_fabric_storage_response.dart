// ignore_for_file: unused_element, unnecessary_cast

import 'data_lake_fabric_storage_authentication_response.dart';
import 'fabric_guids_response.dart';
import 'fabric_names_response.dart';

/// DataLake Fabric Storage details.
class DataLakeFabricStorageResponse {
  /// DataLake fabric storage authentication details.
  final DataLakeFabricStorageAuthenticationResponse authentication;
  /// DataLake fabric storage endpoint to use.
  final String endpoint;
  /// Fabric path type to use.
  final String fabricPath;
  /// Fabric one lake Guids.
  final FabricGuidsResponse? guids;
  /// Fabric one lake Names.
  final FabricNamesResponse? names;

  /// Creates a new [DataLakeFabricStorageResponse].
  /// [authentication] DataLake fabric storage authentication details.
  /// [endpoint] DataLake fabric storage endpoint to use.
  /// [fabricPath] Fabric path type to use.
  /// [guids] Fabric one lake Guids.
  /// [names] Fabric one lake Names.
  DataLakeFabricStorageResponse({
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

  factory DataLakeFabricStorageResponse.fromMap(Map<String, dynamic> map) {
    return DataLakeFabricStorageResponse(
      authentication: DataLakeFabricStorageAuthenticationResponse.fromMap((map['authentication'] as Map).cast<String, dynamic>()),
      endpoint: map['endpoint'] as String,
      fabricPath: map['fabricPath'] as String,
      guids: map['guids'] == null ? null : FabricGuidsResponse.fromMap((map['guids'] as Map).cast<String, dynamic>()),
      names: map['names'] == null ? null : FabricNamesResponse.fromMap((map['names'] as Map).cast<String, dynamic>()),
    );
  }
}


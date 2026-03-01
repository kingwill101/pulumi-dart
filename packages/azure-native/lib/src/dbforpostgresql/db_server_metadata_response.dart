// ignore_for_file: unused_element, unnecessary_cast

import 'server_sku_response.dart';

/// Database server metadata.
class DbServerMetadataResponse {
  /// Location of database server.
  final String location;
  /// Compute tier and size of the database server. This object is empty for an Azure Database for PostgreSQL single server.
  final ServerSkuResponse? sku;
  /// Storage size (in MB) for database server.
  final int? storageMb;
  /// Major version of PostgreSQL database engine.
  final String? version;

  /// Creates a new [DbServerMetadataResponse].
  /// [location] Location of database server.
  /// [sku] Compute tier and size of the database server. This object is empty for an Azure Database for PostgreSQL single server.
  /// [storageMb] Storage size (in MB) for database server.
  /// [version] Major version of PostgreSQL database engine.
  DbServerMetadataResponse({
    required this.location,
    this.sku,
    this.storageMb,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'sku': ?sku == null ? null : sku!.toMap(),
      'storageMb': ?storageMb,
      'version': ?version,
    };
  }

  factory DbServerMetadataResponse.fromMap(Map<String, dynamic> map) {
    return DbServerMetadataResponse(
      location: map['location'] as String,
      sku: map['sku'] == null ? null : ServerSkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      storageMb: map['storageMb'] == null ? null : map['storageMb'] as int,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}


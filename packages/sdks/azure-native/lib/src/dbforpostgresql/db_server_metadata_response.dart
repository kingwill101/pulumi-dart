// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_sku_response.dart';

/// Database server metadata.
class DbServerMetadataResponse {
  /// Location of database server.
  final pulumi.Input<String> location;
  /// Compute tier and size of the database server. This object is empty for an Azure Database for PostgreSQL single server.
  final pulumi.Input<ServerSkuResponse>? sku;
  /// Storage size (in MB) for database server.
  final pulumi.Input<int>? storageMb;
  /// Major version of PostgreSQL database engine.
  final pulumi.Input<String>? version;

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
      'sku': ?pulumi.Input.mapOptionalInputValue<ServerSkuResponse, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'storageMb': ?storageMb,
      'version': ?version,
    };
  }

  factory DbServerMetadataResponse.fromMap(Map<String, dynamic> map) {
    return DbServerMetadataResponse(
      location: (map['location'] as String).input(),
      sku: map['sku'] == null ? null : (ServerSkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>())).input(),
      storageMb: map['storageMb'] == null ? null : (map['storageMb']! as int).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}


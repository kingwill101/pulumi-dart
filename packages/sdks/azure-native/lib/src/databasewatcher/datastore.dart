// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of a data store.
class Datastore {
  /// The Azure resource ID of an Azure Data Explorer cluster.
  final pulumi.Input<String>? adxClusterResourceId;
  /// The Kusto cluster display name.
  final pulumi.Input<String>? kustoClusterDisplayName;
  /// The Kusto cluster URI.
  final pulumi.Input<String> kustoClusterUri;
  /// The Kusto data ingestion URI.
  final pulumi.Input<String> kustoDataIngestionUri;
  /// The name of a Kusto database.
  final pulumi.Input<String> kustoDatabaseName;
  /// The Kusto management URL.
  final pulumi.Input<String> kustoManagementUrl;
  /// The type of a Kusto offering.
  final pulumi.Input<String> kustoOfferingType;

  /// Creates a new [Datastore].
  /// [adxClusterResourceId] The Azure resource ID of an Azure Data Explorer cluster.
  /// [kustoClusterDisplayName] The Kusto cluster display name.
  /// [kustoClusterUri] The Kusto cluster URI.
  /// [kustoDataIngestionUri] The Kusto data ingestion URI.
  /// [kustoDatabaseName] The name of a Kusto database.
  /// [kustoManagementUrl] The Kusto management URL.
  /// [kustoOfferingType] The type of a Kusto offering.
  Datastore({
    this.adxClusterResourceId,
    this.kustoClusterDisplayName,
    required this.kustoClusterUri,
    required this.kustoDataIngestionUri,
    required this.kustoDatabaseName,
    required this.kustoManagementUrl,
    required this.kustoOfferingType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adxClusterResourceId': ?adxClusterResourceId,
      'kustoClusterDisplayName': ?kustoClusterDisplayName,
      'kustoClusterUri': kustoClusterUri,
      'kustoDataIngestionUri': kustoDataIngestionUri,
      'kustoDatabaseName': kustoDatabaseName,
      'kustoManagementUrl': kustoManagementUrl,
      'kustoOfferingType': kustoOfferingType,
    };
  }

  factory Datastore.fromMap(Map<String, dynamic> map) {
    return Datastore(
      adxClusterResourceId: map['adxClusterResourceId'] == null ? null : (map['adxClusterResourceId'] as String).input(),
      kustoClusterDisplayName: map['kustoClusterDisplayName'] == null ? null : (map['kustoClusterDisplayName'] as String).input(),
      kustoClusterUri: (map['kustoClusterUri'] as String).input(),
      kustoDataIngestionUri: (map['kustoDataIngestionUri'] as String).input(),
      kustoDatabaseName: (map['kustoDatabaseName'] as String).input(),
      kustoManagementUrl: (map['kustoManagementUrl'] as String).input(),
      kustoOfferingType: (map['kustoOfferingType'] as String).input(),
    );
  }
}


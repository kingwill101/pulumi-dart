// ignore_for_file: unused_element, unnecessary_cast

import 'cosmos_db_settings.dart';

class ServiceManagedResourcesSettings {
  /// The settings for the service managed cosmosdb account.
  final CosmosDbSettings? cosmosDb;

  /// Creates a new [ServiceManagedResourcesSettings].
  /// [cosmosDb] The settings for the service managed cosmosdb account.
  ServiceManagedResourcesSettings({
    this.cosmosDb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cosmosDb': ?cosmosDb == null ? null : cosmosDb!.toMap(),
    };
  }

  factory ServiceManagedResourcesSettings.fromMap(Map<String, dynamic> map) {
    return ServiceManagedResourcesSettings(
      cosmosDb: map['cosmosDb'] == null ? null : CosmosDbSettings.fromMap((map['cosmosDb'] as Map).cast<String, dynamic>()),
    );
  }
}


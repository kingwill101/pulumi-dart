// ignore_for_file: unused_element, unnecessary_cast

import 'cosmos_db_settings_response.dart';

class ServiceManagedResourcesSettingsResponse {
  /// The settings for the service managed cosmosdb account.
  final CosmosDbSettingsResponse? cosmosDb;

  /// Creates a new [ServiceManagedResourcesSettingsResponse].
  /// [cosmosDb] The settings for the service managed cosmosdb account.
  ServiceManagedResourcesSettingsResponse({
    this.cosmosDb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cosmosDb': ?cosmosDb == null ? null : cosmosDb!.toMap(),
    };
  }

  factory ServiceManagedResourcesSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ServiceManagedResourcesSettingsResponse(
      cosmosDb: map['cosmosDb'] == null ? null : CosmosDbSettingsResponse.fromMap((map['cosmosDb'] as Map).cast<String, dynamic>()),
    );
  }
}


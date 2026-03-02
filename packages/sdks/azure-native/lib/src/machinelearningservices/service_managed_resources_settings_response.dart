// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cosmos_db_settings_response.dart';

class ServiceManagedResourcesSettingsResponse {
  /// The settings for the service managed cosmosdb account.
  final pulumi.Input<CosmosDbSettingsResponse>? cosmosDb;

  /// Creates a new [ServiceManagedResourcesSettingsResponse].
  /// [cosmosDb] The settings for the service managed cosmosdb account.
  ServiceManagedResourcesSettingsResponse({
    this.cosmosDb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cosmosDb': ?pulumi.Input.mapOptionalInputValue<CosmosDbSettingsResponse, Map<String, dynamic>>(cosmosDb, (value) => value.toMap()),
    };
  }

  factory ServiceManagedResourcesSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ServiceManagedResourcesSettingsResponse(
      cosmosDb: map['cosmosDb'] == null ? null : (CosmosDbSettingsResponse.fromMap((map['cosmosDb'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


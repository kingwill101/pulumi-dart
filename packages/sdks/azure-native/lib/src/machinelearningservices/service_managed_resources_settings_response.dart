// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cosmos_db_settings_response.dart';

class ServiceManagedResourcesSettingsResponse {
  final pulumi.Input<CosmosDbSettingsResponse?>? cosmosDb;

  /// Creates a new [ServiceManagedResourcesSettingsResponse].
  /// [cosmosDb] Optional.
  const ServiceManagedResourcesSettingsResponse({
    this.cosmosDb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cosmosDb': ?pulumi.Input.mapOptionalInputValue<CosmosDbSettingsResponse, Map<String, dynamic>>(cosmosDb, (value) => value.toMap()),
    };
  }

  factory ServiceManagedResourcesSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ServiceManagedResourcesSettingsResponse(
      cosmosDb: (() { final guardedValue = map['cosmosDb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CosmosDbSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

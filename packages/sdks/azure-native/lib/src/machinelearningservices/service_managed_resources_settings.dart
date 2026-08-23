// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cosmos_db_settings.dart';

class ServiceManagedResourcesSettings {
  final pulumi.Input<CosmosDbSettings>? cosmosDb;

  /// Creates a new [ServiceManagedResourcesSettings].
  /// [cosmosDb] Optional.
  const ServiceManagedResourcesSettings({
    this.cosmosDb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cosmosDb': ?pulumi.Input.mapOptionalInputValue<CosmosDbSettings, Map<String, dynamic>>(cosmosDb, (value) => value.toMap()),
    };
  }

  factory ServiceManagedResourcesSettings.fromMap(Map<String, dynamic> map) {
    return ServiceManagedResourcesSettings(
      cosmosDb: (() { final guardedValue = map['cosmosDb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CosmosDbSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

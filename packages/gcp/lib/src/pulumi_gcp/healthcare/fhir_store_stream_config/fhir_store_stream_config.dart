// ignore_for_file: unused_element, unnecessary_cast

import '../fhir_store_stream_config_bigquery_destination/fhir_store_stream_config_bigquery_destination.dart';

class FhirStoreStreamConfig {
  /// The destination BigQuery structure that contains both the dataset location and corresponding schema config.
  /// The output is organized in one table per resource type. The server reuses the existing tables (if any) that
  /// are named after the resource types, e.g. "Patient", "Observation". When there is no existing table for a given
  /// resource type, the server attempts to create one.
  /// See the [streaming config reference](https://cloud.google.com/healthcare/docs/reference/rest/v1beta1/projects.locations.datasets.fhirStores#streamconfig) for more details.
  /// Structure is documented below.
  final FhirStoreStreamConfigBigqueryDestination bigqueryDestination;

  /// Supply a FHIR resource type (such as "Patient" or "Observation"). See
  /// https://www.hl7.org/fhir/valueset-resource-types.html for a list of all FHIR resource types. The server treats
  /// an empty list as an intent to stream all the supported resource types in this FHIR store.
  final List<String>? resourceTypes;

  FhirStoreStreamConfig({
    required this.bigqueryDestination,
    this.resourceTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bigqueryDestination'] = bigqueryDestination.toMap();
    final resourceTypesValue = resourceTypes;
    if (resourceTypesValue != null) {
      map['resourceTypes'] = resourceTypesValue;
    }
    return map;
  }

  factory FhirStoreStreamConfig.fromMap(Map<String, dynamic> map) {
    return FhirStoreStreamConfig(
      bigqueryDestination: FhirStoreStreamConfigBigqueryDestination.fromMap(
          (map['bigqueryDestination'] as Map).cast<String, dynamic>()),
      resourceTypes: map['resourceTypes'] == null
          ? null
          : (map['resourceTypes'] as List).cast<String>(),
    );
  }
}

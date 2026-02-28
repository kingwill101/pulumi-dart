// ignore_for_file: unused_element, unnecessary_cast

import 'deidentify_config_response.dart';

/// Contains configuration for streaming de-identified FHIR export.
class DeidentifiedStoreDestinationResponse {
  /// The configuration to use when de-identifying resources that are added to this store.
  final DeidentifyConfigResponse config;

  /// The full resource name of a Cloud Healthcare FHIR store, for example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  final String store;

  /// Creates a new [DeidentifiedStoreDestinationResponse].
  /// [config] The configuration to use when de-identifying resources that are added to this store.
  /// [store] The full resource name of a Cloud Healthcare FHIR store, for example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  DeidentifiedStoreDestinationResponse({
    required this.config,
    required this.store,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['config'] = config.toMap();
    map['store'] = store;
    return map;
  }

  factory DeidentifiedStoreDestinationResponse.fromMap(
      Map<String, dynamic> map) {
    return DeidentifiedStoreDestinationResponse(
      config: DeidentifyConfigResponse.fromMap(
          (map['config'] as Map).cast<String, dynamic>()),
      store: map['store'] as String,
    );
  }
}

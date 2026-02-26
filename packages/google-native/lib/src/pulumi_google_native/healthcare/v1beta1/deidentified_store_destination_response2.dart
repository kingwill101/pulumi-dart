// ignore_for_file: unused_element, unnecessary_cast

import 'deidentify_config_response2.dart';

/// Contains configuration for streaming de-identified FHIR export.
class DeidentifiedStoreDestinationResponse2 {
  /// The configuration to use when de-identifying resources that are added to this store.
  final DeidentifyConfigResponse2 config;

  /// The full resource name of a Cloud Healthcare FHIR store, for example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  final String store;

  DeidentifiedStoreDestinationResponse2({
    required this.config,
    required this.store,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['config'] = config.toMap();
    map['store'] = store;
    return map;
  }

  factory DeidentifiedStoreDestinationResponse2.fromMap(
      Map<String, dynamic> map) {
    return DeidentifiedStoreDestinationResponse2(
      config: DeidentifyConfigResponse2.fromMap(
          (map['config'] as Map).cast<String, dynamic>()),
      store: map['store'] as String,
    );
  }
}

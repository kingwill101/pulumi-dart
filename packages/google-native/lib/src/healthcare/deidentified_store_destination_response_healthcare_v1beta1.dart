// ignore_for_file: unused_element, unnecessary_cast

import 'deidentify_config_response_healthcare_v1beta1.dart';

/// Contains configuration for streaming de-identified FHIR export.
class DeidentifiedStoreDestinationResponseHealthcareV1beta1 {
  /// The configuration to use when de-identifying resources that are added to this store.
  final DeidentifyConfigResponseHealthcareV1beta1 config;

  /// The full resource name of a Cloud Healthcare FHIR store, for example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  final String store;

  /// Creates a new [DeidentifiedStoreDestinationResponseHealthcareV1beta1].
  /// [config] The configuration to use when de-identifying resources that are added to this store.
  /// [store] The full resource name of a Cloud Healthcare FHIR store, for example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  DeidentifiedStoreDestinationResponseHealthcareV1beta1({
    required this.config,
    required this.store,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['config'] = config.toMap();
    map['store'] = store;
    return map;
  }

  factory DeidentifiedStoreDestinationResponseHealthcareV1beta1.fromMap(
      Map<String, dynamic> map) {
    return DeidentifiedStoreDestinationResponseHealthcareV1beta1(
      config: DeidentifyConfigResponseHealthcareV1beta1.fromMap(
          (map['config'] as Map).cast<String, dynamic>()),
      store: map['store'] as String,
    );
  }
}

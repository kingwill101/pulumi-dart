// ignore_for_file: unused_element, unnecessary_cast

import 'deidentify_config_healthcare_v1beta1.dart';

/// Contains configuration for streaming de-identified FHIR export.
class DeidentifiedStoreDestinationHealthcareV1beta1 {
  /// The configuration to use when de-identifying resources that are added to this store.
  final DeidentifyConfigHealthcareV1beta1? config;

  /// The full resource name of a Cloud Healthcare FHIR store, for example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  final String? store;

  DeidentifiedStoreDestinationHealthcareV1beta1({
    this.config,
    this.store,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final configValue = config;
    if (configValue != null) {
      map['config'] = configValue.toMap();
    }
    final storeValue = store;
    if (storeValue != null) {
      map['store'] = storeValue;
    }
    return map;
  }

  factory DeidentifiedStoreDestinationHealthcareV1beta1.fromMap(
      Map<String, dynamic> map) {
    return DeidentifiedStoreDestinationHealthcareV1beta1(
      config: map['config'] == null
          ? null
          : DeidentifyConfigHealthcareV1beta1.fromMap(
              (map['config'] as Map).cast<String, dynamic>()),
      store: map['store'] == null ? null : map['store'] as String,
    );
  }
}

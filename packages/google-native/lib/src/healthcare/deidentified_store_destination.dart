// ignore_for_file: unused_element, unnecessary_cast

import 'deidentify_config.dart';

/// Contains configuration for streaming de-identified FHIR export.
class DeidentifiedStoreDestination {
  /// The configuration to use when de-identifying resources that are added to this store.
  final DeidentifyConfig? config;

  /// The full resource name of a Cloud Healthcare FHIR store, for example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  final String? store;

  /// Creates a new [DeidentifiedStoreDestination].
  /// [config] The configuration to use when de-identifying resources that are added to this store.
  /// [store] The full resource name of a Cloud Healthcare FHIR store, for example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  DeidentifiedStoreDestination({this.config, this.store});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config == null ? null : config!.toMap(),
      'store': ?store,
    };
  }

  factory DeidentifiedStoreDestination.fromMap(Map<String, dynamic> map) {
    return DeidentifiedStoreDestination(
      config: map['config'] == null
          ? null
          : DeidentifyConfig.fromMap(
              (map['config'] as Map).cast<String, dynamic>(),
            ),
      store: map['store'] == null ? null : map['store'] as String,
    );
  }
}

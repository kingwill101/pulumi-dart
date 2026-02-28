// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_retail_v2alpha_search_request_dynamic_facet_spec_mode.dart';

/// The specifications of dynamically generated facets.
class GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec {
  /// Mode of the DynamicFacet feature. Defaults to Mode.DISABLED if it's unset.
  final GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpecMode? mode;

  /// Creates a new [GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec].
  /// [mode] Mode of the DynamicFacet feature. Defaults to Mode.DISABLED if it's unset.
  GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec({
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode == null ? null : mode!.value,
    };
  }

  factory GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec(
      mode: map['mode'] == null ? null : GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpecMode.fromValue(map['mode'] as String),
    );
  }
}


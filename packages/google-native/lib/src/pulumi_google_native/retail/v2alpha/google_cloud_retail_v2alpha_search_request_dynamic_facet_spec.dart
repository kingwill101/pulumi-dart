// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_retail_v2alpha_search_request_dynamic_facet_spec_mode.dart';

/// The specifications of dynamically generated facets.
class GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec {
  /// Mode of the DynamicFacet feature. Defaults to Mode.DISABLED if it's unset.
  final GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpecMode? mode;

  GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec({
    this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue.value;
    }
    return map;
  }

  factory GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec(
      mode: map['mode'] == null
          ? null
          : GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpecMode.fromValue(
              map['mode'] as String),
    );
  }
}

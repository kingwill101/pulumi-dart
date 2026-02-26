// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_retail_v2_search_request_dynamic_facet_spec_mode.dart';

/// The specifications of dynamically generated facets.
class GoogleCloudRetailV2SearchRequestDynamicFacetSpec {
  /// Mode of the DynamicFacet feature. Defaults to Mode.DISABLED if it's unset.
  final GoogleCloudRetailV2SearchRequestDynamicFacetSpecMode? mode;

  GoogleCloudRetailV2SearchRequestDynamicFacetSpec({
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

  factory GoogleCloudRetailV2SearchRequestDynamicFacetSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2SearchRequestDynamicFacetSpec(
      mode: map['mode'] == null
          ? null
          : GoogleCloudRetailV2SearchRequestDynamicFacetSpecMode.fromValue(
              map['mode'] as String),
    );
  }
}

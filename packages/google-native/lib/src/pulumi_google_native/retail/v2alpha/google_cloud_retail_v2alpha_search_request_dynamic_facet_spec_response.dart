// ignore_for_file: unused_element, unnecessary_cast

/// The specifications of dynamically generated facets.
class GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpecResponse {
  /// Mode of the DynamicFacet feature. Defaults to Mode.DISABLED if it's unset.
  final String mode;

  GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpecResponse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mode'] = mode;
    return map;
  }

  factory GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpecResponse(
      mode: map['mode'] as String,
    );
  }
}

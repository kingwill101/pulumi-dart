// ignore_for_file: unused_element, unnecessary_cast

/// Contains the versioned name and the URL for one SearchParameter.
class SearchParameterResponse {
  /// The canonical url of the search parameter resource.
  final String canonicalUrl;

  /// The versioned name of the search parameter resource. The format is projects/{project-id}/locations/{location}/datasets/{dataset-id}/fhirStores/{fhirStore-id}/fhir/SearchParameter/{resource-id}/_history/{version-id} For fhir stores with disable_resource_versioning=true, the format is projects/{project-id}/locations/{location}/datasets/{dataset-id}/fhirStores/{fhirStore-id}/fhir/SearchParameter/{resource-id}/
  final String parameter;

  /// Creates a new [SearchParameterResponse].
  /// [canonicalUrl] The canonical url of the search parameter resource.
  /// [parameter] The versioned name of the search parameter resource. The format is projects/{project-id}/locations/{location}/datasets/{dataset-id}/fhirStores/{fhirStore-id}/fhir/SearchParameter/{resource-id}/_history/{version-id} For fhir stores with disable_resource_versioning=true, the format is projects/{project-id}/locations/{location}/datasets/{dataset-id}/fhirStores/{fhirStore-id}/fhir/SearchParameter/{resource-id}/
  SearchParameterResponse({
    required this.canonicalUrl,
    required this.parameter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['canonicalUrl'] = canonicalUrl;
    map['parameter'] = parameter;
    return map;
  }

  factory SearchParameterResponse.fromMap(Map<String, dynamic> map) {
    return SearchParameterResponse(
      canonicalUrl: map['canonicalUrl'] as String,
      parameter: map['parameter'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

/// Contains the versioned name and the URL for one SearchParameter.
class SearchParameter {
  /// The canonical url of the search parameter resource.
  final String? canonicalUrl;

  /// The versioned name of the search parameter resource. The format is projects/{project-id}/locations/{location}/datasets/{dataset-id}/fhirStores/{fhirStore-id}/fhir/SearchParameter/{resource-id}/_history/{version-id} For fhir stores with disable_resource_versioning=true, the format is projects/{project-id}/locations/{location}/datasets/{dataset-id}/fhirStores/{fhirStore-id}/fhir/SearchParameter/{resource-id}/
  final String? parameter;

  /// Creates a new [SearchParameter].
  /// [canonicalUrl] The canonical url of the search parameter resource.
  /// [parameter] The versioned name of the search parameter resource. The format is projects/{project-id}/locations/{location}/datasets/{dataset-id}/fhirStores/{fhirStore-id}/fhir/SearchParameter/{resource-id}/_history/{version-id} For fhir stores with disable_resource_versioning=true, the format is projects/{project-id}/locations/{location}/datasets/{dataset-id}/fhirStores/{fhirStore-id}/fhir/SearchParameter/{resource-id}/
  SearchParameter({this.canonicalUrl, this.parameter});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canonicalUrl': ?canonicalUrl,
      'parameter': ?parameter,
    };
  }

  factory SearchParameter.fromMap(Map<String, dynamic> map) {
    return SearchParameter(
      canonicalUrl: map['canonicalUrl'] == null
          ? null
          : map['canonicalUrl'] as String,
      parameter: map['parameter'] == null ? null : map['parameter'] as String,
    );
  }
}

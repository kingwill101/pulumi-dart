// ignore_for_file: unused_element, unnecessary_cast

/// The source system of the Taxonomy.
class GoogleCloudDatacatalogV1TaxonomyServiceResponse {
  /// The service agent for the service.
  final String identity;

  /// The Google Cloud service name.
  final String name;

  /// Creates a new [GoogleCloudDatacatalogV1TaxonomyServiceResponse].
  /// [identity] The service agent for the service.
  /// [name] The Google Cloud service name.
  GoogleCloudDatacatalogV1TaxonomyServiceResponse({
    required this.identity,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'identity': identity, 'name': name};
  }

  factory GoogleCloudDatacatalogV1TaxonomyServiceResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatacatalogV1TaxonomyServiceResponse(
      identity: map['identity'] as String,
      name: map['name'] as String,
    );
  }
}

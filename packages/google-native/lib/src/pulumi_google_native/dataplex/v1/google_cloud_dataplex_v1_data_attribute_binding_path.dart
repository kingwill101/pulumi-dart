// ignore_for_file: unused_element, unnecessary_cast

/// Represents a subresource of the given resource, and associated bindings with it. Currently supported subresources are column and partition schema fields within a table.
class GoogleCloudDataplexV1DataAttributeBindingPath {
  /// Optional. List of attributes to be associated with the path of the resource, provided in the form: projects/{project}/locations/{location}/dataTaxonomies/{dataTaxonomy}/attributes/{data_attribute_id}
  final List<String>? attributes;

  /// The name identifier of the path. Nested columns should be of the form: 'address.city'.
  final String name;

  GoogleCloudDataplexV1DataAttributeBindingPath({
    this.attributes,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attributesValue = attributes;
    if (attributesValue != null) {
      map['attributes'] = attributesValue;
    }
    map['name'] = name;
    return map;
  }

  factory GoogleCloudDataplexV1DataAttributeBindingPath.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataAttributeBindingPath(
      attributes: map['attributes'] == null
          ? null
          : (map['attributes'] as List).cast<String>(),
      name: map['name'] as String,
    );
  }
}

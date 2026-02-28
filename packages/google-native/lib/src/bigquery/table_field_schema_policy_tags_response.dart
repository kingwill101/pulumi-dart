// ignore_for_file: unused_element, unnecessary_cast


class TableFieldSchemaPolicyTagsResponse {
  /// A list of category resource names. For example, "projects/1/location/eu/taxonomies/2/policyTags/3". At most 1 policy tag is allowed.
  final List<String> names;

  /// Creates a new [TableFieldSchemaPolicyTagsResponse].
  /// [names] A list of category resource names. For example, "projects/1/location/eu/taxonomies/2/policyTags/3". At most 1 policy tag is allowed.
  TableFieldSchemaPolicyTagsResponse({
    required this.names,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'names': names,
    };
  }

  factory TableFieldSchemaPolicyTagsResponse.fromMap(Map<String, dynamic> map) {
    return TableFieldSchemaPolicyTagsResponse(
      names: (map['names'] as List).cast<String>(),
    );
  }
}


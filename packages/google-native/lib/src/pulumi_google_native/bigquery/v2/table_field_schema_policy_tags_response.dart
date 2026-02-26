// ignore_for_file: unused_element, unnecessary_cast

class TableFieldSchemaPolicyTagsResponse {
  /// A list of category resource names. For example, "projects/1/location/eu/taxonomies/2/policyTags/3". At most 1 policy tag is allowed.
  final List<String> names;

  TableFieldSchemaPolicyTagsResponse({
    required this.names,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['names'] = names;
    return map;
  }

  factory TableFieldSchemaPolicyTagsResponse.fromMap(Map<String, dynamic> map) {
    return TableFieldSchemaPolicyTagsResponse(
      names: (map['names'] as List).cast<String>(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class TableFieldSchemaPolicyTags {
  /// A list of category resource names. For example, "projects/1/location/eu/taxonomies/2/policyTags/3". At most 1 policy tag is allowed.
  final List<String>? names;

  /// Creates a new [TableFieldSchemaPolicyTags].
  /// [names] A list of category resource names. For example, "projects/1/location/eu/taxonomies/2/policyTags/3". At most 1 policy tag is allowed.
  TableFieldSchemaPolicyTags({this.names});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'names': ?names};
  }

  factory TableFieldSchemaPolicyTags.fromMap(Map<String, dynamic> map) {
    return TableFieldSchemaPolicyTags(
      names: map['names'] == null
          ? null
          : (map['names'] as List).cast<String>(),
    );
  }
}

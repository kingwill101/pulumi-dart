// ignore_for_file: unused_element, unnecessary_cast


class DomainIndexField {
  /// The analysis scheme you want to use for a `text` field. The analysis scheme specifies the language-specific text processing options that are used during indexing.
  final String? analysisScheme;
  /// The default value for the field. This value is used when no value is specified for the field in the document data.
  final String? defaultValue;
  /// You can get facet information by enabling this.
  final bool? facet;
  /// You can highlight information.
  final bool? highlight;
  /// A unique name for the field. Field names must begin with a letter and be at least 1 and no more than 64 characters long. The allowed characters are: `a`-`z` (lower-case letters), `0`-`9`, and `_` (underscore). The name `score` is reserved and cannot be used as a field name.
  final String name;
  /// You can enable returning the value of all searchable fields.
  final bool? return_;
  /// You can set whether this index should be searchable or not.
  final bool? search;
  /// You can enable the property to be sortable.
  final bool? sort;
  /// A comma-separated list of source fields to map to the field. Specifying a source field copies data from one field to another, enabling you to use the same source data in different ways by configuring different options for the fields.
  final String? sourceFields;
  /// The field type. Valid values: `date`, `date-array`, `double`, `double-array`, `int`, `int-array`, `literal`, `literal-array`, `text`, `text-array`.
  final String type;

  /// Creates a new [DomainIndexField].
  /// [analysisScheme] The analysis scheme you want to use for a `text` field. The analysis scheme specifies the language-specific text processing options that are used during indexing.
  /// [defaultValue] The default value for the field. This value is used when no value is specified for the field in the document data.
  /// [facet] You can get facet information by enabling this.
  /// [highlight] You can highlight information.
  /// [name] A unique name for the field. Field names must begin with a letter and be at least 1 and no more than 64 characters long. The allowed characters are: `a`-`z` (lower-case letters), `0`-`9`, and `_` (underscore). The name `score` is reserved and cannot be used as a field name.
  /// [return_] You can enable returning the value of all searchable fields.
  /// [search] You can set whether this index should be searchable or not.
  /// [sort] You can enable the property to be sortable.
  /// [sourceFields] A comma-separated list of source fields to map to the field. Specifying a source field copies data from one field to another, enabling you to use the same source data in different ways by configuring different options for the fields.
  /// [type] The field type. Valid values: `date`, `date-array`, `double`, `double-array`, `int`, `int-array`, `literal`, `literal-array`, `text`, `text-array`.
  DomainIndexField({
    this.analysisScheme,
    this.defaultValue,
    this.facet,
    this.highlight,
    required this.name,
    this.return_,
    this.search,
    this.sort,
    this.sourceFields,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysisScheme': ?analysisScheme,
      'defaultValue': ?defaultValue,
      'facet': ?facet,
      'highlight': ?highlight,
      'name': name,
      'return': ?return_,
      'search': ?search,
      'sort': ?sort,
      'sourceFields': ?sourceFields,
      'type': type,
    };
  }

  factory DomainIndexField.fromMap(Map<String, dynamic> map) {
    return DomainIndexField(
      analysisScheme: map['analysisScheme'] == null ? null : map['analysisScheme'] as String,
      defaultValue: map['defaultValue'] == null ? null : map['defaultValue'] as String,
      facet: map['facet'] == null ? null : map['facet'] as bool,
      highlight: map['highlight'] == null ? null : map['highlight'] as bool,
      name: map['name'] as String,
      return_: map['return'] == null ? null : map['return'] as bool,
      search: map['search'] == null ? null : map['search'] as bool,
      sort: map['sort'] == null ? null : map['sort'] as bool,
      sourceFields: map['sourceFields'] == null ? null : map['sourceFields'] as String,
      type: map['type'] as String,
    );
  }
}


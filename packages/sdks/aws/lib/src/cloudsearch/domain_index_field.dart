// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainIndexField {
  /// The analysis scheme you want to use for a `text` field. The analysis scheme specifies the language-specific text processing options that are used during indexing.
  final pulumi.Input<String>? analysisScheme;
  /// The default value for the field. This value is used when no value is specified for the field in the document data.
  final pulumi.Input<String>? defaultValue;
  /// You can get facet information by enabling this.
  final pulumi.Input<bool>? facet;
  /// You can highlight information.
  final pulumi.Input<bool>? highlight;
  /// A unique name for the field. Field names must begin with a letter and be at least 1 and no more than 64 characters long. The allowed characters are: `a`-`z` (lower-case letters), `0`-`9`, and `_` (underscore). The name `score` is reserved and cannot be used as a field name.
  final pulumi.Input<String> name;
  /// You can enable returning the value of all searchable fields.
  final pulumi.Input<bool>? return_;
  /// You can set whether this index should be searchable or not.
  final pulumi.Input<bool>? search;
  /// You can enable the property to be sortable.
  final pulumi.Input<bool>? sort;
  /// A comma-separated list of source fields to map to the field. Specifying a source field copies data from one field to another, enabling you to use the same source data in different ways by configuring different options for the fields.
  final pulumi.Input<String>? sourceFields;
  /// The field type. Valid values: `date`, `date-array`, `double`, `double-array`, `int`, `int-array`, `literal`, `literal-array`, `text`, `text-array`.
  final pulumi.Input<String> type;

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
      analysisScheme: map['analysisScheme'] == null ? null : ((map['analysisScheme'] as String).input()).input(),
      defaultValue: map['defaultValue'] == null ? null : ((map['defaultValue'] as String).input()).input(),
      facet: map['facet'] == null ? null : ((map['facet'] as bool).input()).input(),
      highlight: map['highlight'] == null ? null : ((map['highlight'] as bool).input()).input(),
      name: (map['name'] as String).input(),
      return_: map['return'] == null ? null : ((map['return'] as bool).input()).input(),
      search: map['search'] == null ? null : ((map['search'] as bool).input()).input(),
      sort: map['sort'] == null ? null : ((map['sort'] as bool).input()).input(),
      sourceFields: map['sourceFields'] == null ? null : ((map['sourceFields'] as String).input()).input(),
      type: (map['type'] as String).input(),
    );
  }
}


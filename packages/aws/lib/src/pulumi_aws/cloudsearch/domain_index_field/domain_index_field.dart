// ignore_for_file: unused_element, unnecessary_cast

class DomainIndexField {
  /// The analysis scheme you want to use for a <span pulumi-lang-nodejs="`text`" pulumi-lang-dotnet="`Text`" pulumi-lang-go="`text`" pulumi-lang-python="`text`" pulumi-lang-yaml="`text`" pulumi-lang-java="`text`">`text`</span> field. The analysis scheme specifies the language-specific text processing options that are used during indexing.
  final String? analysisScheme;

  /// The default value for the field. This value is used when no value is specified for the field in the document data.
  final String? defaultValue;

  /// You can get facet information by enabling this.
  final bool? facet;

  /// You can highlight information.
  final bool? highlight;

  /// A unique name for the field. Field names must begin with a letter and be at least 1 and no more than 64 characters long. The allowed characters are: <span pulumi-lang-nodejs="`a`" pulumi-lang-dotnet="`A`" pulumi-lang-go="`a`" pulumi-lang-python="`a`" pulumi-lang-yaml="`a`" pulumi-lang-java="`a`">`a`</span>-<span pulumi-lang-nodejs="`z`" pulumi-lang-dotnet="`Z`" pulumi-lang-go="`z`" pulumi-lang-python="`z`" pulumi-lang-yaml="`z`" pulumi-lang-java="`z`">`z`</span> (lower-case letters), <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>-<span pulumi-lang-nodejs="`9`" pulumi-lang-dotnet="`9`" pulumi-lang-go="`9`" pulumi-lang-python="`9`" pulumi-lang-yaml="`9`" pulumi-lang-java="`9`">`9`</span>, and `_` (underscore). The name <span pulumi-lang-nodejs="`score`" pulumi-lang-dotnet="`Score`" pulumi-lang-go="`score`" pulumi-lang-python="`score`" pulumi-lang-yaml="`score`" pulumi-lang-java="`score`">`score`</span> is reserved and cannot be used as a field name.
  final String name;

  /// You can enable returning the value of all searchable fields.
  final bool? return_;

  /// You can set whether this index should be searchable or not.
  final bool? search;

  /// You can enable the property to be sortable.
  final bool? sort;

  /// A comma-separated list of source fields to map to the field. Specifying a source field copies data from one field to another, enabling you to use the same source data in different ways by configuring different options for the fields.
  final String? sourceFields;

  /// The field type. Valid values: <span pulumi-lang-nodejs="`date`" pulumi-lang-dotnet="`Date`" pulumi-lang-go="`date`" pulumi-lang-python="`date`" pulumi-lang-yaml="`date`" pulumi-lang-java="`date`">`date`</span>, `date-array`, <span pulumi-lang-nodejs="`double`" pulumi-lang-dotnet="`Double`" pulumi-lang-go="`double`" pulumi-lang-python="`double`" pulumi-lang-yaml="`double`" pulumi-lang-java="`double`">`double`</span>, `double-array`, <span pulumi-lang-nodejs="`int`" pulumi-lang-dotnet="`Int`" pulumi-lang-go="`int`" pulumi-lang-python="`int`" pulumi-lang-yaml="`int`" pulumi-lang-java="`int`">`int`</span>, `int-array`, <span pulumi-lang-nodejs="`literal`" pulumi-lang-dotnet="`Literal`" pulumi-lang-go="`literal`" pulumi-lang-python="`literal`" pulumi-lang-yaml="`literal`" pulumi-lang-java="`literal`">`literal`</span>, `literal-array`, <span pulumi-lang-nodejs="`text`" pulumi-lang-dotnet="`Text`" pulumi-lang-go="`text`" pulumi-lang-python="`text`" pulumi-lang-yaml="`text`" pulumi-lang-java="`text`">`text`</span>, `text-array`.
  final String type;

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
    final map = <String, dynamic>{};
    final analysisSchemeValue = analysisScheme;
    if (analysisSchemeValue != null) {
      map['analysisScheme'] = analysisSchemeValue;
    }
    final defaultValueValue = defaultValue;
    if (defaultValueValue != null) {
      map['defaultValue'] = defaultValueValue;
    }
    final facetValue = facet;
    if (facetValue != null) {
      map['facet'] = facetValue;
    }
    final highlightValue = highlight;
    if (highlightValue != null) {
      map['highlight'] = highlightValue;
    }
    map['name'] = name;
    final return_Value = return_;
    if (return_Value != null) {
      map['return'] = return_Value;
    }
    final searchValue = search;
    if (searchValue != null) {
      map['search'] = searchValue;
    }
    final sortValue = sort;
    if (sortValue != null) {
      map['sort'] = sortValue;
    }
    final sourceFieldsValue = sourceFields;
    if (sourceFieldsValue != null) {
      map['sourceFields'] = sourceFieldsValue;
    }
    map['type'] = type;
    return map;
  }

  factory DomainIndexField.fromMap(Map<String, dynamic> map) {
    return DomainIndexField(
      analysisScheme: map['analysisScheme'] == null
          ? null
          : map['analysisScheme'] as String,
      defaultValue:
          map['defaultValue'] == null ? null : map['defaultValue'] as String,
      facet: map['facet'] == null ? null : map['facet'] as bool,
      highlight: map['highlight'] == null ? null : map['highlight'] as bool,
      name: map['name'] as String,
      return_: map['return'] == null ? null : map['return'] as bool,
      search: map['search'] == null ? null : map['search'] as bool,
      sort: map['sort'] == null ? null : map['sort'] as bool,
      sourceFields:
          map['sourceFields'] == null ? null : map['sourceFields'] as String,
      type: map['type'] as String,
    );
  }
}

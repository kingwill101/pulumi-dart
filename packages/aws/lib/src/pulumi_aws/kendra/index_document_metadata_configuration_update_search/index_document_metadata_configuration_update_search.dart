// ignore_for_file: unused_element, unnecessary_cast

class IndexDocumentMetadataConfigurationUpdateSearch {
  /// Determines whether the field is returned in the query response. The default is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final bool? displayable;

  /// Indicates that the field can be used to create search facets, a count of results for each value in the field. The default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? facetable;

  /// Determines whether the field is used in the search. If the Searchable field is true, you can use relevance tuning to manually tune how Amazon Kendra weights the field in the search. The default is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> for <span pulumi-lang-nodejs="`string`" pulumi-lang-dotnet="`String`" pulumi-lang-go="`string`" pulumi-lang-python="`string`" pulumi-lang-yaml="`string`" pulumi-lang-java="`string`">`string`</span> fields and <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> for <span pulumi-lang-nodejs="`number`" pulumi-lang-dotnet="`Number`" pulumi-lang-go="`number`" pulumi-lang-python="`number`" pulumi-lang-yaml="`number`" pulumi-lang-java="`number`">`number`</span> and <span pulumi-lang-nodejs="`date`" pulumi-lang-dotnet="`Date`" pulumi-lang-go="`date`" pulumi-lang-python="`date`" pulumi-lang-yaml="`date`" pulumi-lang-java="`date`">`date`</span> fields.
  final bool? searchable;

  /// Determines whether the field can be used to sort the results of a query. If you specify sorting on a field that does not have Sortable set to true, Amazon Kendra returns an exception. The default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? sortable;

  IndexDocumentMetadataConfigurationUpdateSearch({
    this.displayable,
    this.facetable,
    this.searchable,
    this.sortable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayableValue = displayable;
    if (displayableValue != null) {
      map['displayable'] = displayableValue;
    }
    final facetableValue = facetable;
    if (facetableValue != null) {
      map['facetable'] = facetableValue;
    }
    final searchableValue = searchable;
    if (searchableValue != null) {
      map['searchable'] = searchableValue;
    }
    final sortableValue = sortable;
    if (sortableValue != null) {
      map['sortable'] = sortableValue;
    }
    return map;
  }

  factory IndexDocumentMetadataConfigurationUpdateSearch.fromMap(
      Map<String, dynamic> map) {
    return IndexDocumentMetadataConfigurationUpdateSearch(
      displayable:
          map['displayable'] == null ? null : map['displayable'] as bool,
      facetable: map['facetable'] == null ? null : map['facetable'] as bool,
      searchable: map['searchable'] == null ? null : map['searchable'] as bool,
      sortable: map['sortable'] == null ? null : map['sortable'] as bool,
    );
  }
}

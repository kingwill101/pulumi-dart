// ignore_for_file: unused_element, unnecessary_cast

class IndexDocumentMetadataConfigurationUpdateSearch {
  /// Determines whether the field is returned in the query response. The default is `true`.
  final bool? displayable;

  /// Indicates that the field can be used to create search facets, a count of results for each value in the field. The default is `false`.
  final bool? facetable;

  /// Determines whether the field is used in the search. If the Searchable field is true, you can use relevance tuning to manually tune how Amazon Kendra weights the field in the search. The default is `true` for `string` fields and `false` for `number` and `date` fields.
  final bool? searchable;

  /// Determines whether the field can be used to sort the results of a query. If you specify sorting on a field that does not have Sortable set to true, Amazon Kendra returns an exception. The default is `false`.
  final bool? sortable;

  /// Creates a new [IndexDocumentMetadataConfigurationUpdateSearch].
  /// [displayable] Determines whether the field is returned in the query response. The default is `true`.
  /// [facetable] Indicates that the field can be used to create search facets, a count of results for each value in the field. The default is `false`.
  /// [searchable] Determines whether the field is used in the search. If the Searchable field is true, you can use relevance tuning to manually tune how Amazon Kendra weights the field in the search. The default is `true` for `string` fields and `false` for `number` and `date` fields.
  /// [sortable] Determines whether the field can be used to sort the results of a query. If you specify sorting on a field that does not have Sortable set to true, Amazon Kendra returns an exception. The default is `false`.
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

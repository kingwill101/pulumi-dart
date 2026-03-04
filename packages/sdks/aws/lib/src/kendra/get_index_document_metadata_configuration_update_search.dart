// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetIndexDocumentMetadataConfigurationUpdateSearch {
  /// Determines whether the field is returned in the query response. The default is `true`.
  final pulumi.Input<bool> displayable;

  /// Whether the field can be used to create search facets, a count of results for each value in the field. The default is `false`.
  final pulumi.Input<bool> facetable;

  /// Determines whether the field is used in the search. If the Searchable field is true, you can use relevance tuning to manually tune how Amazon Kendra weights the field in the search. The default is `true` for `string` fields and `false` for `number` and `date` fields.
  final pulumi.Input<bool> searchable;

  /// Determines whether the field can be used to sort the results of a query. If you specify sorting on a field that does not have Sortable set to true, Amazon Kendra returns an exception. The default is `false`.
  final pulumi.Input<bool> sortable;

  /// Creates a new [GetIndexDocumentMetadataConfigurationUpdateSearch].
  /// [displayable] Determines whether the field is returned in the query response. The default is `true`.
  /// [facetable] Whether the field can be used to create search facets, a count of results for each value in the field. The default is `false`.
  /// [searchable] Determines whether the field is used in the search. If the Searchable field is true, you can use relevance tuning to manually tune how Amazon Kendra weights the field in the search. The default is `true` for `string` fields and `false` for `number` and `date` fields.
  /// [sortable] Determines whether the field can be used to sort the results of a query. If you specify sorting on a field that does not have Sortable set to true, Amazon Kendra returns an exception. The default is `false`.
  GetIndexDocumentMetadataConfigurationUpdateSearch({
    required this.displayable,
    required this.facetable,
    required this.searchable,
    required this.sortable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayable': displayable,
      'facetable': facetable,
      'searchable': searchable,
      'sortable': sortable,
    };
  }

  factory GetIndexDocumentMetadataConfigurationUpdateSearch.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetIndexDocumentMetadataConfigurationUpdateSearch(
      displayable: pulumi.Input.fromValue(map['displayable'] as bool),
      facetable: pulumi.Input.fromValue(map['facetable'] as bool),
      searchable: pulumi.Input.fromValue(map['searchable'] as bool),
      sortable: pulumi.Input.fromValue(map['sortable'] as bool),
    );
  }
}

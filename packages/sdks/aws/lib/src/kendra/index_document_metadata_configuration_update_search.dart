// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IndexDocumentMetadataConfigurationUpdateSearch {
  /// Determines whether the field is returned in the query response. The default is `true`.
  final pulumi.Input<bool>? displayable;
  /// Indicates that the field can be used to create search facets, a count of results for each value in the field. The default is `false`.
  final pulumi.Input<bool>? facetable;
  /// Determines whether the field is used in the search. If the Searchable field is true, you can use relevance tuning to manually tune how Amazon Kendra weights the field in the search. The default is `true` for `string` fields and `false` for `number` and `date` fields.
  final pulumi.Input<bool>? searchable;
  /// Determines whether the field can be used to sort the results of a query. If you specify sorting on a field that does not have Sortable set to true, Amazon Kendra returns an exception. The default is `false`.
  final pulumi.Input<bool>? sortable;

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
    return <String, dynamic>{
      'displayable': ?displayable,
      'facetable': ?facetable,
      'searchable': ?searchable,
      'sortable': ?sortable,
    };
  }

  factory IndexDocumentMetadataConfigurationUpdateSearch.fromMap(Map<String, dynamic> map) {
    return IndexDocumentMetadataConfigurationUpdateSearch(
      displayable: (() { final guardedValue = map['displayable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      facetable: (() { final guardedValue = map['facetable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      searchable: (() { final guardedValue = map['searchable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sortable: (() { final guardedValue = map['sortable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}


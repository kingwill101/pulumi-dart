// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'search_index_schema_index_sort_sorter.dart';

class SearchIndexSchemaIndexSort {
  /// Specifies the presorting method for the search index. PrimaryKeySort and FieldSort are supported. See `sorter` below.
  final List<SearchIndexSchemaIndexSortSorter> sorters;

  /// Creates a new [SearchIndexSchemaIndexSort].
  /// [sorters] Specifies the presorting method for the search index. PrimaryKeySort and FieldSort are supported. See `sorter` below.
  SearchIndexSchemaIndexSort({
    required this.sorters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sorters': pulumi.Input.encodeList<SearchIndexSchemaIndexSortSorter, Map<String, dynamic>>(sorters, (value) => value.toMap()),
    };
  }

  factory SearchIndexSchemaIndexSort.fromMap(Map<String, dynamic> map) {
    return SearchIndexSchemaIndexSort(
      sorters: pulumi.Input.decodeList<SearchIndexSchemaIndexSortSorter>(map['sorters'], (value) => SearchIndexSchemaIndexSortSorter.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


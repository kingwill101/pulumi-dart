// ignore_for_file: unused_element, unnecessary_cast

class GetCatalogTableStorageDescriptorSortColumn {
  /// Name of the column.
  final String column;

  /// Whether the column is sorted in ascending (<span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>) or descending order (<span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>).
  final int sortOrder;

  GetCatalogTableStorageDescriptorSortColumn({
    required this.column,
    required this.sortOrder,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['column'] = column;
    map['sortOrder'] = sortOrder;
    return map;
  }

  factory GetCatalogTableStorageDescriptorSortColumn.fromMap(
      Map<String, dynamic> map) {
    return GetCatalogTableStorageDescriptorSortColumn(
      column: map['column'] as String,
      sortOrder: map['sortOrder'] as int,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class TableLocalSecondaryIndex {
  /// Name of the index
  final String name;

  /// Only required with `INCLUDE` as a projection type; a list of attributes to project into the index. These do not need to be defined as attributes on the table.
  final List<String>? nonKeyAttributes;

  /// One of `ALL`, `INCLUDE` or `KEYS_ONLY` where `ALL` projects every attribute into the index, `KEYS_ONLY` projects  into the index only the table and index<span pulumi-lang-nodejs=" hashKey " pulumi-lang-dotnet=" HashKey " pulumi-lang-go=" hashKey " pulumi-lang-python=" hash_key " pulumi-lang-yaml=" hashKey " pulumi-lang-java=" hashKey "> hash_key </span>and<span pulumi-lang-nodejs=" sortKey " pulumi-lang-dotnet=" SortKey " pulumi-lang-go=" sortKey " pulumi-lang-python=" sort_key " pulumi-lang-yaml=" sortKey " pulumi-lang-java=" sortKey "> sort_key </span>attributes ,  `INCLUDE` projects into the index all of the attributes that are defined in <span pulumi-lang-nodejs="`nonKeyAttributes`" pulumi-lang-dotnet="`NonKeyAttributes`" pulumi-lang-go="`nonKeyAttributes`" pulumi-lang-python="`non_key_attributes`" pulumi-lang-yaml="`nonKeyAttributes`" pulumi-lang-java="`nonKeyAttributes`">`non_key_attributes`</span> in addition to the attributes that that`KEYS_ONLY` project.
  final String projectionType;

  /// Name of the range key.
  final String rangeKey;

  TableLocalSecondaryIndex({
    required this.name,
    this.nonKeyAttributes,
    required this.projectionType,
    required this.rangeKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final nonKeyAttributesValue = nonKeyAttributes;
    if (nonKeyAttributesValue != null) {
      map['nonKeyAttributes'] = nonKeyAttributesValue;
    }
    map['projectionType'] = projectionType;
    map['rangeKey'] = rangeKey;
    return map;
  }

  factory TableLocalSecondaryIndex.fromMap(Map<String, dynamic> map) {
    return TableLocalSecondaryIndex(
      name: map['name'] as String,
      nonKeyAttributes: map['nonKeyAttributes'] == null
          ? null
          : (map['nonKeyAttributes'] as List).cast<String>(),
      projectionType: map['projectionType'] as String,
      rangeKey: map['rangeKey'] as String,
    );
  }
}

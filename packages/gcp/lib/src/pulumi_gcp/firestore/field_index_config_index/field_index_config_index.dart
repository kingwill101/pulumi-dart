// ignore_for_file: unused_element, unnecessary_cast

class FieldIndexConfigIndex {
  /// Indicates that this field supports operations on arrayValues. Only one of <span pulumi-lang-nodejs="`order`" pulumi-lang-dotnet="`Order`" pulumi-lang-go="`order`" pulumi-lang-python="`order`" pulumi-lang-yaml="`order`" pulumi-lang-java="`order`">`order`</span> and `arrayConfig` can
  /// be specified.
  /// Possible values are: `CONTAINS`.
  final String? arrayConfig;

  /// Indicates that this field supports ordering by the specified order or comparing using =, <, <=, >, >=, !=.
  /// Only one of <span pulumi-lang-nodejs="`order`" pulumi-lang-dotnet="`Order`" pulumi-lang-go="`order`" pulumi-lang-python="`order`" pulumi-lang-yaml="`order`" pulumi-lang-java="`order`">`order`</span> and `arrayConfig` can be specified.
  /// Possible values are: `ASCENDING`, `DESCENDING`.
  final String? order;

  /// The scope at which a query is run. Collection scoped queries require you specify
  /// the collection at query time. Collection group scope allows queries across all
  /// collections with the same id.
  /// Default value is `COLLECTION`.
  /// Possible values are: `COLLECTION`, `COLLECTION_GROUP`.
  final String? queryScope;

  FieldIndexConfigIndex({
    this.arrayConfig,
    this.order,
    this.queryScope,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arrayConfigValue = arrayConfig;
    if (arrayConfigValue != null) {
      map['arrayConfig'] = arrayConfigValue;
    }
    final orderValue = order;
    if (orderValue != null) {
      map['order'] = orderValue;
    }
    final queryScopeValue = queryScope;
    if (queryScopeValue != null) {
      map['queryScope'] = queryScopeValue;
    }
    return map;
  }

  factory FieldIndexConfigIndex.fromMap(Map<String, dynamic> map) {
    return FieldIndexConfigIndex(
      arrayConfig:
          map['arrayConfig'] == null ? null : map['arrayConfig'] as String,
      order: map['order'] == null ? null : map['order'] as String,
      queryScope:
          map['queryScope'] == null ? null : map['queryScope'] as String,
    );
  }
}

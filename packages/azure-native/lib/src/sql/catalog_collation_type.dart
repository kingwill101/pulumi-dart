/// Collation of the metadata catalog.
enum CatalogCollationType {
  valueDATABASEDEFAULT("DATABASE_DEFAULT"),
  valueSQLLatin1GeneralCP1CIAS("SQL_Latin1_General_CP1_CI_AS");

  const CatalogCollationType(this.value);
  final String value;

  static CatalogCollationType fromValue(String value) {
    for (final item in CatalogCollationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CatalogCollationType value: $value');
  }
}


/// The type of the entry. For details, see [`EntryType`](#entrytype).
enum EntryType {
  entryTypeUnspecified("ENTRY_TYPE_UNSPECIFIED"),
  table("TABLE"),
  model("MODEL"),
  dataStream("DATA_STREAM"),
  fileset("FILESET"),
  cluster("CLUSTER"),
  database("DATABASE"),
  dataSourceConnection("DATA_SOURCE_CONNECTION"),
  routine("ROUTINE"),
  lake("LAKE"),
  zone("ZONE"),
  service("SERVICE"),
  databaseSchema("DATABASE_SCHEMA"),
  dashboard("DASHBOARD"),
  explore("EXPLORE"),
  look("LOOK");

  const EntryType(this.value);
  final String value;

  static EntryType fromValue(String value) {
    for (final item in EntryType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntryType value: $value');
  }
}

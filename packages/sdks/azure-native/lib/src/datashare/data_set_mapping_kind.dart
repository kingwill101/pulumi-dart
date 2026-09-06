import 'package:pulumi/pulumi.dart' as pulumi;

/// Kind of data set mapping.
enum DataSetMappingKind implements pulumi.PulumiEnum<String> {
  valueBlob("Blob"),
  valueContainer("Container"),
  valueBlobFolder("BlobFolder"),
  valueAdlsGen2FileSystem("AdlsGen2FileSystem"),
  valueAdlsGen2Folder("AdlsGen2Folder"),
  valueAdlsGen2File("AdlsGen2File"),
  valueKustoCluster("KustoCluster"),
  valueKustoDatabase("KustoDatabase"),
  valueKustoTable("KustoTable"),
  valueSqlDBTable("SqlDBTable"),
  valueSqlDWTable("SqlDWTable"),
  valueSynapseWorkspaceSqlPoolTable("SynapseWorkspaceSqlPoolTable");

  const DataSetMappingKind(this.wireValue);
  @override
  final String wireValue;

  static DataSetMappingKind fromValue(String value) {
    for (final item in DataSetMappingKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataSetMappingKind value: $value');
  }
}

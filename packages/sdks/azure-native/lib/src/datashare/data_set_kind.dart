import 'package:pulumi/pulumi.dart' as pulumi;

/// Kind of data set.
enum DataSetKind implements pulumi.PulumiEnum<String> {
  valueBlob("Blob"),
  valueContainer("Container"),
  valueBlobFolder("BlobFolder"),
  valueAdlsGen2FileSystem("AdlsGen2FileSystem"),
  valueAdlsGen2Folder("AdlsGen2Folder"),
  valueAdlsGen2File("AdlsGen2File"),
  valueAdlsGen1Folder("AdlsGen1Folder"),
  valueAdlsGen1File("AdlsGen1File"),
  valueKustoCluster("KustoCluster"),
  valueKustoDatabase("KustoDatabase"),
  valueKustoTable("KustoTable"),
  valueSqlDBTable("SqlDBTable"),
  valueSqlDWTable("SqlDWTable"),
  valueSynapseWorkspaceSqlPoolTable("SynapseWorkspaceSqlPoolTable");

  const DataSetKind(this.wireValue);
  @override
  final String wireValue;

  static DataSetKind fromValue(String value) {
    for (final item in DataSetKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataSetKind value: $value');
  }
}

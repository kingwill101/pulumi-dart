// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_table_external_catalog_table_option_storage_descriptor/get_table_external_catalog_table_option_storage_descriptor.dart';

class GetTableExternalCatalogTableOption {
  /// The connection specifying the credentials to be used to read external storage, such as Azure Blob, Cloud Storage, or S3. The connection is needed to read the open source table from BigQuery Engine. The<span pulumi-lang-nodejs=" connectionId " pulumi-lang-dotnet=" ConnectionId " pulumi-lang-go=" connectionId " pulumi-lang-python=" connection_id " pulumi-lang-yaml=" connectionId " pulumi-lang-java=" connectionId "> connection_id </span>can have the form <project_id>.<location_id>.<connection_id> or projects/<project_id>/locations/<location_id>/connections/<connection_id>.
  final String connectionId;

  /// A map of key value pairs defining the parameters and properties of the open source table. Corresponds with hive meta store table parameters. Maximum size of 4Mib.
  final Map<String, String> parameters;

  /// A storage descriptor containing information about the physical storage of this table.
  final List<GetTableExternalCatalogTableOptionStorageDescriptor>
      storageDescriptors;

  GetTableExternalCatalogTableOption({
    required this.connectionId,
    required this.parameters,
    required this.storageDescriptors,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionId'] = connectionId;
    map['parameters'] = parameters;
    map['storageDescriptors'] = Input.encodeList<
        GetTableExternalCatalogTableOptionStorageDescriptor,
        Map<String, dynamic>>(storageDescriptors, (value) => value.toMap());
    return map;
  }

  factory GetTableExternalCatalogTableOption.fromMap(Map<String, dynamic> map) {
    return GetTableExternalCatalogTableOption(
      connectionId: map['connectionId'] as String,
      parameters: (map['parameters'] as Map).cast<String, String>(),
      storageDescriptors:
          Input.decodeList<GetTableExternalCatalogTableOptionStorageDescriptor>(
              map['storageDescriptors'],
              (value) =>
                  GetTableExternalCatalogTableOptionStorageDescriptor.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}

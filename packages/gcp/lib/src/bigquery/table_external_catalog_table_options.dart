// ignore_for_file: unused_element, unnecessary_cast

import 'table_external_catalog_table_options_storage_descriptor.dart';

class TableExternalCatalogTableOptions {
  /// The connection specifying the credentials to be
  /// used to read external storage, such as Azure Blob, Cloud Storage, or S3. The
  /// connection is needed to read the open source table from BigQuery Engine. The
  /// connection_id can have the form `<project_id>.<location_id>.<connection_id>`
  /// or `projects/<project_id>/locations/<location_id>/connections/<connection_id>`.
  final String? connectionId;

  /// A map of key value pairs defining the parameters and
  /// properties of the open source table. Corresponds with hive meta store table
  /// parameters. Maximum size of 4Mib.
  final Map<String, String>? parameters;

  /// A storage descriptor containing information
  /// about the physical storage of this table. Structure is documented below.
  final TableExternalCatalogTableOptionsStorageDescriptor? storageDescriptor;

  /// Creates a new [TableExternalCatalogTableOptions].
  /// [connectionId] The connection specifying the credentials to be
  /// [parameters] A map of key value pairs defining the parameters and
  /// [storageDescriptor] A storage descriptor containing information
  TableExternalCatalogTableOptions({
    this.connectionId,
    this.parameters,
    this.storageDescriptor,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectionIdValue = connectionId;
    if (connectionIdValue != null) {
      map['connectionId'] = connectionIdValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = parametersValue;
    }
    final storageDescriptorValue = storageDescriptor;
    if (storageDescriptorValue != null) {
      map['storageDescriptor'] = storageDescriptorValue.toMap();
    }
    return map;
  }

  factory TableExternalCatalogTableOptions.fromMap(Map<String, dynamic> map) {
    return TableExternalCatalogTableOptions(
      connectionId:
          map['connectionId'] == null ? null : map['connectionId'] as String,
      parameters: map['parameters'] == null
          ? null
          : (map['parameters'] as Map).cast<String, String>(),
      storageDescriptor: map['storageDescriptor'] == null
          ? null
          : TableExternalCatalogTableOptionsStorageDescriptor.fromMap(
              (map['storageDescriptor'] as Map).cast<String, dynamic>()),
    );
  }
}

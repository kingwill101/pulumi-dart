// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_level_sharing_properties.dart';

/// {@template pulumi_datashare_kusto_table_data_set_args_doc}
/// The set of arguments for KustoTableDataSet.
/// {@endtemplate}
/// {@macro pulumi_datashare_kusto_table_data_set_args_doc}
class KustoTableDataSetArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// The name of the dataSet.
  final pulumi.Input<String>? dataSetName;
  /// Kind of data set.
  /// Expected value is 'KustoTable'.
  final pulumi.Input<String> kind;
  /// Resource id of the kusto database.
  final pulumi.Input<String> kustoDatabaseResourceId;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the share to add the data set to.
  final pulumi.Input<String> shareName;
  /// Table level sharing properties for kusto database
  final pulumi.Input<TableLevelSharingProperties> tableLevelSharingProperties;

  /// Creates a new [KustoTableDataSetArgs].
  /// [accountName] The name of the share account.
  /// [dataSetName] The name of the dataSet.
  /// [kind] Kind of data set.
  /// [kustoDatabaseResourceId] Resource id of the kusto database.
  /// [resourceGroupName] The resource group name.
  /// [shareName] The name of the share to add the data set to.
  /// [tableLevelSharingProperties] Table level sharing properties for kusto database
  KustoTableDataSetArgs({
    required String accountName,
    String? dataSetName,
    required String kind,
    required String kustoDatabaseResourceId,
    required String resourceGroupName,
    required String shareName,
    required TableLevelSharingProperties tableLevelSharingProperties,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      dataSetName = pulumi.Input.asOptionalInput<String>(dataSetName),
      kind = pulumi.Input.asInput<String>(kind),
      kustoDatabaseResourceId = pulumi.Input.asInput<String>(kustoDatabaseResourceId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      shareName = pulumi.Input.asInput<String>(shareName),
      tableLevelSharingProperties = pulumi.Input.asInput<TableLevelSharingProperties>(tableLevelSharingProperties);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'dataSetName': ?dataSetName,
      'kind': kind,
      'kustoDatabaseResourceId': kustoDatabaseResourceId,
      'resourceGroupName': resourceGroupName,
      'shareName': shareName,
      'tableLevelSharingProperties': pulumi.Input.mapInputValue<TableLevelSharingProperties, Map<String, dynamic>>(tableLevelSharingProperties, (value) => value.toMap()),
    };
  }

  factory KustoTableDataSetArgs.fromMap(Map<String, dynamic> map) {
    return KustoTableDataSetArgs(
      accountName: map['accountName'] as String,
      dataSetName: map['dataSetName'] == null ? null : map['dataSetName'] as String,
      kind: map['kind'] as String,
      kustoDatabaseResourceId: map['kustoDatabaseResourceId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      shareName: map['shareName'] as String,
      tableLevelSharingProperties: TableLevelSharingProperties.fromMap((map['tableLevelSharingProperties'] as Map).cast<String, dynamic>()),
    );
  }
}


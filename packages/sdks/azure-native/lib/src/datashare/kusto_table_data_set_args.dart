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
  final pulumi.Input<String?>? dataSetName;
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
  const KustoTableDataSetArgs({
    required this.accountName,
    this.dataSetName,
    required this.kind,
    required this.kustoDatabaseResourceId,
    required this.resourceGroupName,
    required this.shareName,
    required this.tableLevelSharingProperties,
  });

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
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      dataSetName: (() { final guardedValue = map['dataSetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      kustoDatabaseResourceId: pulumi.Input.fromValue(map['kustoDatabaseResourceId'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      shareName: pulumi.Input.fromValue(map['shareName'] as String),
      tableLevelSharingProperties: pulumi.Input.fromValue(TableLevelSharingProperties.fromMap((map['tableLevelSharingProperties']! as Map).cast<String, dynamic>())),
    );
  }
}

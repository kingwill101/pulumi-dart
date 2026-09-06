// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'transfer_configuration.dart';

/// Details of the data to be used for exporting data from azure.
class DataExportDetails {
  /// Account details of the data to be transferred
  final pulumi.Input<dynamic> accountDetails;
  /// Level of the logs to be collected.
  final pulumi.Input<dynamic>? logCollectionLevel;
  /// Configuration for the data transfer.
  final pulumi.Input<TransferConfiguration> transferConfiguration;

  /// Creates a new [DataExportDetails].
  /// [accountDetails] Account details of the data to be transferred
  /// [logCollectionLevel] Level of the logs to be collected.
  /// [transferConfiguration] Configuration for the data transfer.
  DataExportDetails({
    required this.accountDetails,
    pulumi.Input<dynamic>? logCollectionLevel,
    required this.transferConfiguration,
  }) : logCollectionLevel = logCollectionLevel ?? pulumi.Input.fromValue('Error');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountDetails': accountDetails,
      'logCollectionLevel': ?logCollectionLevel,
      'transferConfiguration': pulumi.Input.mapInputValue<TransferConfiguration, Map<String, dynamic>>(transferConfiguration, (value) => value.toMap()),
    };
  }

  factory DataExportDetails.fromMap(Map<String, dynamic> map) {
    return DataExportDetails(
      accountDetails: pulumi.Input.fromValue(map['accountDetails']),
      logCollectionLevel: (() { final guardedValue = map['logCollectionLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      transferConfiguration: pulumi.Input.fromValue(TransferConfiguration.fromMap((map['transferConfiguration']! as Map).cast<String, dynamic>())),
    );
  }
}

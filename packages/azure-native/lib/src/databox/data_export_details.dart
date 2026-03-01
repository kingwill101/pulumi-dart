// ignore_for_file: unused_element, unnecessary_cast

import 'managed_disk_details.dart';
import 'transfer_configuration.dart';

/// Details of the data to be used for exporting data from azure.
class DataExportDetails {
  /// Account details of the data to be transferred
  final ManagedDiskDetails accountDetails;
  /// Level of the logs to be collected.
  final String? logCollectionLevel;
  /// Configuration for the data transfer.
  final TransferConfiguration transferConfiguration;

  /// Creates a new [DataExportDetails].
  /// [accountDetails] Account details of the data to be transferred
  /// [logCollectionLevel] Level of the logs to be collected.
  /// [transferConfiguration] Configuration for the data transfer.
  DataExportDetails({
    required this.accountDetails,
    this.logCollectionLevel,
    required this.transferConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountDetails': accountDetails.toMap(),
      'logCollectionLevel': ?logCollectionLevel,
      'transferConfiguration': transferConfiguration.toMap(),
    };
  }

  factory DataExportDetails.fromMap(Map<String, dynamic> map) {
    return DataExportDetails(
      accountDetails: ManagedDiskDetails.fromMap((map['accountDetails'] as Map).cast<String, dynamic>()),
      logCollectionLevel: map['logCollectionLevel'] == null ? null : map['logCollectionLevel'] as String,
      transferConfiguration: TransferConfiguration.fromMap((map['transferConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}


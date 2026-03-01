// ignore_for_file: unused_element, unnecessary_cast

import 'managed_disk_details_response.dart';
import 'transfer_configuration_response.dart';

/// Details of the data to be used for exporting data from azure.
class DataExportDetailsResponse {
  /// Account details of the data to be transferred
  final ManagedDiskDetailsResponse accountDetails;
  /// Level of the logs to be collected.
  final String? logCollectionLevel;
  /// Configuration for the data transfer.
  final TransferConfigurationResponse transferConfiguration;

  /// Creates a new [DataExportDetailsResponse].
  /// [accountDetails] Account details of the data to be transferred
  /// [logCollectionLevel] Level of the logs to be collected.
  /// [transferConfiguration] Configuration for the data transfer.
  DataExportDetailsResponse({
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

  factory DataExportDetailsResponse.fromMap(Map<String, dynamic> map) {
    return DataExportDetailsResponse(
      accountDetails: ManagedDiskDetailsResponse.fromMap((map['accountDetails'] as Map).cast<String, dynamic>()),
      logCollectionLevel: map['logCollectionLevel'] == null ? null : map['logCollectionLevel'] as String,
      transferConfiguration: TransferConfigurationResponse.fromMap((map['transferConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}


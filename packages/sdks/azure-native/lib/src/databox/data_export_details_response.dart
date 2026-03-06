// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_disk_details_response.dart';
import 'transfer_configuration_response.dart';

/// Details of the data to be used for exporting data from azure.
class DataExportDetailsResponse {
  /// Account details of the data to be transferred
  final pulumi.Input<ManagedDiskDetailsResponse> accountDetails;
  /// Level of the logs to be collected.
  final pulumi.Input<String>? logCollectionLevel;
  /// Configuration for the data transfer.
  final pulumi.Input<TransferConfigurationResponse> transferConfiguration;

  /// Creates a new [DataExportDetailsResponse].
  /// [accountDetails] Account details of the data to be transferred
  /// [logCollectionLevel] Level of the logs to be collected.
  /// [transferConfiguration] Configuration for the data transfer.
  const DataExportDetailsResponse({
    required this.accountDetails,
    this.logCollectionLevel,
    required this.transferConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountDetails': pulumi.Input.mapInputValue<ManagedDiskDetailsResponse, Map<String, dynamic>>(accountDetails, (value) => value.toMap()),
      'logCollectionLevel': ?logCollectionLevel,
      'transferConfiguration': pulumi.Input.mapInputValue<TransferConfigurationResponse, Map<String, dynamic>>(transferConfiguration, (value) => value.toMap()),
    };
  }

  factory DataExportDetailsResponse.fromMap(Map<String, dynamic> map) {
    return DataExportDetailsResponse(
      accountDetails: pulumi.Input.fromValue(ManagedDiskDetailsResponse.fromMap((map['accountDetails']! as Map).cast<String, dynamic>())),
      logCollectionLevel: (() { final guardedValue = map['logCollectionLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transferConfiguration: pulumi.Input.fromValue(TransferConfigurationResponse.fromMap((map['transferConfiguration']! as Map).cast<String, dynamic>())),
    );
  }
}


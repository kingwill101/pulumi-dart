// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'transfer_configuration_response.dart';

/// Details of the data to be used for exporting data from azure.
class DataExportDetailsResponse {
  /// Account details of the data to be transferred
  final pulumi.Input<dynamic> accountDetails;
  /// Level of the logs to be collected.
  final pulumi.Input<String?>? logCollectionLevel;
  /// Configuration for the data transfer.
  final pulumi.Input<TransferConfigurationResponse> transferConfiguration;

  /// Creates a new [DataExportDetailsResponse].
  /// [accountDetails] Account details of the data to be transferred
  /// [logCollectionLevel] Level of the logs to be collected.
  /// [transferConfiguration] Configuration for the data transfer.
  DataExportDetailsResponse({
    required this.accountDetails,
    pulumi.Input<String?>? logCollectionLevel,
    required this.transferConfiguration,
  }) : logCollectionLevel = logCollectionLevel ?? pulumi.Input.fromValue('Error');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountDetails': accountDetails,
      'logCollectionLevel': ?logCollectionLevel,
      'transferConfiguration': pulumi.Input.mapInputValue<TransferConfigurationResponse, Map<String, dynamic>>(transferConfiguration, (value) => value.toMap()),
    };
  }

  factory DataExportDetailsResponse.fromMap(Map<String, dynamic> map) {
    return DataExportDetailsResponse(
      accountDetails: pulumi.Input.fromValue(map['accountDetails']),
      logCollectionLevel: (() { final guardedValue = map['logCollectionLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transferConfiguration: pulumi.Input.fromValue(TransferConfigurationResponse.fromMap((map['transferConfiguration']! as Map).cast<String, dynamic>())),
    );
  }
}

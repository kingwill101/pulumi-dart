// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of the data to be used for importing data to azure.
class DataImportDetails {
  /// Account details of the data to be transferred
  final pulumi.Input<dynamic> accountDetails;
  /// Level of the logs to be collected.
  final pulumi.Input<dynamic>? logCollectionLevel;

  /// Creates a new [DataImportDetails].
  /// [accountDetails] Account details of the data to be transferred
  /// [logCollectionLevel] Level of the logs to be collected.
  DataImportDetails({
    required this.accountDetails,
    pulumi.Input<dynamic>? logCollectionLevel,
  }) : logCollectionLevel = logCollectionLevel ?? pulumi.Input.fromValue('Error');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountDetails': accountDetails,
      'logCollectionLevel': ?logCollectionLevel,
    };
  }

  factory DataImportDetails.fromMap(Map<String, dynamic> map) {
    return DataImportDetails(
      accountDetails: pulumi.Input.fromValue(map['accountDetails']),
      logCollectionLevel: (() { final guardedValue = map['logCollectionLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}

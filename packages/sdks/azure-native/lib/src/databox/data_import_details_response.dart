// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of the data to be used for importing data to azure.
class DataImportDetailsResponse {
  /// Account details of the data to be transferred
  final pulumi.Input<dynamic> accountDetails;
  /// Level of the logs to be collected.
  final pulumi.Input<String?>? logCollectionLevel;

  /// Creates a new [DataImportDetailsResponse].
  /// [accountDetails] Account details of the data to be transferred
  /// [logCollectionLevel] Level of the logs to be collected.
  DataImportDetailsResponse({
    required this.accountDetails,
    pulumi.Input<String?>? logCollectionLevel,
  }) : logCollectionLevel = logCollectionLevel ?? pulumi.Input.fromValue('Error');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountDetails': accountDetails,
      'logCollectionLevel': ?logCollectionLevel,
    };
  }

  factory DataImportDetailsResponse.fromMap(Map<String, dynamic> map) {
    return DataImportDetailsResponse(
      accountDetails: pulumi.Input.fromValue(map['accountDetails']),
      logCollectionLevel: (() { final guardedValue = map['logCollectionLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

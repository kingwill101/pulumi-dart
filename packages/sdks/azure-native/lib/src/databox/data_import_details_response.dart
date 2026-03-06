// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_disk_details_response.dart';

/// Details of the data to be used for importing data to azure.
class DataImportDetailsResponse {
  /// Account details of the data to be transferred
  final pulumi.Input<ManagedDiskDetailsResponse> accountDetails;
  /// Level of the logs to be collected.
  final pulumi.Input<String>? logCollectionLevel;

  /// Creates a new [DataImportDetailsResponse].
  /// [accountDetails] Account details of the data to be transferred
  /// [logCollectionLevel] Level of the logs to be collected.
  const DataImportDetailsResponse({
    required this.accountDetails,
    this.logCollectionLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountDetails': pulumi.Input.mapInputValue<ManagedDiskDetailsResponse, Map<String, dynamic>>(accountDetails, (value) => value.toMap()),
      'logCollectionLevel': ?logCollectionLevel,
    };
  }

  factory DataImportDetailsResponse.fromMap(Map<String, dynamic> map) {
    return DataImportDetailsResponse(
      accountDetails: pulumi.Input.fromValue(ManagedDiskDetailsResponse.fromMap((map['accountDetails']! as Map).cast<String, dynamic>())),
      logCollectionLevel: (() { final guardedValue = map['logCollectionLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


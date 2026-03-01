// ignore_for_file: unused_element, unnecessary_cast

import 'managed_disk_details.dart';

/// Details of the data to be used for importing data to azure.
class DataImportDetails {
  /// Account details of the data to be transferred
  final ManagedDiskDetails accountDetails;
  /// Level of the logs to be collected.
  final String? logCollectionLevel;

  /// Creates a new [DataImportDetails].
  /// [accountDetails] Account details of the data to be transferred
  /// [logCollectionLevel] Level of the logs to be collected.
  DataImportDetails({
    required this.accountDetails,
    this.logCollectionLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountDetails': accountDetails.toMap(),
      'logCollectionLevel': ?logCollectionLevel,
    };
  }

  factory DataImportDetails.fromMap(Map<String, dynamic> map) {
    return DataImportDetails(
      accountDetails: ManagedDiskDetails.fromMap((map['accountDetails'] as Map).cast<String, dynamic>()),
      logCollectionLevel: map['logCollectionLevel'] == null ? null : map['logCollectionLevel'] as String,
    );
  }
}


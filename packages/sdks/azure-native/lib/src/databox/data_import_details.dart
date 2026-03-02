// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_disk_details.dart';

/// Details of the data to be used for importing data to azure.
class DataImportDetails {
  /// Account details of the data to be transferred
  final pulumi.Input<ManagedDiskDetails> accountDetails;
  /// Level of the logs to be collected.
  final pulumi.Input<String>? logCollectionLevel;

  /// Creates a new [DataImportDetails].
  /// [accountDetails] Account details of the data to be transferred
  /// [logCollectionLevel] Level of the logs to be collected.
  DataImportDetails({
    required this.accountDetails,
    this.logCollectionLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountDetails': pulumi.Input.mapInputValue<ManagedDiskDetails, Map<String, dynamic>>(accountDetails, (value) => value.toMap()),
      'logCollectionLevel': ?logCollectionLevel,
    };
  }

  factory DataImportDetails.fromMap(Map<String, dynamic> map) {
    return DataImportDetails(
      accountDetails: (ManagedDiskDetails.fromMap((map['accountDetails'] as Map).cast<String, dynamic>())).input(),
      logCollectionLevel: map['logCollectionLevel'] == null ? null : (map['logCollectionLevel'] as String).input(),
    );
  }
}


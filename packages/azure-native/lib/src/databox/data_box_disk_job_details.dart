// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_details.dart';
import 'data_export_details.dart';
import 'data_import_details.dart';
import 'key_encryption_key.dart';
import 'preferences.dart';
import 'reverse_shipping_details.dart';
import 'shipping_address.dart';

/// DataBox Disk Job Details.
class DataBoxDiskJobDetails {
  /// Contact details for notification and shipping.
  final ContactDetails contactDetails;
  /// Details of the data to be exported from azure.
  final List<DataExportDetails>? dataExportDetails;
  /// Details of the data to be imported into azure.
  final List<DataImportDetails>? dataImportDetails;
  /// The expected size of the data, which needs to be transferred in this job, in terabytes.
  final int? expectedDataSizeInTeraBytes;
  /// Indicates the type of job details.
  /// Expected value is 'DataBoxDisk'.
  final String jobDetailsType;
  /// Details about which key encryption type is being used.
  final KeyEncryptionKey? keyEncryptionKey;
  /// User entered passkey for DataBox Disk job.
  final String? passkey;
  /// Preferences for the order.
  final Preferences? preferences;
  /// User preference on what size disks are needed for the job. The map is from the disk size in TB to the count. Eg. {2,5} means 5 disks of 2 TB size. Key is string but will be checked against an int.
  final Map<String, int>? preferredDisks;
  /// Optional Reverse Shipping details for order.
  final ReverseShippingDetails? reverseShippingDetails;
  /// Shipping address of the customer.
  final ShippingAddress? shippingAddress;

  /// Creates a new [DataBoxDiskJobDetails].
  /// [contactDetails] Contact details for notification and shipping.
  /// [dataExportDetails] Details of the data to be exported from azure.
  /// [dataImportDetails] Details of the data to be imported into azure.
  /// [expectedDataSizeInTeraBytes] The expected size of the data, which needs to be transferred in this job, in terabytes.
  /// [jobDetailsType] Indicates the type of job details.
  /// [keyEncryptionKey] Details about which key encryption type is being used.
  /// [passkey] User entered passkey for DataBox Disk job.
  /// [preferences] Preferences for the order.
  /// [preferredDisks] User preference on what size disks are needed for the job. The map is from the disk size in TB to the count. Eg. {2,5} means 5 disks of 2 TB size. Key is string but will be checked against an int.
  /// [reverseShippingDetails] Optional Reverse Shipping details for order.
  /// [shippingAddress] Shipping address of the customer.
  DataBoxDiskJobDetails({
    required this.contactDetails,
    this.dataExportDetails,
    this.dataImportDetails,
    this.expectedDataSizeInTeraBytes,
    required this.jobDetailsType,
    this.keyEncryptionKey,
    this.passkey,
    this.preferences,
    this.preferredDisks,
    this.reverseShippingDetails,
    this.shippingAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactDetails': contactDetails.toMap(),
      'dataExportDetails': ?dataExportDetails == null ? null : pulumi.Input.encodeList<DataExportDetails, Map<String, dynamic>>(dataExportDetails!, (value) => value.toMap()),
      'dataImportDetails': ?dataImportDetails == null ? null : pulumi.Input.encodeList<DataImportDetails, Map<String, dynamic>>(dataImportDetails!, (value) => value.toMap()),
      'expectedDataSizeInTeraBytes': ?expectedDataSizeInTeraBytes,
      'jobDetailsType': jobDetailsType,
      'keyEncryptionKey': ?keyEncryptionKey == null ? null : keyEncryptionKey!.toMap(),
      'passkey': ?passkey,
      'preferences': ?preferences == null ? null : preferences!.toMap(),
      'preferredDisks': ?preferredDisks,
      'reverseShippingDetails': ?reverseShippingDetails == null ? null : reverseShippingDetails!.toMap(),
      'shippingAddress': ?shippingAddress == null ? null : shippingAddress!.toMap(),
    };
  }

  factory DataBoxDiskJobDetails.fromMap(Map<String, dynamic> map) {
    return DataBoxDiskJobDetails(
      contactDetails: ContactDetails.fromMap((map['contactDetails'] as Map).cast<String, dynamic>()),
      dataExportDetails: map['dataExportDetails'] == null ? null : pulumi.Input.decodeList<DataExportDetails>(map['dataExportDetails'], (value) => DataExportDetails.fromMap((value as Map).cast<String, dynamic>())),
      dataImportDetails: map['dataImportDetails'] == null ? null : pulumi.Input.decodeList<DataImportDetails>(map['dataImportDetails'], (value) => DataImportDetails.fromMap((value as Map).cast<String, dynamic>())),
      expectedDataSizeInTeraBytes: map['expectedDataSizeInTeraBytes'] == null ? null : map['expectedDataSizeInTeraBytes'] as int,
      jobDetailsType: map['jobDetailsType'] as String,
      keyEncryptionKey: map['keyEncryptionKey'] == null ? null : KeyEncryptionKey.fromMap((map['keyEncryptionKey'] as Map).cast<String, dynamic>()),
      passkey: map['passkey'] == null ? null : map['passkey'] as String,
      preferences: map['preferences'] == null ? null : Preferences.fromMap((map['preferences'] as Map).cast<String, dynamic>()),
      preferredDisks: map['preferredDisks'] == null ? null : (map['preferredDisks'] as Map).cast<String, int>(),
      reverseShippingDetails: map['reverseShippingDetails'] == null ? null : ReverseShippingDetails.fromMap((map['reverseShippingDetails'] as Map).cast<String, dynamic>()),
      shippingAddress: map['shippingAddress'] == null ? null : ShippingAddress.fromMap((map['shippingAddress'] as Map).cast<String, dynamic>()),
    );
  }
}


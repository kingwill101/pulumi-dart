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
  final pulumi.Input<ContactDetails> contactDetails;
  /// Details of the data to be exported from azure.
  final pulumi.Input<List<DataExportDetails>>? dataExportDetails;
  /// Details of the data to be imported into azure.
  final pulumi.Input<List<DataImportDetails>>? dataImportDetails;
  /// The expected size of the data, which needs to be transferred in this job, in terabytes.
  final pulumi.Input<int>? expectedDataSizeInTeraBytes;
  /// Indicates the type of job details.
  /// Expected value is 'DataBoxDisk'.
  final pulumi.Input<String> jobDetailsType;
  /// Details about which key encryption type is being used.
  final pulumi.Input<KeyEncryptionKey>? keyEncryptionKey;
  /// User entered passkey for DataBox Disk job.
  final pulumi.Input<String>? passkey;
  /// Preferences for the order.
  final pulumi.Input<Preferences>? preferences;
  /// User preference on what size disks are needed for the job. The map is from the disk size in TB to the count. Eg. {2,5} means 5 disks of 2 TB size. Key is string but will be checked against an int.
  final pulumi.Input<Map<String, int>>? preferredDisks;
  /// Optional Reverse Shipping details for order.
  final pulumi.Input<ReverseShippingDetails>? reverseShippingDetails;
  /// Shipping address of the customer.
  final pulumi.Input<ShippingAddress>? shippingAddress;

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
  const DataBoxDiskJobDetails({
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
      'contactDetails': pulumi.Input.mapInputValue<ContactDetails, Map<String, dynamic>>(contactDetails, (value) => value.toMap()),
      'dataExportDetails': ?pulumi.Input.mapOptionalInputValue<List<DataExportDetails>, List<Map<String, dynamic>>>(dataExportDetails, (value) => pulumi.Input.encodeList<DataExportDetails, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataImportDetails': ?pulumi.Input.mapOptionalInputValue<List<DataImportDetails>, List<Map<String, dynamic>>>(dataImportDetails, (value) => pulumi.Input.encodeList<DataImportDetails, Map<String, dynamic>>(value, (value) => value.toMap())),
      'expectedDataSizeInTeraBytes': ?expectedDataSizeInTeraBytes,
      'jobDetailsType': jobDetailsType,
      'keyEncryptionKey': ?pulumi.Input.mapOptionalInputValue<KeyEncryptionKey, Map<String, dynamic>>(keyEncryptionKey, (value) => value.toMap()),
      'passkey': ?passkey,
      'preferences': ?pulumi.Input.mapOptionalInputValue<Preferences, Map<String, dynamic>>(preferences, (value) => value.toMap()),
      'preferredDisks': ?preferredDisks,
      'reverseShippingDetails': ?pulumi.Input.mapOptionalInputValue<ReverseShippingDetails, Map<String, dynamic>>(reverseShippingDetails, (value) => value.toMap()),
      'shippingAddress': ?pulumi.Input.mapOptionalInputValue<ShippingAddress, Map<String, dynamic>>(shippingAddress, (value) => value.toMap()),
    };
  }

  factory DataBoxDiskJobDetails.fromMap(Map<String, dynamic> map) {
    return DataBoxDiskJobDetails(
      contactDetails: pulumi.Input.fromValue(ContactDetails.fromMap((map['contactDetails']! as Map).cast<String, dynamic>())),
      dataExportDetails: (() { final guardedValue = map['dataExportDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataExportDetails>(guardedValue, (value) => DataExportDetails.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dataImportDetails: (() { final guardedValue = map['dataImportDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataImportDetails>(guardedValue, (value) => DataImportDetails.fromMap((value as Map).cast<String, dynamic>()))); })(),
      expectedDataSizeInTeraBytes: (() { final guardedValue = map['expectedDataSizeInTeraBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      jobDetailsType: pulumi.Input.fromValue(map['jobDetailsType'] as String),
      keyEncryptionKey: (() { final guardedValue = map['keyEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      passkey: (() { final guardedValue = map['passkey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferences: (() { final guardedValue = map['preferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Preferences.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preferredDisks: (() { final guardedValue = map['preferredDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, int>()); })(),
      reverseShippingDetails: (() { final guardedValue = map['reverseShippingDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReverseShippingDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      shippingAddress: (() { final guardedValue = map['shippingAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ShippingAddress.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

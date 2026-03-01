// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_details.dart';
import 'data_export_details.dart';
import 'data_import_details.dart';
import 'key_encryption_key.dart';
import 'preferences.dart';
import 'reverse_shipping_details.dart';
import 'shipping_address.dart';

/// Databox Job Details
class DataBoxJobDetails {
  /// Contact details for notification and shipping.
  final ContactDetails contactDetails;
  /// Details of the data to be exported from azure.
  final List<DataExportDetails>? dataExportDetails;
  /// Details of the data to be imported into azure.
  final List<DataImportDetails>? dataImportDetails;
  /// Set Device password for unlocking Databox. Should not be passed for TransferType:ExportFromAzure jobs. If this is not passed, the service will generate password itself. This will not be returned in Get Call. Password Requirements :  Password must be minimum of 12 and maximum of 64 characters. Password must have at least one uppercase alphabet, one number and one special character. Password cannot have the following characters : IilLoO0 Password can have only alphabets, numbers and these characters : @#\-$%^!+=;:_()]+
  final String? devicePassword;
  /// The expected size of the data, which needs to be transferred in this job, in terabytes.
  final int? expectedDataSizeInTeraBytes;
  /// Indicates the type of job details.
  /// Expected value is 'DataBox'.
  final String jobDetailsType;
  /// Details about which key encryption type is being used.
  final KeyEncryptionKey? keyEncryptionKey;
  /// Preferences for the order.
  final Preferences? preferences;
  /// Optional Reverse Shipping details for order.
  final ReverseShippingDetails? reverseShippingDetails;
  /// Shipping address of the customer.
  final ShippingAddress? shippingAddress;

  /// Creates a new [DataBoxJobDetails].
  /// [contactDetails] Contact details for notification and shipping.
  /// [dataExportDetails] Details of the data to be exported from azure.
  /// [dataImportDetails] Details of the data to be imported into azure.
  /// [devicePassword] Set Device password for unlocking Databox. Should not be passed for TransferType:ExportFromAzure jobs. If this is not passed, the service will generate password itself. This will not be returned in Get Call. Password Requirements :  Password must be minimum of 12 and maximum of 64 characters. Password must have at least one uppercase alphabet, one number and one special character. Password cannot have the following characters : IilLoO0 Password can have only alphabets, numbers and these characters : @#\-$%^!+=;:_()]+
  /// [expectedDataSizeInTeraBytes] The expected size of the data, which needs to be transferred in this job, in terabytes.
  /// [jobDetailsType] Indicates the type of job details.
  /// [keyEncryptionKey] Details about which key encryption type is being used.
  /// [preferences] Preferences for the order.
  /// [reverseShippingDetails] Optional Reverse Shipping details for order.
  /// [shippingAddress] Shipping address of the customer.
  DataBoxJobDetails({
    required this.contactDetails,
    this.dataExportDetails,
    this.dataImportDetails,
    this.devicePassword,
    this.expectedDataSizeInTeraBytes,
    required this.jobDetailsType,
    this.keyEncryptionKey,
    this.preferences,
    this.reverseShippingDetails,
    this.shippingAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactDetails': contactDetails.toMap(),
      'dataExportDetails': ?dataExportDetails == null ? null : pulumi.Input.encodeList<DataExportDetails, Map<String, dynamic>>(dataExportDetails!, (value) => value.toMap()),
      'dataImportDetails': ?dataImportDetails == null ? null : pulumi.Input.encodeList<DataImportDetails, Map<String, dynamic>>(dataImportDetails!, (value) => value.toMap()),
      'devicePassword': ?devicePassword,
      'expectedDataSizeInTeraBytes': ?expectedDataSizeInTeraBytes,
      'jobDetailsType': jobDetailsType,
      'keyEncryptionKey': ?keyEncryptionKey == null ? null : keyEncryptionKey!.toMap(),
      'preferences': ?preferences == null ? null : preferences!.toMap(),
      'reverseShippingDetails': ?reverseShippingDetails == null ? null : reverseShippingDetails!.toMap(),
      'shippingAddress': ?shippingAddress == null ? null : shippingAddress!.toMap(),
    };
  }

  factory DataBoxJobDetails.fromMap(Map<String, dynamic> map) {
    return DataBoxJobDetails(
      contactDetails: ContactDetails.fromMap((map['contactDetails'] as Map).cast<String, dynamic>()),
      dataExportDetails: map['dataExportDetails'] == null ? null : pulumi.Input.decodeList<DataExportDetails>(map['dataExportDetails'], (value) => DataExportDetails.fromMap((value as Map).cast<String, dynamic>())),
      dataImportDetails: map['dataImportDetails'] == null ? null : pulumi.Input.decodeList<DataImportDetails>(map['dataImportDetails'], (value) => DataImportDetails.fromMap((value as Map).cast<String, dynamic>())),
      devicePassword: map['devicePassword'] == null ? null : map['devicePassword'] as String,
      expectedDataSizeInTeraBytes: map['expectedDataSizeInTeraBytes'] == null ? null : map['expectedDataSizeInTeraBytes'] as int,
      jobDetailsType: map['jobDetailsType'] as String,
      keyEncryptionKey: map['keyEncryptionKey'] == null ? null : KeyEncryptionKey.fromMap((map['keyEncryptionKey'] as Map).cast<String, dynamic>()),
      preferences: map['preferences'] == null ? null : Preferences.fromMap((map['preferences'] as Map).cast<String, dynamic>()),
      reverseShippingDetails: map['reverseShippingDetails'] == null ? null : ReverseShippingDetails.fromMap((map['reverseShippingDetails'] as Map).cast<String, dynamic>()),
      shippingAddress: map['shippingAddress'] == null ? null : ShippingAddress.fromMap((map['shippingAddress'] as Map).cast<String, dynamic>()),
    );
  }
}


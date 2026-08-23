// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_details.dart';
import 'data_export_details.dart';
import 'data_import_details.dart';
import 'key_encryption_key.dart';
import 'preferences.dart';
import 'reverse_shipping_details.dart';
import 'shipping_address.dart';

/// Databox Heavy Device Job Details
class DataBoxHeavyJobDetails {
  /// Contact details for notification and shipping.
  final pulumi.Input<ContactDetails> contactDetails;
  /// Details of the data to be exported from azure.
  final pulumi.Input<List<DataExportDetails>>? dataExportDetails;
  /// Details of the data to be imported into azure.
  final pulumi.Input<List<DataImportDetails>>? dataImportDetails;
  /// Set Device password for unlocking Databox Heavy. Should not be passed for TransferType:ExportFromAzure jobs. If this is not passed, the service will generate password itself. This will not be returned in Get Call. Password Requirements :  Password must be minimum of 12 and maximum of 64 characters. Password must have at least one uppercase alphabet, one number and one special character. Password cannot have the following characters : IilLoO0 Password can have only alphabets, numbers and these characters : @#\-$%^!+=;:_()]+
  final pulumi.Input<String>? devicePassword;
  /// The expected size of the data, which needs to be transferred in this job, in terabytes.
  final pulumi.Input<int>? expectedDataSizeInTeraBytes;
  /// Indicates the type of job details.
  /// Expected value is 'DataBoxHeavy'.
  final pulumi.Input<String> jobDetailsType;
  /// Details about which key encryption type is being used.
  final pulumi.Input<KeyEncryptionKey>? keyEncryptionKey;
  /// Preferences for the order.
  final pulumi.Input<Preferences>? preferences;
  /// Optional Reverse Shipping details for order.
  final pulumi.Input<ReverseShippingDetails>? reverseShippingDetails;
  /// Shipping address of the customer.
  final pulumi.Input<ShippingAddress>? shippingAddress;

  /// Creates a new [DataBoxHeavyJobDetails].
  /// [contactDetails] Contact details for notification and shipping.
  /// [dataExportDetails] Details of the data to be exported from azure.
  /// [dataImportDetails] Details of the data to be imported into azure.
  /// [devicePassword] Set Device password for unlocking Databox Heavy. Should not be passed for TransferType:ExportFromAzure jobs. If this is not passed, the service will generate password itself. This will not be returned in Get Call. Password Requirements :  Password must be minimum of 12 and maximum of 64 characters. Password must have at least one uppercase alphabet, one number and one special character. Password cannot have the following characters : IilLoO0 Password can have only alphabets, numbers and these characters : @#\-$%^!+=;:_()]+
  /// [expectedDataSizeInTeraBytes] The expected size of the data, which needs to be transferred in this job, in terabytes.
  /// [jobDetailsType] Indicates the type of job details.
  /// [keyEncryptionKey] Details about which key encryption type is being used.
  /// [preferences] Preferences for the order.
  /// [reverseShippingDetails] Optional Reverse Shipping details for order.
  /// [shippingAddress] Shipping address of the customer.
  const DataBoxHeavyJobDetails({
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
      'contactDetails': pulumi.Input.mapInputValue<ContactDetails, Map<String, dynamic>>(contactDetails, (value) => value.toMap()),
      'dataExportDetails': ?pulumi.Input.mapOptionalInputValue<List<DataExportDetails>, List<Map<String, dynamic>>>(dataExportDetails, (value) => pulumi.Input.encodeList<DataExportDetails, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataImportDetails': ?pulumi.Input.mapOptionalInputValue<List<DataImportDetails>, List<Map<String, dynamic>>>(dataImportDetails, (value) => pulumi.Input.encodeList<DataImportDetails, Map<String, dynamic>>(value, (value) => value.toMap())),
      'devicePassword': ?devicePassword,
      'expectedDataSizeInTeraBytes': ?expectedDataSizeInTeraBytes,
      'jobDetailsType': jobDetailsType,
      'keyEncryptionKey': ?pulumi.Input.mapOptionalInputValue<KeyEncryptionKey, Map<String, dynamic>>(keyEncryptionKey, (value) => value.toMap()),
      'preferences': ?pulumi.Input.mapOptionalInputValue<Preferences, Map<String, dynamic>>(preferences, (value) => value.toMap()),
      'reverseShippingDetails': ?pulumi.Input.mapOptionalInputValue<ReverseShippingDetails, Map<String, dynamic>>(reverseShippingDetails, (value) => value.toMap()),
      'shippingAddress': ?pulumi.Input.mapOptionalInputValue<ShippingAddress, Map<String, dynamic>>(shippingAddress, (value) => value.toMap()),
    };
  }

  factory DataBoxHeavyJobDetails.fromMap(Map<String, dynamic> map) {
    return DataBoxHeavyJobDetails(
      contactDetails: pulumi.Input.fromValue(ContactDetails.fromMap((map['contactDetails']! as Map).cast<String, dynamic>())),
      dataExportDetails: (() { final guardedValue = map['dataExportDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataExportDetails>(guardedValue, (value) => DataExportDetails.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dataImportDetails: (() { final guardedValue = map['dataImportDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataImportDetails>(guardedValue, (value) => DataImportDetails.fromMap((value as Map).cast<String, dynamic>()))); })(),
      devicePassword: (() { final guardedValue = map['devicePassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expectedDataSizeInTeraBytes: (() { final guardedValue = map['expectedDataSizeInTeraBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      jobDetailsType: pulumi.Input.fromValue(map['jobDetailsType'] as String),
      keyEncryptionKey: (() { final guardedValue = map['keyEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preferences: (() { final guardedValue = map['preferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Preferences.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      reverseShippingDetails: (() { final guardedValue = map['reverseShippingDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReverseShippingDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      shippingAddress: (() { final guardedValue = map['shippingAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ShippingAddress.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

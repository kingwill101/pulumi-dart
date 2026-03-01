// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_details.dart';
import 'data_export_details.dart';
import 'data_import_details.dart';
import 'import_disk_details.dart';
import 'key_encryption_key.dart';
import 'package_carrier_details.dart';
import 'preferences.dart';
import 'reverse_shipping_details.dart';
import 'shipping_address.dart';

/// Customer disk job details.
class DataBoxCustomerDiskJobDetails {
  /// Contact details for notification and shipping.
  final ContactDetails contactDetails;
  /// Details of the data to be exported from azure.
  final List<DataExportDetails>? dataExportDetails;
  /// Details of the data to be imported into azure.
  final List<DataImportDetails>? dataImportDetails;
  /// Flag to indicate if disk manifest should be backed-up in the Storage Account.
  final bool? enableManifestBackup;
  /// The expected size of the data, which needs to be transferred in this job, in terabytes.
  final int? expectedDataSizeInTeraBytes;
  /// Contains the map of disk serial number to the disk details for import jobs.
  final Map<String, ImportDiskDetails>? importDiskDetailsCollection;
  /// Indicates the type of job details.
  /// Expected value is 'DataBoxCustomerDisk'.
  final String jobDetailsType;
  /// Details about which key encryption type is being used.
  final KeyEncryptionKey? keyEncryptionKey;
  /// Preferences for the order.
  final Preferences? preferences;
  /// Return package shipping details.
  final PackageCarrierDetails returnToCustomerPackageDetails;
  /// Optional Reverse Shipping details for order.
  final ReverseShippingDetails? reverseShippingDetails;
  /// Shipping address of the customer.
  final ShippingAddress? shippingAddress;

  /// Creates a new [DataBoxCustomerDiskJobDetails].
  /// [contactDetails] Contact details for notification and shipping.
  /// [dataExportDetails] Details of the data to be exported from azure.
  /// [dataImportDetails] Details of the data to be imported into azure.
  /// [enableManifestBackup] Flag to indicate if disk manifest should be backed-up in the Storage Account.
  /// [expectedDataSizeInTeraBytes] The expected size of the data, which needs to be transferred in this job, in terabytes.
  /// [importDiskDetailsCollection] Contains the map of disk serial number to the disk details for import jobs.
  /// [jobDetailsType] Indicates the type of job details.
  /// [keyEncryptionKey] Details about which key encryption type is being used.
  /// [preferences] Preferences for the order.
  /// [returnToCustomerPackageDetails] Return package shipping details.
  /// [reverseShippingDetails] Optional Reverse Shipping details for order.
  /// [shippingAddress] Shipping address of the customer.
  DataBoxCustomerDiskJobDetails({
    required this.contactDetails,
    this.dataExportDetails,
    this.dataImportDetails,
    this.enableManifestBackup,
    this.expectedDataSizeInTeraBytes,
    this.importDiskDetailsCollection,
    required this.jobDetailsType,
    this.keyEncryptionKey,
    this.preferences,
    required this.returnToCustomerPackageDetails,
    this.reverseShippingDetails,
    this.shippingAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactDetails': contactDetails.toMap(),
      'dataExportDetails': ?dataExportDetails == null ? null : pulumi.Input.encodeList<DataExportDetails, Map<String, dynamic>>(dataExportDetails!, (value) => value.toMap()),
      'dataImportDetails': ?dataImportDetails == null ? null : pulumi.Input.encodeList<DataImportDetails, Map<String, dynamic>>(dataImportDetails!, (value) => value.toMap()),
      'enableManifestBackup': ?enableManifestBackup,
      'expectedDataSizeInTeraBytes': ?expectedDataSizeInTeraBytes,
      'importDiskDetailsCollection': ?importDiskDetailsCollection == null ? null : pulumi.Input.encodeMapValues<ImportDiskDetails, Map<String, dynamic>>(importDiskDetailsCollection!, (value) => value.toMap()),
      'jobDetailsType': jobDetailsType,
      'keyEncryptionKey': ?keyEncryptionKey == null ? null : keyEncryptionKey!.toMap(),
      'preferences': ?preferences == null ? null : preferences!.toMap(),
      'returnToCustomerPackageDetails': returnToCustomerPackageDetails.toMap(),
      'reverseShippingDetails': ?reverseShippingDetails == null ? null : reverseShippingDetails!.toMap(),
      'shippingAddress': ?shippingAddress == null ? null : shippingAddress!.toMap(),
    };
  }

  factory DataBoxCustomerDiskJobDetails.fromMap(Map<String, dynamic> map) {
    return DataBoxCustomerDiskJobDetails(
      contactDetails: ContactDetails.fromMap((map['contactDetails'] as Map).cast<String, dynamic>()),
      dataExportDetails: map['dataExportDetails'] == null ? null : pulumi.Input.decodeList<DataExportDetails>(map['dataExportDetails'], (value) => DataExportDetails.fromMap((value as Map).cast<String, dynamic>())),
      dataImportDetails: map['dataImportDetails'] == null ? null : pulumi.Input.decodeList<DataImportDetails>(map['dataImportDetails'], (value) => DataImportDetails.fromMap((value as Map).cast<String, dynamic>())),
      enableManifestBackup: map['enableManifestBackup'] == null ? null : map['enableManifestBackup'] as bool,
      expectedDataSizeInTeraBytes: map['expectedDataSizeInTeraBytes'] == null ? null : map['expectedDataSizeInTeraBytes'] as int,
      importDiskDetailsCollection: map['importDiskDetailsCollection'] == null ? null : pulumi.Input.decodeMapValues<ImportDiskDetails>(map['importDiskDetailsCollection'], (value) => ImportDiskDetails.fromMap((value as Map).cast<String, dynamic>())),
      jobDetailsType: map['jobDetailsType'] as String,
      keyEncryptionKey: map['keyEncryptionKey'] == null ? null : KeyEncryptionKey.fromMap((map['keyEncryptionKey'] as Map).cast<String, dynamic>()),
      preferences: map['preferences'] == null ? null : Preferences.fromMap((map['preferences'] as Map).cast<String, dynamic>()),
      returnToCustomerPackageDetails: PackageCarrierDetails.fromMap((map['returnToCustomerPackageDetails'] as Map).cast<String, dynamic>()),
      reverseShippingDetails: map['reverseShippingDetails'] == null ? null : ReverseShippingDetails.fromMap((map['reverseShippingDetails'] as Map).cast<String, dynamic>()),
      shippingAddress: map['shippingAddress'] == null ? null : ShippingAddress.fromMap((map['shippingAddress'] as Map).cast<String, dynamic>()),
    );
  }
}


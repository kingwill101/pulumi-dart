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
  final pulumi.Input<ContactDetails> contactDetails;

  /// Details of the data to be exported from azure.
  final pulumi.Input<List<DataExportDetails>>? dataExportDetails;

  /// Details of the data to be imported into azure.
  final pulumi.Input<List<DataImportDetails>>? dataImportDetails;

  /// Flag to indicate if disk manifest should be backed-up in the Storage Account.
  final pulumi.Input<bool>? enableManifestBackup;

  /// The expected size of the data, which needs to be transferred in this job, in terabytes.
  final pulumi.Input<int>? expectedDataSizeInTeraBytes;

  /// Contains the map of disk serial number to the disk details for import jobs.
  final pulumi.Input<Map<String, ImportDiskDetails>>?
  importDiskDetailsCollection;

  /// Indicates the type of job details.
  /// Expected value is 'DataBoxCustomerDisk'.
  final pulumi.Input<String> jobDetailsType;

  /// Details about which key encryption type is being used.
  final pulumi.Input<KeyEncryptionKey>? keyEncryptionKey;

  /// Preferences for the order.
  final pulumi.Input<Preferences>? preferences;

  /// Return package shipping details.
  final pulumi.Input<PackageCarrierDetails> returnToCustomerPackageDetails;

  /// Optional Reverse Shipping details for order.
  final pulumi.Input<ReverseShippingDetails>? reverseShippingDetails;

  /// Shipping address of the customer.
  final pulumi.Input<ShippingAddress>? shippingAddress;

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
      'contactDetails':
          pulumi.Input.mapInputValue<ContactDetails, Map<String, dynamic>>(
            contactDetails,
            (value) => value.toMap(),
          ),
      'dataExportDetails':
          ?pulumi.Input.mapOptionalInputValue<
            List<DataExportDetails>,
            List<Map<String, dynamic>>
          >(
            dataExportDetails,
            (value) =>
                pulumi.Input.encodeList<
                  DataExportDetails,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'dataImportDetails':
          ?pulumi.Input.mapOptionalInputValue<
            List<DataImportDetails>,
            List<Map<String, dynamic>>
          >(
            dataImportDetails,
            (value) =>
                pulumi.Input.encodeList<
                  DataImportDetails,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'enableManifestBackup': ?enableManifestBackup,
      'expectedDataSizeInTeraBytes': ?expectedDataSizeInTeraBytes,
      'importDiskDetailsCollection':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, ImportDiskDetails>,
            Map<String, Map<String, dynamic>>
          >(
            importDiskDetailsCollection,
            (value) =>
                pulumi.Input.encodeMapValues<
                  ImportDiskDetails,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'jobDetailsType': jobDetailsType,
      'keyEncryptionKey':
          ?pulumi.Input.mapOptionalInputValue<
            KeyEncryptionKey,
            Map<String, dynamic>
          >(keyEncryptionKey, (value) => value.toMap()),
      'preferences':
          ?pulumi.Input.mapOptionalInputValue<
            Preferences,
            Map<String, dynamic>
          >(preferences, (value) => value.toMap()),
      'returnToCustomerPackageDetails':
          pulumi.Input.mapInputValue<
            PackageCarrierDetails,
            Map<String, dynamic>
          >(returnToCustomerPackageDetails, (value) => value.toMap()),
      'reverseShippingDetails':
          ?pulumi.Input.mapOptionalInputValue<
            ReverseShippingDetails,
            Map<String, dynamic>
          >(reverseShippingDetails, (value) => value.toMap()),
      'shippingAddress':
          ?pulumi.Input.mapOptionalInputValue<
            ShippingAddress,
            Map<String, dynamic>
          >(shippingAddress, (value) => value.toMap()),
    };
  }

  factory DataBoxCustomerDiskJobDetails.fromMap(Map<String, dynamic> map) {
    return DataBoxCustomerDiskJobDetails(
      contactDetails: pulumi.Input.fromValue(
        ContactDetails.fromMap(
          (map['contactDetails']! as Map).cast<String, dynamic>(),
        ),
      ),
      dataExportDetails: (() {
        final guardedValue = map['dataExportDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DataExportDetails>(
            guardedValue,
            (value) => DataExportDetails.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      dataImportDetails: (() {
        final guardedValue = map['dataImportDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DataImportDetails>(
            guardedValue,
            (value) => DataImportDetails.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      enableManifestBackup: (() {
        final guardedValue = map['enableManifestBackup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      expectedDataSizeInTeraBytes: (() {
        final guardedValue = map['expectedDataSizeInTeraBytes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      importDiskDetailsCollection: (() {
        final guardedValue = map['importDiskDetailsCollection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<ImportDiskDetails>(
            guardedValue,
            (value) => ImportDiskDetails.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      jobDetailsType: pulumi.Input.fromValue(map['jobDetailsType'] as String),
      keyEncryptionKey: (() {
        final guardedValue = map['keyEncryptionKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          KeyEncryptionKey.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      preferences: (() {
        final guardedValue = map['preferences'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Preferences.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      returnToCustomerPackageDetails: pulumi.Input.fromValue(
        PackageCarrierDetails.fromMap(
          (map['returnToCustomerPackageDetails']! as Map)
              .cast<String, dynamic>(),
        ),
      ),
      reverseShippingDetails: (() {
        final guardedValue = map['reverseShippingDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ReverseShippingDetails.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      shippingAddress: (() {
        final guardedValue = map['shippingAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ShippingAddress.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}

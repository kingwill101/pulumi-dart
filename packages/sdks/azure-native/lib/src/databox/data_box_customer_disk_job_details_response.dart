// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_details_response.dart';
import 'data_box_customer_disk_copy_progress_response.dart';
import 'data_export_details_response.dart';
import 'data_import_details_response.dart';
import 'device_erasure_details_response.dart';
import 'export_disk_details_response.dart';
import 'import_disk_details_response.dart';
import 'job_stages_response.dart';
import 'key_encryption_key_response.dart';
import 'last_mitigation_action_on_job_response.dart';
import 'package_carrier_details_response.dart';
import 'package_carrier_info_response.dart';
import 'package_shipping_details_response.dart';
import 'preferences_response.dart';
import 'reverse_shipping_details_response.dart';
import 'shipping_address_response.dart';

/// Customer disk job details.
class DataBoxCustomerDiskJobDetailsResponse {
  /// Available actions on the job.
  final pulumi.Input<List<String>> actions;
  /// Shared access key to download the chain of custody logs
  final pulumi.Input<String> chainOfCustodySasKey;
  /// Contact details for notification and shipping.
  final pulumi.Input<ContactDetailsResponse> contactDetails;
  /// List of copy log details.
  final pulumi.Input<List<dynamic>> copyLogDetails;
  /// Copy progress per disk.
  final pulumi.Input<List<DataBoxCustomerDiskCopyProgressResponse>> copyProgress;
  /// DataCenter code.
  final pulumi.Input<String> dataCenterCode;
  /// Details of the data to be exported from azure.
  final pulumi.Input<List<DataExportDetailsResponse>?>? dataExportDetails;
  /// Details of the data to be imported into azure.
  final pulumi.Input<List<DataImportDetailsResponse>?>? dataImportDetails;
  /// Datacenter address to ship to, for the given sku and storage location.
  final pulumi.Input<dynamic> datacenterAddress;
  /// Delivery package shipping details.
  final pulumi.Input<PackageCarrierInfoResponse> deliverToDcPackageDetails;
  /// Delivery package shipping details.
  final pulumi.Input<PackageShippingDetailsResponse> deliveryPackage;
  /// Holds device data erasure details
  final pulumi.Input<DeviceErasureDetailsResponse> deviceErasureDetails;
  /// Flag to indicate if disk manifest should be backed-up in the Storage Account.
  final pulumi.Input<bool?>? enableManifestBackup;
  /// The expected size of the data, which needs to be transferred in this job, in terabytes.
  final pulumi.Input<int?>? expectedDataSizeInTeraBytes;
  /// Contains the map of disk serial number to the disk details for export jobs.
  final pulumi.Input<Map<String, ExportDiskDetailsResponse>> exportDiskDetailsCollection;
  /// Contains the map of disk serial number to the disk details for import jobs.
  final pulumi.Input<Map<String, ImportDiskDetailsResponse>?>? importDiskDetailsCollection;
  /// Indicates the type of job details.
  /// Expected value is 'DataBoxCustomerDisk'.
  final pulumi.Input<String> jobDetailsType;
  /// List of stages that run in the job.
  final pulumi.Input<List<JobStagesResponse>> jobStages;
  /// Details about which key encryption type is being used.
  final pulumi.Input<KeyEncryptionKeyResponse?>? keyEncryptionKey;
  /// Last mitigation action performed on the job.
  final pulumi.Input<LastMitigationActionOnJobResponse> lastMitigationActionOnJob;
  /// Preferences for the order.
  final pulumi.Input<PreferencesResponse?>? preferences;
  /// Return package shipping details.
  final pulumi.Input<PackageShippingDetailsResponse> returnPackage;
  /// Return package shipping details.
  final pulumi.Input<PackageCarrierDetailsResponse> returnToCustomerPackageDetails;
  /// Shared access key to download the return shipment label
  final pulumi.Input<String> reverseShipmentLabelSasKey;
  /// Optional Reverse Shipping details for order.
  final pulumi.Input<ReverseShippingDetailsResponse?>? reverseShippingDetails;
  /// Shipping address of the customer.
  final pulumi.Input<ShippingAddressResponse?>? shippingAddress;

  /// Creates a new [DataBoxCustomerDiskJobDetailsResponse].
  /// [actions] Available actions on the job.
  /// [chainOfCustodySasKey] Shared access key to download the chain of custody logs
  /// [contactDetails] Contact details for notification and shipping.
  /// [copyLogDetails] List of copy log details.
  /// [copyProgress] Copy progress per disk.
  /// [dataCenterCode] DataCenter code.
  /// [dataExportDetails] Details of the data to be exported from azure.
  /// [dataImportDetails] Details of the data to be imported into azure.
  /// [datacenterAddress] Datacenter address to ship to, for the given sku and storage location.
  /// [deliverToDcPackageDetails] Delivery package shipping details.
  /// [deliveryPackage] Delivery package shipping details.
  /// [deviceErasureDetails] Holds device data erasure details
  /// [enableManifestBackup] Flag to indicate if disk manifest should be backed-up in the Storage Account.
  /// [expectedDataSizeInTeraBytes] The expected size of the data, which needs to be transferred in this job, in terabytes.
  /// [exportDiskDetailsCollection] Contains the map of disk serial number to the disk details for export jobs.
  /// [importDiskDetailsCollection] Contains the map of disk serial number to the disk details for import jobs.
  /// [jobDetailsType] Indicates the type of job details.
  /// [jobStages] List of stages that run in the job.
  /// [keyEncryptionKey] Details about which key encryption type is being used.
  /// [lastMitigationActionOnJob] Last mitigation action performed on the job.
  /// [preferences] Preferences for the order.
  /// [returnPackage] Return package shipping details.
  /// [returnToCustomerPackageDetails] Return package shipping details.
  /// [reverseShipmentLabelSasKey] Shared access key to download the return shipment label
  /// [reverseShippingDetails] Optional Reverse Shipping details for order.
  /// [shippingAddress] Shipping address of the customer.
  DataBoxCustomerDiskJobDetailsResponse({
    required this.actions,
    required this.chainOfCustodySasKey,
    required this.contactDetails,
    required this.copyLogDetails,
    required this.copyProgress,
    required this.dataCenterCode,
    this.dataExportDetails,
    this.dataImportDetails,
    required this.datacenterAddress,
    required this.deliverToDcPackageDetails,
    required this.deliveryPackage,
    required this.deviceErasureDetails,
    pulumi.Input<bool?>? enableManifestBackup,
    this.expectedDataSizeInTeraBytes,
    required this.exportDiskDetailsCollection,
    this.importDiskDetailsCollection,
    required this.jobDetailsType,
    required this.jobStages,
    this.keyEncryptionKey,
    required this.lastMitigationActionOnJob,
    this.preferences,
    required this.returnPackage,
    required this.returnToCustomerPackageDetails,
    required this.reverseShipmentLabelSasKey,
    this.reverseShippingDetails,
    this.shippingAddress,
  }) : enableManifestBackup = enableManifestBackup ?? pulumi.Input.fromValue(false);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions,
      'chainOfCustodySasKey': chainOfCustodySasKey,
      'contactDetails': pulumi.Input.mapInputValue<ContactDetailsResponse, Map<String, dynamic>>(contactDetails, (value) => value.toMap()),
      'copyLogDetails': copyLogDetails,
      'copyProgress': pulumi.Input.mapInputValue<List<DataBoxCustomerDiskCopyProgressResponse>, List<Map<String, dynamic>>>(copyProgress, (value) => pulumi.Input.encodeList<DataBoxCustomerDiskCopyProgressResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataCenterCode': dataCenterCode,
      'dataExportDetails': ?pulumi.Input.mapOptionalInputValue<List<DataExportDetailsResponse>, List<Map<String, dynamic>>>(dataExportDetails, (value) => pulumi.Input.encodeList<DataExportDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataImportDetails': ?pulumi.Input.mapOptionalInputValue<List<DataImportDetailsResponse>, List<Map<String, dynamic>>>(dataImportDetails, (value) => pulumi.Input.encodeList<DataImportDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'datacenterAddress': datacenterAddress,
      'deliverToDcPackageDetails': pulumi.Input.mapInputValue<PackageCarrierInfoResponse, Map<String, dynamic>>(deliverToDcPackageDetails, (value) => value.toMap()),
      'deliveryPackage': pulumi.Input.mapInputValue<PackageShippingDetailsResponse, Map<String, dynamic>>(deliveryPackage, (value) => value.toMap()),
      'deviceErasureDetails': pulumi.Input.mapInputValue<DeviceErasureDetailsResponse, Map<String, dynamic>>(deviceErasureDetails, (value) => value.toMap()),
      'enableManifestBackup': ?enableManifestBackup,
      'expectedDataSizeInTeraBytes': ?expectedDataSizeInTeraBytes,
      'exportDiskDetailsCollection': pulumi.Input.mapInputValue<Map<String, ExportDiskDetailsResponse>, Map<String, Map<String, dynamic>>>(exportDiskDetailsCollection, (value) => pulumi.Input.encodeMapValues<ExportDiskDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'importDiskDetailsCollection': ?pulumi.Input.mapOptionalInputValue<Map<String, ImportDiskDetailsResponse>, Map<String, Map<String, dynamic>>>(importDiskDetailsCollection, (value) => pulumi.Input.encodeMapValues<ImportDiskDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'jobDetailsType': jobDetailsType,
      'jobStages': pulumi.Input.mapInputValue<List<JobStagesResponse>, List<Map<String, dynamic>>>(jobStages, (value) => pulumi.Input.encodeList<JobStagesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keyEncryptionKey': ?pulumi.Input.mapOptionalInputValue<KeyEncryptionKeyResponse, Map<String, dynamic>>(keyEncryptionKey, (value) => value.toMap()),
      'lastMitigationActionOnJob': pulumi.Input.mapInputValue<LastMitigationActionOnJobResponse, Map<String, dynamic>>(lastMitigationActionOnJob, (value) => value.toMap()),
      'preferences': ?pulumi.Input.mapOptionalInputValue<PreferencesResponse, Map<String, dynamic>>(preferences, (value) => value.toMap()),
      'returnPackage': pulumi.Input.mapInputValue<PackageShippingDetailsResponse, Map<String, dynamic>>(returnPackage, (value) => value.toMap()),
      'returnToCustomerPackageDetails': pulumi.Input.mapInputValue<PackageCarrierDetailsResponse, Map<String, dynamic>>(returnToCustomerPackageDetails, (value) => value.toMap()),
      'reverseShipmentLabelSasKey': reverseShipmentLabelSasKey,
      'reverseShippingDetails': ?pulumi.Input.mapOptionalInputValue<ReverseShippingDetailsResponse, Map<String, dynamic>>(reverseShippingDetails, (value) => value.toMap()),
      'shippingAddress': ?pulumi.Input.mapOptionalInputValue<ShippingAddressResponse, Map<String, dynamic>>(shippingAddress, (value) => value.toMap()),
    };
  }

  factory DataBoxCustomerDiskJobDetailsResponse.fromMap(Map<String, dynamic> map) {
    return DataBoxCustomerDiskJobDetailsResponse(
      actions: pulumi.Input.fromValue((map['actions'] as List).cast<String>()),
      chainOfCustodySasKey: pulumi.Input.fromValue(map['chainOfCustodySasKey'] as String),
      contactDetails: pulumi.Input.fromValue(ContactDetailsResponse.fromMap((map['contactDetails']! as Map).cast<String, dynamic>())),
      copyLogDetails: pulumi.Input.fromValue((map['copyLogDetails'] as List).cast<dynamic>()),
      copyProgress: pulumi.Input.fromValue(pulumi.Input.decodeList<DataBoxCustomerDiskCopyProgressResponse>(map['copyProgress']!, (value) => DataBoxCustomerDiskCopyProgressResponse.fromMap((value as Map).cast<String, dynamic>()))),
      dataCenterCode: pulumi.Input.fromValue(map['dataCenterCode'] as String),
      dataExportDetails: (() { final guardedValue = map['dataExportDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataExportDetailsResponse>(guardedValue, (value) => DataExportDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dataImportDetails: (() { final guardedValue = map['dataImportDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataImportDetailsResponse>(guardedValue, (value) => DataImportDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      datacenterAddress: pulumi.Input.fromValue(map['datacenterAddress']),
      deliverToDcPackageDetails: pulumi.Input.fromValue(PackageCarrierInfoResponse.fromMap((map['deliverToDcPackageDetails']! as Map).cast<String, dynamic>())),
      deliveryPackage: pulumi.Input.fromValue(PackageShippingDetailsResponse.fromMap((map['deliveryPackage']! as Map).cast<String, dynamic>())),
      deviceErasureDetails: pulumi.Input.fromValue(DeviceErasureDetailsResponse.fromMap((map['deviceErasureDetails']! as Map).cast<String, dynamic>())),
      enableManifestBackup: (() { final guardedValue = map['enableManifestBackup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expectedDataSizeInTeraBytes: (() { final guardedValue = map['expectedDataSizeInTeraBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      exportDiskDetailsCollection: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ExportDiskDetailsResponse>(map['exportDiskDetailsCollection']!, (value) => ExportDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))),
      importDiskDetailsCollection: (() { final guardedValue = map['importDiskDetailsCollection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ImportDiskDetailsResponse>(guardedValue, (value) => ImportDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      jobDetailsType: pulumi.Input.fromValue(map['jobDetailsType'] as String),
      jobStages: pulumi.Input.fromValue(pulumi.Input.decodeList<JobStagesResponse>(map['jobStages']!, (value) => JobStagesResponse.fromMap((value as Map).cast<String, dynamic>()))),
      keyEncryptionKey: (() { final guardedValue = map['keyEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyEncryptionKeyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lastMitigationActionOnJob: pulumi.Input.fromValue(LastMitigationActionOnJobResponse.fromMap((map['lastMitigationActionOnJob']! as Map).cast<String, dynamic>())),
      preferences: (() { final guardedValue = map['preferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreferencesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      returnPackage: pulumi.Input.fromValue(PackageShippingDetailsResponse.fromMap((map['returnPackage']! as Map).cast<String, dynamic>())),
      returnToCustomerPackageDetails: pulumi.Input.fromValue(PackageCarrierDetailsResponse.fromMap((map['returnToCustomerPackageDetails']! as Map).cast<String, dynamic>())),
      reverseShipmentLabelSasKey: pulumi.Input.fromValue(map['reverseShipmentLabelSasKey'] as String),
      reverseShippingDetails: (() { final guardedValue = map['reverseShippingDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReverseShippingDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      shippingAddress: (() { final guardedValue = map['shippingAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ShippingAddressResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

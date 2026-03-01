// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_details_response.dart';
import 'data_box_account_copy_log_details_response.dart';
import 'data_box_customer_disk_copy_progress_response.dart';
import 'data_export_details_response.dart';
import 'data_import_details_response.dart';
import 'datacenter_address_instruction_response_response.dart';
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
  final List<String> actions;
  /// Shared access key to download the chain of custody logs
  final String chainOfCustodySasKey;
  /// Contact details for notification and shipping.
  final ContactDetailsResponse contactDetails;
  /// List of copy log details.
  final List<DataBoxAccountCopyLogDetailsResponse> copyLogDetails;
  /// Copy progress per disk.
  final List<DataBoxCustomerDiskCopyProgressResponse> copyProgress;
  /// DataCenter code.
  final String dataCenterCode;
  /// Details of the data to be exported from azure.
  final List<DataExportDetailsResponse>? dataExportDetails;
  /// Details of the data to be imported into azure.
  final List<DataImportDetailsResponse>? dataImportDetails;
  /// Datacenter address to ship to, for the given sku and storage location.
  final DatacenterAddressInstructionResponseResponse datacenterAddress;
  /// Delivery package shipping details.
  final PackageCarrierInfoResponse deliverToDcPackageDetails;
  /// Delivery package shipping details.
  final PackageShippingDetailsResponse deliveryPackage;
  /// Holds device data erasure details
  final DeviceErasureDetailsResponse deviceErasureDetails;
  /// Flag to indicate if disk manifest should be backed-up in the Storage Account.
  final bool? enableManifestBackup;
  /// The expected size of the data, which needs to be transferred in this job, in terabytes.
  final int? expectedDataSizeInTeraBytes;
  /// Contains the map of disk serial number to the disk details for export jobs.
  final Map<String, ExportDiskDetailsResponse> exportDiskDetailsCollection;
  /// Contains the map of disk serial number to the disk details for import jobs.
  final Map<String, ImportDiskDetailsResponse>? importDiskDetailsCollection;
  /// Indicates the type of job details.
  /// Expected value is 'DataBoxCustomerDisk'.
  final String jobDetailsType;
  /// List of stages that run in the job.
  final List<JobStagesResponse> jobStages;
  /// Details about which key encryption type is being used.
  final KeyEncryptionKeyResponse? keyEncryptionKey;
  /// Last mitigation action performed on the job.
  final LastMitigationActionOnJobResponse lastMitigationActionOnJob;
  /// Preferences for the order.
  final PreferencesResponse? preferences;
  /// Return package shipping details.
  final PackageShippingDetailsResponse returnPackage;
  /// Return package shipping details.
  final PackageCarrierDetailsResponse returnToCustomerPackageDetails;
  /// Shared access key to download the return shipment label
  final String reverseShipmentLabelSasKey;
  /// Optional Reverse Shipping details for order.
  final ReverseShippingDetailsResponse? reverseShippingDetails;
  /// Shipping address of the customer.
  final ShippingAddressResponse? shippingAddress;

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
    this.enableManifestBackup,
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
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions,
      'chainOfCustodySasKey': chainOfCustodySasKey,
      'contactDetails': contactDetails.toMap(),
      'copyLogDetails': pulumi.Input.encodeList<DataBoxAccountCopyLogDetailsResponse, Map<String, dynamic>>(copyLogDetails, (value) => value.toMap()),
      'copyProgress': pulumi.Input.encodeList<DataBoxCustomerDiskCopyProgressResponse, Map<String, dynamic>>(copyProgress, (value) => value.toMap()),
      'dataCenterCode': dataCenterCode,
      'dataExportDetails': ?dataExportDetails == null ? null : pulumi.Input.encodeList<DataExportDetailsResponse, Map<String, dynamic>>(dataExportDetails!, (value) => value.toMap()),
      'dataImportDetails': ?dataImportDetails == null ? null : pulumi.Input.encodeList<DataImportDetailsResponse, Map<String, dynamic>>(dataImportDetails!, (value) => value.toMap()),
      'datacenterAddress': datacenterAddress.toMap(),
      'deliverToDcPackageDetails': deliverToDcPackageDetails.toMap(),
      'deliveryPackage': deliveryPackage.toMap(),
      'deviceErasureDetails': deviceErasureDetails.toMap(),
      'enableManifestBackup': ?enableManifestBackup,
      'expectedDataSizeInTeraBytes': ?expectedDataSizeInTeraBytes,
      'exportDiskDetailsCollection': pulumi.Input.encodeMapValues<ExportDiskDetailsResponse, Map<String, dynamic>>(exportDiskDetailsCollection, (value) => value.toMap()),
      'importDiskDetailsCollection': ?importDiskDetailsCollection == null ? null : pulumi.Input.encodeMapValues<ImportDiskDetailsResponse, Map<String, dynamic>>(importDiskDetailsCollection!, (value) => value.toMap()),
      'jobDetailsType': jobDetailsType,
      'jobStages': pulumi.Input.encodeList<JobStagesResponse, Map<String, dynamic>>(jobStages, (value) => value.toMap()),
      'keyEncryptionKey': ?keyEncryptionKey == null ? null : keyEncryptionKey!.toMap(),
      'lastMitigationActionOnJob': lastMitigationActionOnJob.toMap(),
      'preferences': ?preferences == null ? null : preferences!.toMap(),
      'returnPackage': returnPackage.toMap(),
      'returnToCustomerPackageDetails': returnToCustomerPackageDetails.toMap(),
      'reverseShipmentLabelSasKey': reverseShipmentLabelSasKey,
      'reverseShippingDetails': ?reverseShippingDetails == null ? null : reverseShippingDetails!.toMap(),
      'shippingAddress': ?shippingAddress == null ? null : shippingAddress!.toMap(),
    };
  }

  factory DataBoxCustomerDiskJobDetailsResponse.fromMap(Map<String, dynamic> map) {
    return DataBoxCustomerDiskJobDetailsResponse(
      actions: (map['actions'] as List).cast<String>(),
      chainOfCustodySasKey: map['chainOfCustodySasKey'] as String,
      contactDetails: ContactDetailsResponse.fromMap((map['contactDetails'] as Map).cast<String, dynamic>()),
      copyLogDetails: pulumi.Input.decodeList<DataBoxAccountCopyLogDetailsResponse>(map['copyLogDetails'], (value) => DataBoxAccountCopyLogDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      copyProgress: pulumi.Input.decodeList<DataBoxCustomerDiskCopyProgressResponse>(map['copyProgress'], (value) => DataBoxCustomerDiskCopyProgressResponse.fromMap((value as Map).cast<String, dynamic>())),
      dataCenterCode: map['dataCenterCode'] as String,
      dataExportDetails: map['dataExportDetails'] == null ? null : pulumi.Input.decodeList<DataExportDetailsResponse>(map['dataExportDetails'], (value) => DataExportDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      dataImportDetails: map['dataImportDetails'] == null ? null : pulumi.Input.decodeList<DataImportDetailsResponse>(map['dataImportDetails'], (value) => DataImportDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      datacenterAddress: DatacenterAddressInstructionResponseResponse.fromMap((map['datacenterAddress'] as Map).cast<String, dynamic>()),
      deliverToDcPackageDetails: PackageCarrierInfoResponse.fromMap((map['deliverToDcPackageDetails'] as Map).cast<String, dynamic>()),
      deliveryPackage: PackageShippingDetailsResponse.fromMap((map['deliveryPackage'] as Map).cast<String, dynamic>()),
      deviceErasureDetails: DeviceErasureDetailsResponse.fromMap((map['deviceErasureDetails'] as Map).cast<String, dynamic>()),
      enableManifestBackup: map['enableManifestBackup'] == null ? null : map['enableManifestBackup'] as bool,
      expectedDataSizeInTeraBytes: map['expectedDataSizeInTeraBytes'] == null ? null : map['expectedDataSizeInTeraBytes'] as int,
      exportDiskDetailsCollection: pulumi.Input.decodeMapValues<ExportDiskDetailsResponse>(map['exportDiskDetailsCollection'], (value) => ExportDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      importDiskDetailsCollection: map['importDiskDetailsCollection'] == null ? null : pulumi.Input.decodeMapValues<ImportDiskDetailsResponse>(map['importDiskDetailsCollection'], (value) => ImportDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      jobDetailsType: map['jobDetailsType'] as String,
      jobStages: pulumi.Input.decodeList<JobStagesResponse>(map['jobStages'], (value) => JobStagesResponse.fromMap((value as Map).cast<String, dynamic>())),
      keyEncryptionKey: map['keyEncryptionKey'] == null ? null : KeyEncryptionKeyResponse.fromMap((map['keyEncryptionKey'] as Map).cast<String, dynamic>()),
      lastMitigationActionOnJob: LastMitigationActionOnJobResponse.fromMap((map['lastMitigationActionOnJob'] as Map).cast<String, dynamic>()),
      preferences: map['preferences'] == null ? null : PreferencesResponse.fromMap((map['preferences'] as Map).cast<String, dynamic>()),
      returnPackage: PackageShippingDetailsResponse.fromMap((map['returnPackage'] as Map).cast<String, dynamic>()),
      returnToCustomerPackageDetails: PackageCarrierDetailsResponse.fromMap((map['returnToCustomerPackageDetails'] as Map).cast<String, dynamic>()),
      reverseShipmentLabelSasKey: map['reverseShipmentLabelSasKey'] as String,
      reverseShippingDetails: map['reverseShippingDetails'] == null ? null : ReverseShippingDetailsResponse.fromMap((map['reverseShippingDetails'] as Map).cast<String, dynamic>()),
      shippingAddress: map['shippingAddress'] == null ? null : ShippingAddressResponse.fromMap((map['shippingAddress'] as Map).cast<String, dynamic>()),
    );
  }
}


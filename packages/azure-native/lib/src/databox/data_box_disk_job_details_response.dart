// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_details_response.dart';
import 'data_box_account_copy_log_details_response.dart';
import 'data_box_disk_copy_progress_response.dart';
import 'data_box_disk_granular_copy_log_details_response.dart';
import 'data_box_disk_granular_copy_progress_response.dart';
import 'data_export_details_response.dart';
import 'data_import_details_response.dart';
import 'datacenter_address_instruction_response_response.dart';
import 'device_erasure_details_response.dart';
import 'job_stages_response.dart';
import 'key_encryption_key_response.dart';
import 'last_mitigation_action_on_job_response.dart';
import 'package_shipping_details_response.dart';
import 'preferences_response.dart';
import 'reverse_shipping_details_response.dart';
import 'shipping_address_response.dart';

/// DataBox Disk Job Details.
class DataBoxDiskJobDetailsResponse {
  /// Available actions on the job.
  final List<String> actions;
  /// Shared access key to download the chain of custody logs
  final String chainOfCustodySasKey;
  /// Contact details for notification and shipping.
  final ContactDetailsResponse contactDetails;
  /// List of copy log details.
  final List<DataBoxAccountCopyLogDetailsResponse> copyLogDetails;
  /// Copy progress per disk.
  final List<DataBoxDiskCopyProgressResponse> copyProgress;
  /// DataCenter code.
  final String dataCenterCode;
  /// Details of the data to be exported from azure.
  final List<DataExportDetailsResponse>? dataExportDetails;
  /// Details of the data to be imported into azure.
  final List<DataImportDetailsResponse>? dataImportDetails;
  /// Datacenter address to ship to, for the given sku and storage location.
  final DatacenterAddressInstructionResponseResponse datacenterAddress;
  /// Delivery package shipping details.
  final PackageShippingDetailsResponse deliveryPackage;
  /// Holds device data erasure details
  final DeviceErasureDetailsResponse deviceErasureDetails;
  /// Contains the map of disk serial number to the disk size being used for the job. Is returned only after the disks are shipped to the customer.
  final Map<String, int> disksAndSizeDetails;
  /// The expected size of the data, which needs to be transferred in this job, in terabytes.
  final int? expectedDataSizeInTeraBytes;
  /// Copy progress per disk.
  final List<DataBoxDiskGranularCopyLogDetailsResponse> granularCopyLogDetails;
  /// Copy progress per disk.
  final List<DataBoxDiskGranularCopyProgressResponse> granularCopyProgress;
  /// Indicates the type of job details.
  /// Expected value is 'DataBoxDisk'.
  final String jobDetailsType;
  /// List of stages that run in the job.
  final List<JobStagesResponse> jobStages;
  /// Details about which key encryption type is being used.
  final KeyEncryptionKeyResponse? keyEncryptionKey;
  /// Last mitigation action performed on the job.
  final LastMitigationActionOnJobResponse lastMitigationActionOnJob;
  /// User entered passkey for DataBox Disk job.
  final String? passkey;
  /// Preferences for the order.
  final PreferencesResponse? preferences;
  /// User preference on what size disks are needed for the job. The map is from the disk size in TB to the count. Eg. {2,5} means 5 disks of 2 TB size. Key is string but will be checked against an int.
  final Map<String, int>? preferredDisks;
  /// Return package shipping details.
  final PackageShippingDetailsResponse returnPackage;
  /// Shared access key to download the return shipment label
  final String reverseShipmentLabelSasKey;
  /// Optional Reverse Shipping details for order.
  final ReverseShippingDetailsResponse? reverseShippingDetails;
  /// Shipping address of the customer.
  final ShippingAddressResponse? shippingAddress;

  /// Creates a new [DataBoxDiskJobDetailsResponse].
  /// [actions] Available actions on the job.
  /// [chainOfCustodySasKey] Shared access key to download the chain of custody logs
  /// [contactDetails] Contact details for notification and shipping.
  /// [copyLogDetails] List of copy log details.
  /// [copyProgress] Copy progress per disk.
  /// [dataCenterCode] DataCenter code.
  /// [dataExportDetails] Details of the data to be exported from azure.
  /// [dataImportDetails] Details of the data to be imported into azure.
  /// [datacenterAddress] Datacenter address to ship to, for the given sku and storage location.
  /// [deliveryPackage] Delivery package shipping details.
  /// [deviceErasureDetails] Holds device data erasure details
  /// [disksAndSizeDetails] Contains the map of disk serial number to the disk size being used for the job. Is returned only after the disks are shipped to the customer.
  /// [expectedDataSizeInTeraBytes] The expected size of the data, which needs to be transferred in this job, in terabytes.
  /// [granularCopyLogDetails] Copy progress per disk.
  /// [granularCopyProgress] Copy progress per disk.
  /// [jobDetailsType] Indicates the type of job details.
  /// [jobStages] List of stages that run in the job.
  /// [keyEncryptionKey] Details about which key encryption type is being used.
  /// [lastMitigationActionOnJob] Last mitigation action performed on the job.
  /// [passkey] User entered passkey for DataBox Disk job.
  /// [preferences] Preferences for the order.
  /// [preferredDisks] User preference on what size disks are needed for the job. The map is from the disk size in TB to the count. Eg. {2,5} means 5 disks of 2 TB size. Key is string but will be checked against an int.
  /// [returnPackage] Return package shipping details.
  /// [reverseShipmentLabelSasKey] Shared access key to download the return shipment label
  /// [reverseShippingDetails] Optional Reverse Shipping details for order.
  /// [shippingAddress] Shipping address of the customer.
  DataBoxDiskJobDetailsResponse({
    required this.actions,
    required this.chainOfCustodySasKey,
    required this.contactDetails,
    required this.copyLogDetails,
    required this.copyProgress,
    required this.dataCenterCode,
    this.dataExportDetails,
    this.dataImportDetails,
    required this.datacenterAddress,
    required this.deliveryPackage,
    required this.deviceErasureDetails,
    required this.disksAndSizeDetails,
    this.expectedDataSizeInTeraBytes,
    required this.granularCopyLogDetails,
    required this.granularCopyProgress,
    required this.jobDetailsType,
    required this.jobStages,
    this.keyEncryptionKey,
    required this.lastMitigationActionOnJob,
    this.passkey,
    this.preferences,
    this.preferredDisks,
    required this.returnPackage,
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
      'copyProgress': pulumi.Input.encodeList<DataBoxDiskCopyProgressResponse, Map<String, dynamic>>(copyProgress, (value) => value.toMap()),
      'dataCenterCode': dataCenterCode,
      'dataExportDetails': ?dataExportDetails == null ? null : pulumi.Input.encodeList<DataExportDetailsResponse, Map<String, dynamic>>(dataExportDetails!, (value) => value.toMap()),
      'dataImportDetails': ?dataImportDetails == null ? null : pulumi.Input.encodeList<DataImportDetailsResponse, Map<String, dynamic>>(dataImportDetails!, (value) => value.toMap()),
      'datacenterAddress': datacenterAddress.toMap(),
      'deliveryPackage': deliveryPackage.toMap(),
      'deviceErasureDetails': deviceErasureDetails.toMap(),
      'disksAndSizeDetails': disksAndSizeDetails,
      'expectedDataSizeInTeraBytes': ?expectedDataSizeInTeraBytes,
      'granularCopyLogDetails': pulumi.Input.encodeList<DataBoxDiskGranularCopyLogDetailsResponse, Map<String, dynamic>>(granularCopyLogDetails, (value) => value.toMap()),
      'granularCopyProgress': pulumi.Input.encodeList<DataBoxDiskGranularCopyProgressResponse, Map<String, dynamic>>(granularCopyProgress, (value) => value.toMap()),
      'jobDetailsType': jobDetailsType,
      'jobStages': pulumi.Input.encodeList<JobStagesResponse, Map<String, dynamic>>(jobStages, (value) => value.toMap()),
      'keyEncryptionKey': ?keyEncryptionKey == null ? null : keyEncryptionKey!.toMap(),
      'lastMitigationActionOnJob': lastMitigationActionOnJob.toMap(),
      'passkey': ?passkey,
      'preferences': ?preferences == null ? null : preferences!.toMap(),
      'preferredDisks': ?preferredDisks,
      'returnPackage': returnPackage.toMap(),
      'reverseShipmentLabelSasKey': reverseShipmentLabelSasKey,
      'reverseShippingDetails': ?reverseShippingDetails == null ? null : reverseShippingDetails!.toMap(),
      'shippingAddress': ?shippingAddress == null ? null : shippingAddress!.toMap(),
    };
  }

  factory DataBoxDiskJobDetailsResponse.fromMap(Map<String, dynamic> map) {
    return DataBoxDiskJobDetailsResponse(
      actions: (map['actions'] as List).cast<String>(),
      chainOfCustodySasKey: map['chainOfCustodySasKey'] as String,
      contactDetails: ContactDetailsResponse.fromMap((map['contactDetails'] as Map).cast<String, dynamic>()),
      copyLogDetails: pulumi.Input.decodeList<DataBoxAccountCopyLogDetailsResponse>(map['copyLogDetails'], (value) => DataBoxAccountCopyLogDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      copyProgress: pulumi.Input.decodeList<DataBoxDiskCopyProgressResponse>(map['copyProgress'], (value) => DataBoxDiskCopyProgressResponse.fromMap((value as Map).cast<String, dynamic>())),
      dataCenterCode: map['dataCenterCode'] as String,
      dataExportDetails: map['dataExportDetails'] == null ? null : pulumi.Input.decodeList<DataExportDetailsResponse>(map['dataExportDetails'], (value) => DataExportDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      dataImportDetails: map['dataImportDetails'] == null ? null : pulumi.Input.decodeList<DataImportDetailsResponse>(map['dataImportDetails'], (value) => DataImportDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      datacenterAddress: DatacenterAddressInstructionResponseResponse.fromMap((map['datacenterAddress'] as Map).cast<String, dynamic>()),
      deliveryPackage: PackageShippingDetailsResponse.fromMap((map['deliveryPackage'] as Map).cast<String, dynamic>()),
      deviceErasureDetails: DeviceErasureDetailsResponse.fromMap((map['deviceErasureDetails'] as Map).cast<String, dynamic>()),
      disksAndSizeDetails: (map['disksAndSizeDetails'] as Map).cast<String, int>(),
      expectedDataSizeInTeraBytes: map['expectedDataSizeInTeraBytes'] == null ? null : map['expectedDataSizeInTeraBytes'] as int,
      granularCopyLogDetails: pulumi.Input.decodeList<DataBoxDiskGranularCopyLogDetailsResponse>(map['granularCopyLogDetails'], (value) => DataBoxDiskGranularCopyLogDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      granularCopyProgress: pulumi.Input.decodeList<DataBoxDiskGranularCopyProgressResponse>(map['granularCopyProgress'], (value) => DataBoxDiskGranularCopyProgressResponse.fromMap((value as Map).cast<String, dynamic>())),
      jobDetailsType: map['jobDetailsType'] as String,
      jobStages: pulumi.Input.decodeList<JobStagesResponse>(map['jobStages'], (value) => JobStagesResponse.fromMap((value as Map).cast<String, dynamic>())),
      keyEncryptionKey: map['keyEncryptionKey'] == null ? null : KeyEncryptionKeyResponse.fromMap((map['keyEncryptionKey'] as Map).cast<String, dynamic>()),
      lastMitigationActionOnJob: LastMitigationActionOnJobResponse.fromMap((map['lastMitigationActionOnJob'] as Map).cast<String, dynamic>()),
      passkey: map['passkey'] == null ? null : map['passkey'] as String,
      preferences: map['preferences'] == null ? null : PreferencesResponse.fromMap((map['preferences'] as Map).cast<String, dynamic>()),
      preferredDisks: map['preferredDisks'] == null ? null : (map['preferredDisks'] as Map).cast<String, int>(),
      returnPackage: PackageShippingDetailsResponse.fromMap((map['returnPackage'] as Map).cast<String, dynamic>()),
      reverseShipmentLabelSasKey: map['reverseShipmentLabelSasKey'] as String,
      reverseShippingDetails: map['reverseShippingDetails'] == null ? null : ReverseShippingDetailsResponse.fromMap((map['reverseShippingDetails'] as Map).cast<String, dynamic>()),
      shippingAddress: map['shippingAddress'] == null ? null : ShippingAddressResponse.fromMap((map['shippingAddress'] as Map).cast<String, dynamic>()),
    );
  }
}


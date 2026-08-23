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
  final pulumi.Input<List<String>> actions;
  /// Shared access key to download the chain of custody logs
  final pulumi.Input<String> chainOfCustodySasKey;
  /// Contact details for notification and shipping.
  final pulumi.Input<ContactDetailsResponse> contactDetails;
  /// List of copy log details.
  final pulumi.Input<List<DataBoxAccountCopyLogDetailsResponse>> copyLogDetails;
  /// Copy progress per disk.
  final pulumi.Input<List<DataBoxDiskCopyProgressResponse>> copyProgress;
  /// DataCenter code.
  final pulumi.Input<String> dataCenterCode;
  /// Details of the data to be exported from azure.
  final pulumi.Input<List<DataExportDetailsResponse>>? dataExportDetails;
  /// Details of the data to be imported into azure.
  final pulumi.Input<List<DataImportDetailsResponse>>? dataImportDetails;
  /// Datacenter address to ship to, for the given sku and storage location.
  final pulumi.Input<DatacenterAddressInstructionResponseResponse> datacenterAddress;
  /// Delivery package shipping details.
  final pulumi.Input<PackageShippingDetailsResponse> deliveryPackage;
  /// Holds device data erasure details
  final pulumi.Input<DeviceErasureDetailsResponse> deviceErasureDetails;
  /// Contains the map of disk serial number to the disk size being used for the job. Is returned only after the disks are shipped to the customer.
  final pulumi.Input<Map<String, int>> disksAndSizeDetails;
  /// The expected size of the data, which needs to be transferred in this job, in terabytes.
  final pulumi.Input<int>? expectedDataSizeInTeraBytes;
  /// Copy progress per disk.
  final pulumi.Input<List<DataBoxDiskGranularCopyLogDetailsResponse>> granularCopyLogDetails;
  /// Copy progress per disk.
  final pulumi.Input<List<DataBoxDiskGranularCopyProgressResponse>> granularCopyProgress;
  /// Indicates the type of job details.
  /// Expected value is 'DataBoxDisk'.
  final pulumi.Input<String> jobDetailsType;
  /// List of stages that run in the job.
  final pulumi.Input<List<JobStagesResponse>> jobStages;
  /// Details about which key encryption type is being used.
  final pulumi.Input<KeyEncryptionKeyResponse>? keyEncryptionKey;
  /// Last mitigation action performed on the job.
  final pulumi.Input<LastMitigationActionOnJobResponse> lastMitigationActionOnJob;
  /// User entered passkey for DataBox Disk job.
  final pulumi.Input<String>? passkey;
  /// Preferences for the order.
  final pulumi.Input<PreferencesResponse>? preferences;
  /// User preference on what size disks are needed for the job. The map is from the disk size in TB to the count. Eg. {2,5} means 5 disks of 2 TB size. Key is string but will be checked against an int.
  final pulumi.Input<Map<String, int>>? preferredDisks;
  /// Return package shipping details.
  final pulumi.Input<PackageShippingDetailsResponse> returnPackage;
  /// Shared access key to download the return shipment label
  final pulumi.Input<String> reverseShipmentLabelSasKey;
  /// Optional Reverse Shipping details for order.
  final pulumi.Input<ReverseShippingDetailsResponse>? reverseShippingDetails;
  /// Shipping address of the customer.
  final pulumi.Input<ShippingAddressResponse>? shippingAddress;

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
  const DataBoxDiskJobDetailsResponse({
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
      'contactDetails': pulumi.Input.mapInputValue<ContactDetailsResponse, Map<String, dynamic>>(contactDetails, (value) => value.toMap()),
      'copyLogDetails': pulumi.Input.mapInputValue<List<DataBoxAccountCopyLogDetailsResponse>, List<Map<String, dynamic>>>(copyLogDetails, (value) => pulumi.Input.encodeList<DataBoxAccountCopyLogDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'copyProgress': pulumi.Input.mapInputValue<List<DataBoxDiskCopyProgressResponse>, List<Map<String, dynamic>>>(copyProgress, (value) => pulumi.Input.encodeList<DataBoxDiskCopyProgressResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataCenterCode': dataCenterCode,
      'dataExportDetails': ?pulumi.Input.mapOptionalInputValue<List<DataExportDetailsResponse>, List<Map<String, dynamic>>>(dataExportDetails, (value) => pulumi.Input.encodeList<DataExportDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataImportDetails': ?pulumi.Input.mapOptionalInputValue<List<DataImportDetailsResponse>, List<Map<String, dynamic>>>(dataImportDetails, (value) => pulumi.Input.encodeList<DataImportDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'datacenterAddress': pulumi.Input.mapInputValue<DatacenterAddressInstructionResponseResponse, Map<String, dynamic>>(datacenterAddress, (value) => value.toMap()),
      'deliveryPackage': pulumi.Input.mapInputValue<PackageShippingDetailsResponse, Map<String, dynamic>>(deliveryPackage, (value) => value.toMap()),
      'deviceErasureDetails': pulumi.Input.mapInputValue<DeviceErasureDetailsResponse, Map<String, dynamic>>(deviceErasureDetails, (value) => value.toMap()),
      'disksAndSizeDetails': disksAndSizeDetails,
      'expectedDataSizeInTeraBytes': ?expectedDataSizeInTeraBytes,
      'granularCopyLogDetails': pulumi.Input.mapInputValue<List<DataBoxDiskGranularCopyLogDetailsResponse>, List<Map<String, dynamic>>>(granularCopyLogDetails, (value) => pulumi.Input.encodeList<DataBoxDiskGranularCopyLogDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'granularCopyProgress': pulumi.Input.mapInputValue<List<DataBoxDiskGranularCopyProgressResponse>, List<Map<String, dynamic>>>(granularCopyProgress, (value) => pulumi.Input.encodeList<DataBoxDiskGranularCopyProgressResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'jobDetailsType': jobDetailsType,
      'jobStages': pulumi.Input.mapInputValue<List<JobStagesResponse>, List<Map<String, dynamic>>>(jobStages, (value) => pulumi.Input.encodeList<JobStagesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keyEncryptionKey': ?pulumi.Input.mapOptionalInputValue<KeyEncryptionKeyResponse, Map<String, dynamic>>(keyEncryptionKey, (value) => value.toMap()),
      'lastMitigationActionOnJob': pulumi.Input.mapInputValue<LastMitigationActionOnJobResponse, Map<String, dynamic>>(lastMitigationActionOnJob, (value) => value.toMap()),
      'passkey': ?passkey,
      'preferences': ?pulumi.Input.mapOptionalInputValue<PreferencesResponse, Map<String, dynamic>>(preferences, (value) => value.toMap()),
      'preferredDisks': ?preferredDisks,
      'returnPackage': pulumi.Input.mapInputValue<PackageShippingDetailsResponse, Map<String, dynamic>>(returnPackage, (value) => value.toMap()),
      'reverseShipmentLabelSasKey': reverseShipmentLabelSasKey,
      'reverseShippingDetails': ?pulumi.Input.mapOptionalInputValue<ReverseShippingDetailsResponse, Map<String, dynamic>>(reverseShippingDetails, (value) => value.toMap()),
      'shippingAddress': ?pulumi.Input.mapOptionalInputValue<ShippingAddressResponse, Map<String, dynamic>>(shippingAddress, (value) => value.toMap()),
    };
  }

  factory DataBoxDiskJobDetailsResponse.fromMap(Map<String, dynamic> map) {
    return DataBoxDiskJobDetailsResponse(
      actions: pulumi.Input.fromValue((map['actions'] as List).cast<String>()),
      chainOfCustodySasKey: pulumi.Input.fromValue(map['chainOfCustodySasKey'] as String),
      contactDetails: pulumi.Input.fromValue(ContactDetailsResponse.fromMap((map['contactDetails']! as Map).cast<String, dynamic>())),
      copyLogDetails: pulumi.Input.fromValue(pulumi.Input.decodeList<DataBoxAccountCopyLogDetailsResponse>(map['copyLogDetails']!, (value) => DataBoxAccountCopyLogDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))),
      copyProgress: pulumi.Input.fromValue(pulumi.Input.decodeList<DataBoxDiskCopyProgressResponse>(map['copyProgress']!, (value) => DataBoxDiskCopyProgressResponse.fromMap((value as Map).cast<String, dynamic>()))),
      dataCenterCode: pulumi.Input.fromValue(map['dataCenterCode'] as String),
      dataExportDetails: (() { final guardedValue = map['dataExportDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataExportDetailsResponse>(guardedValue, (value) => DataExportDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dataImportDetails: (() { final guardedValue = map['dataImportDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataImportDetailsResponse>(guardedValue, (value) => DataImportDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      datacenterAddress: pulumi.Input.fromValue(DatacenterAddressInstructionResponseResponse.fromMap((map['datacenterAddress']! as Map).cast<String, dynamic>())),
      deliveryPackage: pulumi.Input.fromValue(PackageShippingDetailsResponse.fromMap((map['deliveryPackage']! as Map).cast<String, dynamic>())),
      deviceErasureDetails: pulumi.Input.fromValue(DeviceErasureDetailsResponse.fromMap((map['deviceErasureDetails']! as Map).cast<String, dynamic>())),
      disksAndSizeDetails: pulumi.Input.fromValue((map['disksAndSizeDetails'] as Map).cast<String, int>()),
      expectedDataSizeInTeraBytes: (() { final guardedValue = map['expectedDataSizeInTeraBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      granularCopyLogDetails: pulumi.Input.fromValue(pulumi.Input.decodeList<DataBoxDiskGranularCopyLogDetailsResponse>(map['granularCopyLogDetails']!, (value) => DataBoxDiskGranularCopyLogDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))),
      granularCopyProgress: pulumi.Input.fromValue(pulumi.Input.decodeList<DataBoxDiskGranularCopyProgressResponse>(map['granularCopyProgress']!, (value) => DataBoxDiskGranularCopyProgressResponse.fromMap((value as Map).cast<String, dynamic>()))),
      jobDetailsType: pulumi.Input.fromValue(map['jobDetailsType'] as String),
      jobStages: pulumi.Input.fromValue(pulumi.Input.decodeList<JobStagesResponse>(map['jobStages']!, (value) => JobStagesResponse.fromMap((value as Map).cast<String, dynamic>()))),
      keyEncryptionKey: (() { final guardedValue = map['keyEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyEncryptionKeyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lastMitigationActionOnJob: pulumi.Input.fromValue(LastMitigationActionOnJobResponse.fromMap((map['lastMitigationActionOnJob']! as Map).cast<String, dynamic>())),
      passkey: (() { final guardedValue = map['passkey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferences: (() { final guardedValue = map['preferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreferencesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preferredDisks: (() { final guardedValue = map['preferredDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, int>()); })(),
      returnPackage: pulumi.Input.fromValue(PackageShippingDetailsResponse.fromMap((map['returnPackage']! as Map).cast<String, dynamic>())),
      reverseShipmentLabelSasKey: pulumi.Input.fromValue(map['reverseShipmentLabelSasKey'] as String),
      reverseShippingDetails: (() { final guardedValue = map['reverseShippingDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReverseShippingDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      shippingAddress: (() { final guardedValue = map['shippingAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ShippingAddressResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

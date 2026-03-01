// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_details_response.dart';
import 'copy_progress_response.dart';
import 'data_box_account_copy_log_details_response.dart';
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

/// Databox Heavy Device Job Details
class DataBoxHeavyJobDetailsResponse {
  /// Available actions on the job.
  final List<String> actions;
  /// Shared access key to download the chain of custody logs
  final String chainOfCustodySasKey;
  /// Contact details for notification and shipping.
  final ContactDetailsResponse contactDetails;
  /// List of copy log details.
  final List<DataBoxAccountCopyLogDetailsResponse> copyLogDetails;
  /// Copy progress per account.
  final List<CopyProgressResponse> copyProgress;
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
  /// Set Device password for unlocking Databox Heavy. Should not be passed for TransferType:ExportFromAzure jobs. If this is not passed, the service will generate password itself. This will not be returned in Get Call. Password Requirements :  Password must be minimum of 12 and maximum of 64 characters. Password must have at least one uppercase alphabet, one number and one special character. Password cannot have the following characters : IilLoO0 Password can have only alphabets, numbers and these characters : @#\-$%^!+=;:_()]+
  final String? devicePassword;
  /// The expected size of the data, which needs to be transferred in this job, in terabytes.
  final int? expectedDataSizeInTeraBytes;
  /// Indicates the type of job details.
  /// Expected value is 'DataBoxHeavy'.
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
  /// Shared access key to download the return shipment label
  final String reverseShipmentLabelSasKey;
  /// Optional Reverse Shipping details for order.
  final ReverseShippingDetailsResponse? reverseShippingDetails;
  /// Shipping address of the customer.
  final ShippingAddressResponse? shippingAddress;

  /// Creates a new [DataBoxHeavyJobDetailsResponse].
  /// [actions] Available actions on the job.
  /// [chainOfCustodySasKey] Shared access key to download the chain of custody logs
  /// [contactDetails] Contact details for notification and shipping.
  /// [copyLogDetails] List of copy log details.
  /// [copyProgress] Copy progress per account.
  /// [dataCenterCode] DataCenter code.
  /// [dataExportDetails] Details of the data to be exported from azure.
  /// [dataImportDetails] Details of the data to be imported into azure.
  /// [datacenterAddress] Datacenter address to ship to, for the given sku and storage location.
  /// [deliveryPackage] Delivery package shipping details.
  /// [deviceErasureDetails] Holds device data erasure details
  /// [devicePassword] Set Device password for unlocking Databox Heavy. Should not be passed for TransferType:ExportFromAzure jobs. If this is not passed, the service will generate password itself. This will not be returned in Get Call. Password Requirements :  Password must be minimum of 12 and maximum of 64 characters. Password must have at least one uppercase alphabet, one number and one special character. Password cannot have the following characters : IilLoO0 Password can have only alphabets, numbers and these characters : @#\-$%^!+=;:_()]+
  /// [expectedDataSizeInTeraBytes] The expected size of the data, which needs to be transferred in this job, in terabytes.
  /// [jobDetailsType] Indicates the type of job details.
  /// [jobStages] List of stages that run in the job.
  /// [keyEncryptionKey] Details about which key encryption type is being used.
  /// [lastMitigationActionOnJob] Last mitigation action performed on the job.
  /// [preferences] Preferences for the order.
  /// [returnPackage] Return package shipping details.
  /// [reverseShipmentLabelSasKey] Shared access key to download the return shipment label
  /// [reverseShippingDetails] Optional Reverse Shipping details for order.
  /// [shippingAddress] Shipping address of the customer.
  DataBoxHeavyJobDetailsResponse({
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
    this.devicePassword,
    this.expectedDataSizeInTeraBytes,
    required this.jobDetailsType,
    required this.jobStages,
    this.keyEncryptionKey,
    required this.lastMitigationActionOnJob,
    this.preferences,
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
      'copyProgress': pulumi.Input.encodeList<CopyProgressResponse, Map<String, dynamic>>(copyProgress, (value) => value.toMap()),
      'dataCenterCode': dataCenterCode,
      'dataExportDetails': ?dataExportDetails == null ? null : pulumi.Input.encodeList<DataExportDetailsResponse, Map<String, dynamic>>(dataExportDetails!, (value) => value.toMap()),
      'dataImportDetails': ?dataImportDetails == null ? null : pulumi.Input.encodeList<DataImportDetailsResponse, Map<String, dynamic>>(dataImportDetails!, (value) => value.toMap()),
      'datacenterAddress': datacenterAddress.toMap(),
      'deliveryPackage': deliveryPackage.toMap(),
      'deviceErasureDetails': deviceErasureDetails.toMap(),
      'devicePassword': ?devicePassword,
      'expectedDataSizeInTeraBytes': ?expectedDataSizeInTeraBytes,
      'jobDetailsType': jobDetailsType,
      'jobStages': pulumi.Input.encodeList<JobStagesResponse, Map<String, dynamic>>(jobStages, (value) => value.toMap()),
      'keyEncryptionKey': ?keyEncryptionKey == null ? null : keyEncryptionKey!.toMap(),
      'lastMitigationActionOnJob': lastMitigationActionOnJob.toMap(),
      'preferences': ?preferences == null ? null : preferences!.toMap(),
      'returnPackage': returnPackage.toMap(),
      'reverseShipmentLabelSasKey': reverseShipmentLabelSasKey,
      'reverseShippingDetails': ?reverseShippingDetails == null ? null : reverseShippingDetails!.toMap(),
      'shippingAddress': ?shippingAddress == null ? null : shippingAddress!.toMap(),
    };
  }

  factory DataBoxHeavyJobDetailsResponse.fromMap(Map<String, dynamic> map) {
    return DataBoxHeavyJobDetailsResponse(
      actions: (map['actions'] as List).cast<String>(),
      chainOfCustodySasKey: map['chainOfCustodySasKey'] as String,
      contactDetails: ContactDetailsResponse.fromMap((map['contactDetails'] as Map).cast<String, dynamic>()),
      copyLogDetails: pulumi.Input.decodeList<DataBoxAccountCopyLogDetailsResponse>(map['copyLogDetails'], (value) => DataBoxAccountCopyLogDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      copyProgress: pulumi.Input.decodeList<CopyProgressResponse>(map['copyProgress'], (value) => CopyProgressResponse.fromMap((value as Map).cast<String, dynamic>())),
      dataCenterCode: map['dataCenterCode'] as String,
      dataExportDetails: map['dataExportDetails'] == null ? null : pulumi.Input.decodeList<DataExportDetailsResponse>(map['dataExportDetails'], (value) => DataExportDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      dataImportDetails: map['dataImportDetails'] == null ? null : pulumi.Input.decodeList<DataImportDetailsResponse>(map['dataImportDetails'], (value) => DataImportDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      datacenterAddress: DatacenterAddressInstructionResponseResponse.fromMap((map['datacenterAddress'] as Map).cast<String, dynamic>()),
      deliveryPackage: PackageShippingDetailsResponse.fromMap((map['deliveryPackage'] as Map).cast<String, dynamic>()),
      deviceErasureDetails: DeviceErasureDetailsResponse.fromMap((map['deviceErasureDetails'] as Map).cast<String, dynamic>()),
      devicePassword: map['devicePassword'] == null ? null : map['devicePassword'] as String,
      expectedDataSizeInTeraBytes: map['expectedDataSizeInTeraBytes'] == null ? null : map['expectedDataSizeInTeraBytes'] as int,
      jobDetailsType: map['jobDetailsType'] as String,
      jobStages: pulumi.Input.decodeList<JobStagesResponse>(map['jobStages'], (value) => JobStagesResponse.fromMap((value as Map).cast<String, dynamic>())),
      keyEncryptionKey: map['keyEncryptionKey'] == null ? null : KeyEncryptionKeyResponse.fromMap((map['keyEncryptionKey'] as Map).cast<String, dynamic>()),
      lastMitigationActionOnJob: LastMitigationActionOnJobResponse.fromMap((map['lastMitigationActionOnJob'] as Map).cast<String, dynamic>()),
      preferences: map['preferences'] == null ? null : PreferencesResponse.fromMap((map['preferences'] as Map).cast<String, dynamic>()),
      returnPackage: PackageShippingDetailsResponse.fromMap((map['returnPackage'] as Map).cast<String, dynamic>()),
      reverseShipmentLabelSasKey: map['reverseShipmentLabelSasKey'] as String,
      reverseShippingDetails: map['reverseShippingDetails'] == null ? null : ReverseShippingDetailsResponse.fromMap((map['reverseShippingDetails'] as Map).cast<String, dynamic>()),
      shippingAddress: map['shippingAddress'] == null ? null : ShippingAddressResponse.fromMap((map['shippingAddress'] as Map).cast<String, dynamic>()),
    );
  }
}


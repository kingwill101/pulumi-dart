// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_package_information_response.dart';
import 'drive_status_response.dart';
import 'encryption_key_details_response.dart';
import 'export_response.dart';
import 'package_information_response.dart';
import 'return_address_response.dart';
import 'return_shipping_response.dart';
import 'shipping_information_response.dart';

/// Specifies the job properties
class JobDetailsResponse {
  /// Default value is false. Indicates whether the manifest files on the drives should be copied to block blobs.
  final pulumi.Input<bool>? backupDriveManifest;
  /// Indicates whether a request has been submitted to cancel the job.
  final pulumi.Input<bool>? cancelRequested;
  /// Contains information about the package being shipped by the customer to the Microsoft data center.
  final pulumi.Input<DeliveryPackageInformationResponse>? deliveryPackage;
  /// The virtual blob directory to which the copy logs and backups of drive manifest files (if enabled) will be stored.
  final pulumi.Input<String>? diagnosticsPath;
  /// List of up to ten drives that comprise the job. The drive list is a required element for an import job; it is not specified for export jobs.
  final pulumi.Input<List<DriveStatusResponse>>? driveList;
  /// Contains information about the encryption key.
  final pulumi.Input<EncryptionKeyDetailsResponse>? encryptionKey;
  /// A property containing information about the blobs to be exported for an export job. This property is included for export jobs only.
  final pulumi.Input<ExportResponse>? export;
  /// A blob path that points to a block blob containing a list of blob names that were not exported due to insufficient drive space. If all blobs were exported successfully, then this element is not included in the response.
  final pulumi.Input<String>? incompleteBlobListUri;
  /// The type of job
  final pulumi.Input<String>? jobType;
  /// Default value is Error. Indicates whether error logging or verbose logging will be enabled.
  final pulumi.Input<String>? logLevel;
  /// Overall percentage completed for the job.
  final pulumi.Input<double>? percentComplete;
  /// Specifies the provisioning state of the job.
  final pulumi.Input<String>? provisioningState;
  /// Specifies the return address information for the job.
  final pulumi.Input<ReturnAddressResponse>? returnAddress;
  /// Contains information about the package being shipped from the Microsoft data center to the customer to return the drives. The format is the same as the deliveryPackage property above. This property is not included if the drives have not yet been returned.
  final pulumi.Input<PackageInformationResponse>? returnPackage;
  /// Specifies the return carrier and customer's account with the carrier.
  final pulumi.Input<ReturnShippingResponse>? returnShipping;
  /// Contains information about the Microsoft datacenter to which the drives should be shipped.
  final pulumi.Input<ShippingInformationResponse>? shippingInformation;
  /// Current state of the job.
  final pulumi.Input<String>? state;
  /// The resource identifier of the storage account where data will be imported to or exported from.
  final pulumi.Input<String>? storageAccountId;

  /// Creates a new [JobDetailsResponse].
  /// [backupDriveManifest] Default value is false. Indicates whether the manifest files on the drives should be copied to block blobs.
  /// [cancelRequested] Indicates whether a request has been submitted to cancel the job.
  /// [deliveryPackage] Contains information about the package being shipped by the customer to the Microsoft data center.
  /// [diagnosticsPath] The virtual blob directory to which the copy logs and backups of drive manifest files (if enabled) will be stored.
  /// [driveList] List of up to ten drives that comprise the job. The drive list is a required element for an import job; it is not specified for export jobs.
  /// [encryptionKey] Contains information about the encryption key.
  /// [export] A property containing information about the blobs to be exported for an export job. This property is included for export jobs only.
  /// [incompleteBlobListUri] A blob path that points to a block blob containing a list of blob names that were not exported due to insufficient drive space. If all blobs were exported successfully, then this element is not included in the response.
  /// [jobType] The type of job
  /// [logLevel] Default value is Error. Indicates whether error logging or verbose logging will be enabled.
  /// [percentComplete] Overall percentage completed for the job.
  /// [provisioningState] Specifies the provisioning state of the job.
  /// [returnAddress] Specifies the return address information for the job.
  /// [returnPackage] Contains information about the package being shipped from the Microsoft data center to the customer to return the drives. The format is the same as the deliveryPackage property above. This property is not included if the drives have not yet been returned.
  /// [returnShipping] Specifies the return carrier and customer's account with the carrier.
  /// [shippingInformation] Contains information about the Microsoft datacenter to which the drives should be shipped.
  /// [state] Current state of the job.
  /// [storageAccountId] The resource identifier of the storage account where data will be imported to or exported from.
  JobDetailsResponse({
    this.backupDriveManifest,
    this.cancelRequested,
    this.deliveryPackage,
    this.diagnosticsPath,
    this.driveList,
    this.encryptionKey,
    this.export,
    this.incompleteBlobListUri,
    this.jobType,
    this.logLevel,
    this.percentComplete,
    this.provisioningState,
    this.returnAddress,
    this.returnPackage,
    this.returnShipping,
    this.shippingInformation,
    this.state,
    this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupDriveManifest': ?backupDriveManifest,
      'cancelRequested': ?cancelRequested,
      'deliveryPackage': ?pulumi.Input.mapOptionalInputValue<DeliveryPackageInformationResponse, Map<String, dynamic>>(deliveryPackage, (value) => value.toMap()),
      'diagnosticsPath': ?diagnosticsPath,
      'driveList': ?pulumi.Input.mapOptionalInputValue<List<DriveStatusResponse>, List<Map<String, dynamic>>>(driveList, (value) => pulumi.Input.encodeList<DriveStatusResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'encryptionKey': ?pulumi.Input.mapOptionalInputValue<EncryptionKeyDetailsResponse, Map<String, dynamic>>(encryptionKey, (value) => value.toMap()),
      'export': ?pulumi.Input.mapOptionalInputValue<ExportResponse, Map<String, dynamic>>(export, (value) => value.toMap()),
      'incompleteBlobListUri': ?incompleteBlobListUri,
      'jobType': ?jobType,
      'logLevel': ?logLevel,
      'percentComplete': ?percentComplete,
      'provisioningState': ?provisioningState,
      'returnAddress': ?pulumi.Input.mapOptionalInputValue<ReturnAddressResponse, Map<String, dynamic>>(returnAddress, (value) => value.toMap()),
      'returnPackage': ?pulumi.Input.mapOptionalInputValue<PackageInformationResponse, Map<String, dynamic>>(returnPackage, (value) => value.toMap()),
      'returnShipping': ?pulumi.Input.mapOptionalInputValue<ReturnShippingResponse, Map<String, dynamic>>(returnShipping, (value) => value.toMap()),
      'shippingInformation': ?pulumi.Input.mapOptionalInputValue<ShippingInformationResponse, Map<String, dynamic>>(shippingInformation, (value) => value.toMap()),
      'state': ?state,
      'storageAccountId': ?storageAccountId,
    };
  }

  factory JobDetailsResponse.fromMap(Map<String, dynamic> map) {
    return JobDetailsResponse(
      backupDriveManifest: map['backupDriveManifest'] == null ? null : (map['backupDriveManifest']! as bool).input(),
      cancelRequested: map['cancelRequested'] == null ? null : (map['cancelRequested']! as bool).input(),
      deliveryPackage: map['deliveryPackage'] == null ? null : (DeliveryPackageInformationResponse.fromMap((map['deliveryPackage']! as Map).cast<String, dynamic>())).input(),
      diagnosticsPath: map['diagnosticsPath'] == null ? null : (map['diagnosticsPath']! as String).input(),
      driveList: map['driveList'] == null ? null : (pulumi.Input.decodeList<DriveStatusResponse>(map['driveList']!, (value) => DriveStatusResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      encryptionKey: map['encryptionKey'] == null ? null : (EncryptionKeyDetailsResponse.fromMap((map['encryptionKey']! as Map).cast<String, dynamic>())).input(),
      export: map['export'] == null ? null : (ExportResponse.fromMap((map['export']! as Map).cast<String, dynamic>())).input(),
      incompleteBlobListUri: map['incompleteBlobListUri'] == null ? null : (map['incompleteBlobListUri']! as String).input(),
      jobType: map['jobType'] == null ? null : (map['jobType']! as String).input(),
      logLevel: map['logLevel'] == null ? null : (map['logLevel']! as String).input(),
      percentComplete: map['percentComplete'] == null ? null : (map['percentComplete']! as double).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState']! as String).input(),
      returnAddress: map['returnAddress'] == null ? null : (ReturnAddressResponse.fromMap((map['returnAddress']! as Map).cast<String, dynamic>())).input(),
      returnPackage: map['returnPackage'] == null ? null : (PackageInformationResponse.fromMap((map['returnPackage']! as Map).cast<String, dynamic>())).input(),
      returnShipping: map['returnShipping'] == null ? null : (ReturnShippingResponse.fromMap((map['returnShipping']! as Map).cast<String, dynamic>())).input(),
      shippingInformation: map['shippingInformation'] == null ? null : (ShippingInformationResponse.fromMap((map['shippingInformation']! as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      storageAccountId: map['storageAccountId'] == null ? null : (map['storageAccountId']! as String).input(),
    );
  }
}


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
  final bool? backupDriveManifest;
  /// Indicates whether a request has been submitted to cancel the job.
  final bool? cancelRequested;
  /// Contains information about the package being shipped by the customer to the Microsoft data center.
  final DeliveryPackageInformationResponse? deliveryPackage;
  /// The virtual blob directory to which the copy logs and backups of drive manifest files (if enabled) will be stored.
  final String? diagnosticsPath;
  /// List of up to ten drives that comprise the job. The drive list is a required element for an import job; it is not specified for export jobs.
  final List<DriveStatusResponse>? driveList;
  /// Contains information about the encryption key.
  final EncryptionKeyDetailsResponse? encryptionKey;
  /// A property containing information about the blobs to be exported for an export job. This property is included for export jobs only.
  final ExportResponse? export;
  /// A blob path that points to a block blob containing a list of blob names that were not exported due to insufficient drive space. If all blobs were exported successfully, then this element is not included in the response.
  final String? incompleteBlobListUri;
  /// The type of job
  final String? jobType;
  /// Default value is Error. Indicates whether error logging or verbose logging will be enabled.
  final String? logLevel;
  /// Overall percentage completed for the job.
  final double? percentComplete;
  /// Specifies the provisioning state of the job.
  final String? provisioningState;
  /// Specifies the return address information for the job.
  final ReturnAddressResponse? returnAddress;
  /// Contains information about the package being shipped from the Microsoft data center to the customer to return the drives. The format is the same as the deliveryPackage property above. This property is not included if the drives have not yet been returned.
  final PackageInformationResponse? returnPackage;
  /// Specifies the return carrier and customer's account with the carrier.
  final ReturnShippingResponse? returnShipping;
  /// Contains information about the Microsoft datacenter to which the drives should be shipped.
  final ShippingInformationResponse? shippingInformation;
  /// Current state of the job.
  final String? state;
  /// The resource identifier of the storage account where data will be imported to or exported from.
  final String? storageAccountId;

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
      'deliveryPackage': ?deliveryPackage == null ? null : deliveryPackage!.toMap(),
      'diagnosticsPath': ?diagnosticsPath,
      'driveList': ?driveList == null ? null : pulumi.Input.encodeList<DriveStatusResponse, Map<String, dynamic>>(driveList!, (value) => value.toMap()),
      'encryptionKey': ?encryptionKey == null ? null : encryptionKey!.toMap(),
      'export': ?export == null ? null : export!.toMap(),
      'incompleteBlobListUri': ?incompleteBlobListUri,
      'jobType': ?jobType,
      'logLevel': ?logLevel,
      'percentComplete': ?percentComplete,
      'provisioningState': ?provisioningState,
      'returnAddress': ?returnAddress == null ? null : returnAddress!.toMap(),
      'returnPackage': ?returnPackage == null ? null : returnPackage!.toMap(),
      'returnShipping': ?returnShipping == null ? null : returnShipping!.toMap(),
      'shippingInformation': ?shippingInformation == null ? null : shippingInformation!.toMap(),
      'state': ?state,
      'storageAccountId': ?storageAccountId,
    };
  }

  factory JobDetailsResponse.fromMap(Map<String, dynamic> map) {
    return JobDetailsResponse(
      backupDriveManifest: map['backupDriveManifest'] == null ? null : map['backupDriveManifest'] as bool,
      cancelRequested: map['cancelRequested'] == null ? null : map['cancelRequested'] as bool,
      deliveryPackage: map['deliveryPackage'] == null ? null : DeliveryPackageInformationResponse.fromMap((map['deliveryPackage'] as Map).cast<String, dynamic>()),
      diagnosticsPath: map['diagnosticsPath'] == null ? null : map['diagnosticsPath'] as String,
      driveList: map['driveList'] == null ? null : pulumi.Input.decodeList<DriveStatusResponse>(map['driveList'], (value) => DriveStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      encryptionKey: map['encryptionKey'] == null ? null : EncryptionKeyDetailsResponse.fromMap((map['encryptionKey'] as Map).cast<String, dynamic>()),
      export: map['export'] == null ? null : ExportResponse.fromMap((map['export'] as Map).cast<String, dynamic>()),
      incompleteBlobListUri: map['incompleteBlobListUri'] == null ? null : map['incompleteBlobListUri'] as String,
      jobType: map['jobType'] == null ? null : map['jobType'] as String,
      logLevel: map['logLevel'] == null ? null : map['logLevel'] as String,
      percentComplete: map['percentComplete'] == null ? null : map['percentComplete'] as double,
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      returnAddress: map['returnAddress'] == null ? null : ReturnAddressResponse.fromMap((map['returnAddress'] as Map).cast<String, dynamic>()),
      returnPackage: map['returnPackage'] == null ? null : PackageInformationResponse.fromMap((map['returnPackage'] as Map).cast<String, dynamic>()),
      returnShipping: map['returnShipping'] == null ? null : ReturnShippingResponse.fromMap((map['returnShipping'] as Map).cast<String, dynamic>()),
      shippingInformation: map['shippingInformation'] == null ? null : ShippingInformationResponse.fromMap((map['shippingInformation'] as Map).cast<String, dynamic>()),
      state: map['state'] == null ? null : map['state'] as String,
      storageAccountId: map['storageAccountId'] == null ? null : map['storageAccountId'] as String,
    );
  }
}


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
      backupDriveManifest: (() { final guardedValue = map['backupDriveManifest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cancelRequested: (() { final guardedValue = map['cancelRequested']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deliveryPackage: (() { final guardedValue = map['deliveryPackage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeliveryPackageInformationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      diagnosticsPath: (() { final guardedValue = map['diagnosticsPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      driveList: (() { final guardedValue = map['driveList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DriveStatusResponse>(guardedValue, (value) => DriveStatusResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      encryptionKey: (() { final guardedValue = map['encryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionKeyDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      export: (() { final guardedValue = map['export']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExportResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      incompleteBlobListUri: (() { final guardedValue = map['incompleteBlobListUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobType: (() { final guardedValue = map['jobType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logLevel: (() { final guardedValue = map['logLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      percentComplete: (() { final guardedValue = map['percentComplete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      returnAddress: (() { final guardedValue = map['returnAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReturnAddressResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      returnPackage: (() { final guardedValue = map['returnPackage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PackageInformationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      returnShipping: (() { final guardedValue = map['returnShipping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReturnShippingResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      shippingInformation: (() { final guardedValue = map['shippingInformation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ShippingInformationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


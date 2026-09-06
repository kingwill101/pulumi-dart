// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_package_information.dart';
import 'drive_status.dart';
import 'encryption_key_details.dart';
import 'export.dart';
import 'package_information.dart';
import 'return_address.dart';
import 'return_shipping.dart';
import 'shipping_information.dart';

/// Specifies the job properties
class JobDetails {
  /// Default value is false. Indicates whether the manifest files on the drives should be copied to block blobs.
  final pulumi.Input<bool?>? backupDriveManifest;
  /// Indicates whether a request has been submitted to cancel the job.
  final pulumi.Input<bool?>? cancelRequested;
  /// Contains information about the package being shipped by the customer to the Microsoft data center.
  final pulumi.Input<DeliveryPackageInformation?>? deliveryPackage;
  /// The virtual blob directory to which the copy logs and backups of drive manifest files (if enabled) will be stored.
  final pulumi.Input<String?>? diagnosticsPath;
  /// List of up to ten drives that comprise the job. The drive list is a required element for an import job; it is not specified for export jobs.
  final pulumi.Input<List<DriveStatus>?>? driveList;
  /// Contains information about the encryption key.
  final pulumi.Input<EncryptionKeyDetails?>? encryptionKey;
  /// A property containing information about the blobs to be exported for an export job. This property is included for export jobs only.
  final pulumi.Input<Export?>? export;
  /// A blob path that points to a block blob containing a list of blob names that were not exported due to insufficient drive space. If all blobs were exported successfully, then this element is not included in the response.
  final pulumi.Input<String?>? incompleteBlobListUri;
  /// The type of job
  final pulumi.Input<String?>? jobType;
  /// Default value is Error. Indicates whether error logging or verbose logging will be enabled.
  final pulumi.Input<String?>? logLevel;
  /// Overall percentage completed for the job.
  final pulumi.Input<double?>? percentComplete;
  /// Specifies the provisioning state of the job.
  final pulumi.Input<String?>? provisioningState;
  /// Specifies the return address information for the job.
  final pulumi.Input<ReturnAddress?>? returnAddress;
  /// Contains information about the package being shipped from the Microsoft data center to the customer to return the drives. The format is the same as the deliveryPackage property above. This property is not included if the drives have not yet been returned.
  final pulumi.Input<PackageInformation?>? returnPackage;
  /// Specifies the return carrier and customer's account with the carrier.
  final pulumi.Input<ReturnShipping?>? returnShipping;
  /// Contains information about the Microsoft datacenter to which the drives should be shipped.
  final pulumi.Input<ShippingInformation?>? shippingInformation;
  /// Current state of the job.
  final pulumi.Input<String?>? state;
  /// The resource identifier of the storage account where data will be imported to or exported from.
  final pulumi.Input<String?>? storageAccountId;

  /// Creates a new [JobDetails].
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
  JobDetails({
    pulumi.Input<bool?>? backupDriveManifest,
    pulumi.Input<bool?>? cancelRequested,
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
    pulumi.Input<String?>? state,
    this.storageAccountId,
  }) : backupDriveManifest = backupDriveManifest ?? pulumi.Input.fromValue(false), cancelRequested = cancelRequested ?? pulumi.Input.fromValue(false), state = state ?? pulumi.Input.fromValue('Creating');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupDriveManifest': ?backupDriveManifest,
      'cancelRequested': ?cancelRequested,
      'deliveryPackage': ?pulumi.Input.mapOptionalInputValue<DeliveryPackageInformation, Map<String, dynamic>>(deliveryPackage, (value) => value.toMap()),
      'diagnosticsPath': ?diagnosticsPath,
      'driveList': ?pulumi.Input.mapOptionalInputValue<List<DriveStatus>, List<Map<String, dynamic>>>(driveList, (value) => pulumi.Input.encodeList<DriveStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'encryptionKey': ?pulumi.Input.mapOptionalInputValue<EncryptionKeyDetails, Map<String, dynamic>>(encryptionKey, (value) => value.toMap()),
      'export': ?pulumi.Input.mapOptionalInputValue<Export, Map<String, dynamic>>(export, (value) => value.toMap()),
      'incompleteBlobListUri': ?incompleteBlobListUri,
      'jobType': ?jobType,
      'logLevel': ?logLevel,
      'percentComplete': ?percentComplete,
      'provisioningState': ?provisioningState,
      'returnAddress': ?pulumi.Input.mapOptionalInputValue<ReturnAddress, Map<String, dynamic>>(returnAddress, (value) => value.toMap()),
      'returnPackage': ?pulumi.Input.mapOptionalInputValue<PackageInformation, Map<String, dynamic>>(returnPackage, (value) => value.toMap()),
      'returnShipping': ?pulumi.Input.mapOptionalInputValue<ReturnShipping, Map<String, dynamic>>(returnShipping, (value) => value.toMap()),
      'shippingInformation': ?pulumi.Input.mapOptionalInputValue<ShippingInformation, Map<String, dynamic>>(shippingInformation, (value) => value.toMap()),
      'state': ?state,
      'storageAccountId': ?storageAccountId,
    };
  }

  factory JobDetails.fromMap(Map<String, dynamic> map) {
    return JobDetails(
      backupDriveManifest: (() { final guardedValue = map['backupDriveManifest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cancelRequested: (() { final guardedValue = map['cancelRequested']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deliveryPackage: (() { final guardedValue = map['deliveryPackage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeliveryPackageInformation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      diagnosticsPath: (() { final guardedValue = map['diagnosticsPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      driveList: (() { final guardedValue = map['driveList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DriveStatus>(guardedValue, (value) => DriveStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      encryptionKey: (() { final guardedValue = map['encryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionKeyDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      export: (() { final guardedValue = map['export']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Export.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      incompleteBlobListUri: (() { final guardedValue = map['incompleteBlobListUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobType: (() { final guardedValue = map['jobType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logLevel: (() { final guardedValue = map['logLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      percentComplete: (() { final guardedValue = map['percentComplete']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      returnAddress: (() { final guardedValue = map['returnAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReturnAddress.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      returnPackage: (() { final guardedValue = map['returnPackage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PackageInformation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      returnShipping: (() { final guardedValue = map['returnShipping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReturnShipping.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      shippingInformation: (() { final guardedValue = map['shippingInformation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ShippingInformation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

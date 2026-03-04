// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_disk_image_response.dart';
import 'os_disk_image_response.dart';

/// Result data returned by listProductDetails.
class ListProductDetailsResult {
  /// Specifies kind of compute role included in the package.
  final String computeRole;

  /// List of attached data disks.
  final List<DataDiskImageResponse> dataDiskImages;

  /// The URI to the .azpkg file that provides information required for showing product in the gallery.
  final String galleryPackageBlobSasUri;

  /// Specifies if product is a Virtual Machine Extension.
  final bool isSystemExtension;

  /// OS disk image used by product.
  final OsDiskImageResponse osDiskImage;

  /// Specifies the kind of the product (virtualMachine or virtualMachineExtension).
  final String productKind;

  /// Indicates if specified product supports multiple extensions.
  final bool supportMultipleExtensions;

  /// The URI.
  final String uri;

  /// Specifies product version.
  final String version;

  /// Specifies operating system used by the product.
  final String vmOsType;

  /// Indicates if virtual machine Scale Set is enabled in the specified product.
  final bool vmScaleSetEnabled;

  /// Creates a new [ListProductDetailsResult].
  /// [computeRole] Specifies kind of compute role included in the package.
  /// [dataDiskImages] List of attached data disks.
  /// [galleryPackageBlobSasUri] The URI to the .azpkg file that provides information required for showing product in the gallery.
  /// [isSystemExtension] Specifies if product is a Virtual Machine Extension.
  /// [osDiskImage] OS disk image used by product.
  /// [productKind] Specifies the kind of the product (virtualMachine or virtualMachineExtension).
  /// [supportMultipleExtensions] Indicates if specified product supports multiple extensions.
  /// [uri] The URI.
  /// [version] Specifies product version.
  /// [vmOsType] Specifies operating system used by the product.
  /// [vmScaleSetEnabled] Indicates if virtual machine Scale Set is enabled in the specified product.
  ListProductDetailsResult({
    required this.computeRole,
    required this.dataDiskImages,
    required this.galleryPackageBlobSasUri,
    required this.isSystemExtension,
    required this.osDiskImage,
    required this.productKind,
    required this.supportMultipleExtensions,
    required this.uri,
    required this.version,
    required this.vmOsType,
    required this.vmScaleSetEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeRole': computeRole,
      'dataDiskImages':
          pulumi.Input.encodeList<DataDiskImageResponse, Map<String, dynamic>>(
            dataDiskImages,
            (value) => value.toMap(),
          ),
      'galleryPackageBlobSasUri': galleryPackageBlobSasUri,
      'isSystemExtension': isSystemExtension,
      'osDiskImage': osDiskImage.toMap(),
      'productKind': productKind,
      'supportMultipleExtensions': supportMultipleExtensions,
      'uri': uri,
      'version': version,
      'vmOsType': vmOsType,
      'vmScaleSetEnabled': vmScaleSetEnabled,
    };
  }

  factory ListProductDetailsResult.fromMap(Map<String, dynamic> map) {
    return ListProductDetailsResult(
      computeRole: map['computeRole'] as String,
      dataDiskImages: pulumi.Input.decodeList<DataDiskImageResponse>(
        map['dataDiskImages']!,
        (value) => DataDiskImageResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      galleryPackageBlobSasUri: map['galleryPackageBlobSasUri'] as String,
      isSystemExtension: map['isSystemExtension'] as bool,
      osDiskImage: OsDiskImageResponse.fromMap(
        (map['osDiskImage']! as Map).cast<String, dynamic>(),
      ),
      productKind: map['productKind'] as String,
      supportMultipleExtensions: map['supportMultipleExtensions'] as bool,
      uri: map['uri'] as String,
      version: map['version'] as String,
      vmOsType: map['vmOsType'] as String,
      vmScaleSetEnabled: map['vmScaleSetEnabled'] as bool,
    );
  }
}

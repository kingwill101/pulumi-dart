// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_disk_image_response.dart';
import 'os_disk_image_response.dart';

/// Result data returned by listProductDetails.
class ListProductDetailsResult {
  /// Specifies kind of compute role included in the package.
  final String? computeRole;
  /// List of attached data disks.
  final List<DataDiskImageResponse>? dataDiskImages;
  /// The URI to the .azpkg file that provides information required for showing product in the gallery.
  final String? galleryPackageBlobSasUri;
  /// Specifies if product is a Virtual Machine Extension.
  final bool? isSystemExtension;
  /// OS disk image used by product.
  final OsDiskImageResponse? osDiskImage;
  /// Specifies the kind of the product (virtualMachine or virtualMachineExtension).
  final String? productKind;
  /// Indicates if specified product supports multiple extensions.
  final bool? supportMultipleExtensions;
  /// The URI.
  final String? uri;
  /// Specifies product version.
  final String? version;
  /// Specifies operating system used by the product.
  final String? vmOsType;
  /// Indicates if virtual machine Scale Set is enabled in the specified product.
  final bool? vmScaleSetEnabled;

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
  const ListProductDetailsResult({
    this.computeRole,
    this.dataDiskImages,
    this.galleryPackageBlobSasUri,
    this.isSystemExtension,
    this.osDiskImage,
    this.productKind,
    this.supportMultipleExtensions,
    this.uri,
    this.version,
    this.vmOsType,
    this.vmScaleSetEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeRole': ?computeRole,
      'dataDiskImages': ?(() { final guardedValue = dataDiskImages; if (guardedValue == null) return null; return pulumi.Input.encodeList<DataDiskImageResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'galleryPackageBlobSasUri': ?galleryPackageBlobSasUri,
      'isSystemExtension': ?isSystemExtension,
      'osDiskImage': ?osDiskImage?.toMap(),
      'productKind': ?productKind,
      'supportMultipleExtensions': ?supportMultipleExtensions,
      'uri': ?uri,
      'version': ?version,
      'vmOsType': ?vmOsType,
      'vmScaleSetEnabled': ?vmScaleSetEnabled,
    };
  }

  factory ListProductDetailsResult.fromMap(Map<String, dynamic> map) {
    return ListProductDetailsResult(
      computeRole: (() { final guardedValue = map['computeRole']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataDiskImages: (() { final guardedValue = map['dataDiskImages']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataDiskImageResponse>(guardedValue, (value) => DataDiskImageResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      galleryPackageBlobSasUri: (() { final guardedValue = map['galleryPackageBlobSasUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isSystemExtension: (() { final guardedValue = map['isSystemExtension']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      osDiskImage: (() { final guardedValue = map['osDiskImage']; if (guardedValue == null) return null; return OsDiskImageResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      productKind: (() { final guardedValue = map['productKind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportMultipleExtensions: (() { final guardedValue = map['supportMultipleExtensions']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmOsType: (() { final guardedValue = map['vmOsType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmScaleSetEnabled: (() { final guardedValue = map['vmScaleSetEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}

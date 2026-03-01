// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bundles_bundle_desktop_type_attribute.dart';
import 'get_bundles_bundle_disk.dart';

class GetBundlesBundle {
  /// The bundle id of the bundle.
  final String bundleId;
  /// The name of the bundle.
  final String bundleName;
  /// The bundle type of  the bundle. Valid values: `SYSTEM`,`CUSTOM`.
  final String bundleType;
  /// The description of the bundle.
  final String description;
  /// The desktop type of the bundle.
  final String desktopType;
  /// The desktop type attribute of the bundle.
  final List<GetBundlesBundleDesktopTypeAttribute> desktopTypeAttributes;
  /// The disks of the bundle.
  final List<GetBundlesBundleDisk> disks;
  /// The ID of the bundle.
  final String id;
  /// The image id attribute of the bundle.
  final String imageId;
  /// The os type attribute of the bundle.
  final String osType;

  /// Creates a new [GetBundlesBundle].
  /// [bundleId] The bundle id of the bundle.
  /// [bundleName] The name of the bundle.
  /// [bundleType] The bundle type of  the bundle. Valid values: `SYSTEM`,`CUSTOM`.
  /// [description] The description of the bundle.
  /// [desktopType] The desktop type of the bundle.
  /// [desktopTypeAttributes] The desktop type attribute of the bundle.
  /// [disks] The disks of the bundle.
  /// [id] The ID of the bundle.
  /// [imageId] The image id attribute of the bundle.
  /// [osType] The os type attribute of the bundle.
  GetBundlesBundle({
    required this.bundleId,
    required this.bundleName,
    required this.bundleType,
    required this.description,
    required this.desktopType,
    required this.desktopTypeAttributes,
    required this.disks,
    required this.id,
    required this.imageId,
    required this.osType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleId': bundleId,
      'bundleName': bundleName,
      'bundleType': bundleType,
      'description': description,
      'desktopType': desktopType,
      'desktopTypeAttributes': pulumi.Input.encodeList<GetBundlesBundleDesktopTypeAttribute, Map<String, dynamic>>(desktopTypeAttributes, (value) => value.toMap()),
      'disks': pulumi.Input.encodeList<GetBundlesBundleDisk, Map<String, dynamic>>(disks, (value) => value.toMap()),
      'id': id,
      'imageId': imageId,
      'osType': osType,
    };
  }

  factory GetBundlesBundle.fromMap(Map<String, dynamic> map) {
    return GetBundlesBundle(
      bundleId: map['bundleId'] as String,
      bundleName: map['bundleName'] as String,
      bundleType: map['bundleType'] as String,
      description: map['description'] as String,
      desktopType: map['desktopType'] as String,
      desktopTypeAttributes: pulumi.Input.decodeList<GetBundlesBundleDesktopTypeAttribute>(map['desktopTypeAttributes'], (value) => GetBundlesBundleDesktopTypeAttribute.fromMap((value as Map).cast<String, dynamic>())),
      disks: pulumi.Input.decodeList<GetBundlesBundleDisk>(map['disks'], (value) => GetBundlesBundleDisk.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      imageId: map['imageId'] as String,
      osType: map['osType'] as String,
    );
  }
}


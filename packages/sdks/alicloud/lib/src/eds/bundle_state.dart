// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Bundle resources.
class BundleState {
  /// The name of the bundle.
  final pulumi.Input<String>? bundleName;
  /// The description of the bundle.
  final pulumi.Input<String>? description;
  /// The desktop type. You can call `alicloud.eds.getDesktopTypes` to query desktop type.
  final pulumi.Input<String>? desktopType;
  /// The ID of the image.
  final pulumi.Input<String>? imageId;
  /// The language. Valid values: `zh-CN`, `zh-HK`, `en-US`, `ja-JP`.
  final pulumi.Input<String>? language;
  /// The root disk performance level. Valid values: `PL0`, `PL1`, `PL2`, `PL3`.
  final pulumi.Input<String>? rootDiskPerformanceLevel;
  /// The root disk size gib.
  final pulumi.Input<int>? rootDiskSizeGib;
  /// The user disk performance level. Valid values: `PL0`, `PL1`, `PL2`, `PL3`.
  final pulumi.Input<String>? userDiskPerformanceLevel;
  /// The size of the data disk. Currently, only one data disk can be set. Unit: GiB.
  /// - The size of the data disk that supports the setting corresponds to the specification. For more information, see [Overview of Desktop Specifications](https://help.aliyun.com/document_detail/188609.htm?spm=a2c4g.11186623.0.0.6406297bE0U5DG).
  /// - The data disk size (user_disk_size_gib) set in the template must be greater than the data disk size (data_disk_size) in the mirror.
  final pulumi.Input<List<int>>? userDiskSizeGibs;

  /// Creates a new [BundleState].
  /// [bundleName] The name of the bundle.
  /// [description] The description of the bundle.
  /// [desktopType] The desktop type. You can call `alicloud.eds.getDesktopTypes` to query desktop type.
  /// [imageId] The ID of the image.
  /// [language] The language. Valid values: `zh-CN`, `zh-HK`, `en-US`, `ja-JP`.
  /// [rootDiskPerformanceLevel] The root disk performance level. Valid values: `PL0`, `PL1`, `PL2`, `PL3`.
  /// [rootDiskSizeGib] The root disk size gib.
  /// [userDiskPerformanceLevel] The user disk performance level. Valid values: `PL0`, `PL1`, `PL2`, `PL3`.
  /// [userDiskSizeGibs] The size of the data disk. Currently, only one data disk can be set. Unit: GiB.
  BundleState({
    this.bundleName,
    this.description,
    this.desktopType,
    this.imageId,
    this.language,
    this.rootDiskPerformanceLevel,
    this.rootDiskSizeGib,
    this.userDiskPerformanceLevel,
    this.userDiskSizeGibs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleName': ?bundleName,
      'description': ?description,
      'desktopType': ?desktopType,
      'imageId': ?imageId,
      'language': ?language,
      'rootDiskPerformanceLevel': ?rootDiskPerformanceLevel,
      'rootDiskSizeGib': ?rootDiskSizeGib,
      'userDiskPerformanceLevel': ?userDiskPerformanceLevel,
      'userDiskSizeGibs': ?userDiskSizeGibs,
    };
  }

  factory BundleState.fromMap(Map<String, dynamic> map) {
    return BundleState(
      bundleName: map['bundleName'] == null ? null : (map['bundleName']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      desktopType: map['desktopType'] == null ? null : (map['desktopType']! as String).input(),
      imageId: map['imageId'] == null ? null : (map['imageId']! as String).input(),
      language: map['language'] == null ? null : (map['language']! as String).input(),
      rootDiskPerformanceLevel: map['rootDiskPerformanceLevel'] == null ? null : (map['rootDiskPerformanceLevel']! as String).input(),
      rootDiskSizeGib: map['rootDiskSizeGib'] == null ? null : (map['rootDiskSizeGib']! as int).input(),
      userDiskPerformanceLevel: map['userDiskPerformanceLevel'] == null ? null : (map['userDiskPerformanceLevel']! as String).input(),
      userDiskSizeGibs: map['userDiskSizeGibs'] == null ? null : ((map['userDiskSizeGibs']! as List).cast<int>()).input(),
    );
  }
}


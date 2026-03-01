// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eds_bundle_bundle_args_doc}
/// The set of arguments for Bundle.
/// {@endtemplate}
/// {@macro pulumi_eds_bundle_bundle_args_doc}
class BundleArgs {
  /// The name of the bundle.
  final pulumi.Input<String>? bundleName;
  /// The description of the bundle.
  final pulumi.Input<String>? description;
  /// The desktop type. You can call `alicloud.eds.getDesktopTypes` to query desktop type.
  final pulumi.Input<String> desktopType;
  /// The ID of the image.
  final pulumi.Input<String> imageId;
  /// The language. Valid values: `zh-CN`, `zh-HK`, `en-US`, `ja-JP`.
  final pulumi.Input<String>? language;
  /// The root disk performance level. Valid values: `PL0`, `PL1`, `PL2`, `PL3`.
  final pulumi.Input<String>? rootDiskPerformanceLevel;
  /// The root disk size gib.
  final pulumi.Input<int> rootDiskSizeGib;
  /// The user disk performance level. Valid values: `PL0`, `PL1`, `PL2`, `PL3`.
  final pulumi.Input<String>? userDiskPerformanceLevel;
  /// The size of the data disk. Currently, only one data disk can be set. Unit: GiB.
  /// - The size of the data disk that supports the setting corresponds to the specification. For more information, see [Overview of Desktop Specifications](https://help.aliyun.com/document_detail/188609.htm?spm=a2c4g.11186623.0.0.6406297bE0U5DG).
  /// - The data disk size (user_disk_size_gib) set in the template must be greater than the data disk size (data_disk_size) in the mirror.
  final pulumi.Input<List<int>> userDiskSizeGibs;

  /// Creates a new [BundleArgs].
  /// [bundleName] The name of the bundle.
  /// [description] The description of the bundle.
  /// [desktopType] The desktop type. You can call `alicloud.eds.getDesktopTypes` to query desktop type.
  /// [imageId] The ID of the image.
  /// [language] The language. Valid values: `zh-CN`, `zh-HK`, `en-US`, `ja-JP`.
  /// [rootDiskPerformanceLevel] The root disk performance level. Valid values: `PL0`, `PL1`, `PL2`, `PL3`.
  /// [rootDiskSizeGib] The root disk size gib.
  /// [userDiskPerformanceLevel] The user disk performance level. Valid values: `PL0`, `PL1`, `PL2`, `PL3`.
  /// [userDiskSizeGibs] The size of the data disk. Currently, only one data disk can be set. Unit: GiB.
  BundleArgs({
    String? bundleName,
    String? description,
    required String desktopType,
    required String imageId,
    String? language,
    String? rootDiskPerformanceLevel,
    required int rootDiskSizeGib,
    String? userDiskPerformanceLevel,
    required List<int> userDiskSizeGibs,
  }) :
      bundleName = pulumi.Input.asOptionalInput<String>(bundleName),
      description = pulumi.Input.asOptionalInput<String>(description),
      desktopType = pulumi.Input.asInput<String>(desktopType),
      imageId = pulumi.Input.asInput<String>(imageId),
      language = pulumi.Input.asOptionalInput<String>(language),
      rootDiskPerformanceLevel = pulumi.Input.asOptionalInput<String>(rootDiskPerformanceLevel),
      rootDiskSizeGib = pulumi.Input.asInput<int>(rootDiskSizeGib),
      userDiskPerformanceLevel = pulumi.Input.asOptionalInput<String>(userDiskPerformanceLevel),
      userDiskSizeGibs = pulumi.Input.asInput<List<int>>(userDiskSizeGibs);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleName': ?bundleName,
      'description': ?description,
      'desktopType': desktopType,
      'imageId': imageId,
      'language': ?language,
      'rootDiskPerformanceLevel': ?rootDiskPerformanceLevel,
      'rootDiskSizeGib': rootDiskSizeGib,
      'userDiskPerformanceLevel': ?userDiskPerformanceLevel,
      'userDiskSizeGibs': userDiskSizeGibs,
    };
  }

  factory BundleArgs.fromMap(Map<String, dynamic> map) {
    return BundleArgs(
      bundleName: map['bundleName'] == null ? null : map['bundleName'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      desktopType: map['desktopType'] as String,
      imageId: map['imageId'] as String,
      language: map['language'] == null ? null : map['language'] as String,
      rootDiskPerformanceLevel: map['rootDiskPerformanceLevel'] == null ? null : map['rootDiskPerformanceLevel'] as String,
      rootDiskSizeGib: map['rootDiskSizeGib'] as int,
      userDiskPerformanceLevel: map['userDiskPerformanceLevel'] == null ? null : map['userDiskPerformanceLevel'] as String,
      userDiskSizeGibs: (map['userDiskSizeGibs'] as List).cast<int>(),
    );
  }
}


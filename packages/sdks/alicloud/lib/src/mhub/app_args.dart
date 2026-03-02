// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mhub_app_app_args_doc}
/// The set of arguments for App.
/// {@endtemplate}
/// {@macro pulumi_mhub_app_app_args_doc}
class AppArgs {
  /// AppName.
  final pulumi.Input<String> appName;
  /// The app id of iOS. **NOTE:** Either `bundle_id` or `package_name` must be set.
  final pulumi.Input<String>? bundleId;
  /// Base64 string of picture.
  final pulumi.Input<String>? encodedIcon;
  /// The Industry ID of the app. For information about Industry and how to use it, MHUB[Industry](https://help.aliyun.com/document_detail/201638.html).
  final pulumi.Input<String>? industryId;
  /// Android App package name. **NOTE:** Either `bundle_id` or `package_name` must be set.
  final pulumi.Input<String>? packageName;
  /// The ID of the Product.
  final pulumi.Input<String> productId;
  /// The type of the Product. Valid values: `Android` and `iOS`.
  final pulumi.Input<String> type;

  /// Creates a new [AppArgs].
  /// [appName] AppName.
  /// [bundleId] The app id of iOS. **NOTE:** Either `bundle_id` or `package_name` must be set.
  /// [encodedIcon] Base64 string of picture.
  /// [industryId] The Industry ID of the app. For information about Industry and how to use it, MHUB[Industry](https://help.aliyun.com/document_detail/201638.html).
  /// [packageName] Android App package name. **NOTE:** Either `bundle_id` or `package_name` must be set.
  /// [productId] The ID of the Product.
  /// [type] The type of the Product. Valid values: `Android` and `iOS`.
  AppArgs({
    required this.appName,
    this.bundleId,
    this.encodedIcon,
    this.industryId,
    this.packageName,
    required this.productId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appName': appName,
      'bundleId': ?bundleId,
      'encodedIcon': ?encodedIcon,
      'industryId': ?industryId,
      'packageName': ?packageName,
      'productId': productId,
      'type': type,
    };
  }

  factory AppArgs.fromMap(Map<String, dynamic> map) {
    return AppArgs(
      appName: (map['appName'] as String).input(),
      bundleId: map['bundleId'] == null ? null : (map['bundleId'] as String).input(),
      encodedIcon: map['encodedIcon'] == null ? null : (map['encodedIcon'] as String).input(),
      industryId: map['industryId'] == null ? null : (map['industryId'] as String).input(),
      packageName: map['packageName'] == null ? null : (map['packageName'] as String).input(),
      productId: (map['productId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}


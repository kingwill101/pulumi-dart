// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering App resources.
class AppState {
  /// AppName.
  final pulumi.Input<String>? appName;
  /// The app id of iOS. **NOTE:** Either `bundle_id` or `package_name` must be set.
  final pulumi.Input<String>? bundleId;
  /// Base64 string of picture.
  final pulumi.Input<String>? encodedIcon;
  /// The Industry ID of the app. For information about Industry and how to use it, MHUB[Industry](https://help.aliyun.com/document_detail/201638.html).
  final pulumi.Input<String>? industryId;
  /// Android App package name. **NOTE:** Either `bundle_id` or `package_name` must be set.
  final pulumi.Input<String>? packageName;
  /// The ID of the Product.
  final pulumi.Input<String>? productId;
  /// The type of the Product. Valid values: `Android` and `iOS`.
  final pulumi.Input<String>? type;

  /// Creates a new [AppState].
  /// [appName] AppName.
  /// [bundleId] The app id of iOS. **NOTE:** Either `bundle_id` or `package_name` must be set.
  /// [encodedIcon] Base64 string of picture.
  /// [industryId] The Industry ID of the app. For information about Industry and how to use it, MHUB[Industry](https://help.aliyun.com/document_detail/201638.html).
  /// [packageName] Android App package name. **NOTE:** Either `bundle_id` or `package_name` must be set.
  /// [productId] The ID of the Product.
  /// [type] The type of the Product. Valid values: `Android` and `iOS`.
  AppState({
    this.appName,
    this.bundleId,
    this.encodedIcon,
    this.industryId,
    this.packageName,
    this.productId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appName': ?appName,
      'bundleId': ?bundleId,
      'encodedIcon': ?encodedIcon,
      'industryId': ?industryId,
      'packageName': ?packageName,
      'productId': ?productId,
      'type': ?type,
    };
  }

  factory AppState.fromMap(Map<String, dynamic> map) {
    return AppState(
      appName: map['appName'] == null ? null : (map['appName']! as String).input(),
      bundleId: map['bundleId'] == null ? null : (map['bundleId']! as String).input(),
      encodedIcon: map['encodedIcon'] == null ? null : (map['encodedIcon']! as String).input(),
      industryId: map['industryId'] == null ? null : (map['industryId']! as String).input(),
      packageName: map['packageName'] == null ? null : (map['packageName']! as String).input(),
      productId: map['productId'] == null ? null : (map['productId']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}


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
    required pulumi.Output<String> appName,
    pulumi.Output<String>? bundleId,
    pulumi.Output<String>? encodedIcon,
    pulumi.Output<String>? industryId,
    pulumi.Output<String>? packageName,
    required pulumi.Output<String> productId,
    required pulumi.Output<String> type,
  }) :
      appName = pulumi.Input.asInput<String>(appName),
      bundleId = pulumi.Input.asOptionalInput<String>(bundleId),
      encodedIcon = pulumi.Input.asOptionalInput<String>(encodedIcon),
      industryId = pulumi.Input.asOptionalInput<String>(industryId),
      packageName = pulumi.Input.asOptionalInput<String>(packageName),
      productId = pulumi.Input.asInput<String>(productId),
      type = pulumi.Input.asInput<String>(type);

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
      appName: pulumi.Output.create<String>(map['appName'] as String),
      bundleId: map['bundleId'] == null ? null : pulumi.Output.create<String>(map['bundleId'] as String),
      encodedIcon: map['encodedIcon'] == null ? null : pulumi.Output.create<String>(map['encodedIcon'] as String),
      industryId: map['industryId'] == null ? null : pulumi.Output.create<String>(map['industryId'] as String),
      packageName: map['packageName'] == null ? null : pulumi.Output.create<String>(map['packageName'] as String),
      productId: pulumi.Output.create<String>(map['productId'] as String),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}


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
    pulumi.Output<String>? appName,
    pulumi.Output<String>? bundleId,
    pulumi.Output<String>? encodedIcon,
    pulumi.Output<String>? industryId,
    pulumi.Output<String>? packageName,
    pulumi.Output<String>? productId,
    pulumi.Output<String>? type,
  }) :
      appName = pulumi.Input.asOptionalInput<String>(appName),
      bundleId = pulumi.Input.asOptionalInput<String>(bundleId),
      encodedIcon = pulumi.Input.asOptionalInput<String>(encodedIcon),
      industryId = pulumi.Input.asOptionalInput<String>(industryId),
      packageName = pulumi.Input.asOptionalInput<String>(packageName),
      productId = pulumi.Input.asOptionalInput<String>(productId),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      appName: map['appName'] == null ? null : pulumi.Output.create<String>(map['appName'] as String),
      bundleId: map['bundleId'] == null ? null : pulumi.Output.create<String>(map['bundleId'] as String),
      encodedIcon: map['encodedIcon'] == null ? null : pulumi.Output.create<String>(map['encodedIcon'] as String),
      industryId: map['industryId'] == null ? null : pulumi.Output.create<String>(map['industryId'] as String),
      packageName: map['packageName'] == null ? null : pulumi.Output.create<String>(map['packageName'] as String),
      productId: map['productId'] == null ? null : pulumi.Output.create<String>(map['productId'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}


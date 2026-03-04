// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppsApp {
  /// Application AppKey, which uniquely identifies an application when requested by the interface
  final pulumi.Input<String> appKey;

  /// The Name of the App.
  final pulumi.Input<String> appName;

  /// iOS application ID. Required when creating an iOS app. **NOTE:** Either `bundle_id` or `package_name` must be set.
  final pulumi.Input<String> bundleId;

  /// The CreateTime of the App.
  final pulumi.Input<String> createTime;

  /// Base64 string of picture.
  final pulumi.Input<String> encodedIcon;

  /// The ID of the App.
  final pulumi.Input<String> id;

  /// The Industry ID of the app. For information about Industry and how to use it, MHUB[Industry](https://help.aliyun.com/document_detail/201638.html).
  final pulumi.Input<String> industryId;

  /// Android App package name.  **NOTE:** Either `bundle_id` or `package_name` must be set.
  final pulumi.Input<String> packageName;

  /// The ID of the Product.
  final pulumi.Input<String> productId;

  /// The type of the App. Valid values: `Android` and `iOS`.
  final pulumi.Input<String> type;

  /// Creates a new [GetAppsApp].
  /// [appKey] Application AppKey, which uniquely identifies an application when requested by the interface
  /// [appName] The Name of the App.
  /// [bundleId] iOS application ID. Required when creating an iOS app. **NOTE:** Either `bundle_id` or `package_name` must be set.
  /// [createTime] The CreateTime of the App.
  /// [encodedIcon] Base64 string of picture.
  /// [id] The ID of the App.
  /// [industryId] The Industry ID of the app. For information about Industry and how to use it, MHUB[Industry](https://help.aliyun.com/document_detail/201638.html).
  /// [packageName] Android App package name.  **NOTE:** Either `bundle_id` or `package_name` must be set.
  /// [productId] The ID of the Product.
  /// [type] The type of the App. Valid values: `Android` and `iOS`.
  GetAppsApp({
    required this.appKey,
    required this.appName,
    required this.bundleId,
    required this.createTime,
    required this.encodedIcon,
    required this.id,
    required this.industryId,
    required this.packageName,
    required this.productId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appKey': appKey,
      'appName': appName,
      'bundleId': bundleId,
      'createTime': createTime,
      'encodedIcon': encodedIcon,
      'id': id,
      'industryId': industryId,
      'packageName': packageName,
      'productId': productId,
      'type': type,
    };
  }

  factory GetAppsApp.fromMap(Map<String, dynamic> map) {
    return GetAppsApp(
      appKey: pulumi.Input.fromValue(map['appKey'] as String),
      appName: pulumi.Input.fromValue(map['appName'] as String),
      bundleId: pulumi.Input.fromValue(map['bundleId'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      encodedIcon: pulumi.Input.fromValue(map['encodedIcon'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      industryId: pulumi.Input.fromValue(map['industryId'] as String),
      packageName: pulumi.Input.fromValue(map['packageName'] as String),
      productId: pulumi.Input.fromValue(map['productId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

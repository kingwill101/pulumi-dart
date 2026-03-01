// ignore_for_file: unused_element, unnecessary_cast


class GetAppsApp {
  /// Application AppKey, which uniquely identifies an application when requested by the interface
  final String appKey;
  /// The Name of the App.
  final String appName;
  /// iOS application ID. Required when creating an iOS app. **NOTE:** Either `bundle_id` or `package_name` must be set.
  final String bundleId;
  /// The CreateTime of the App.
  final String createTime;
  /// Base64 string of picture.
  final String encodedIcon;
  /// The ID of the App.
  final String id;
  /// The Industry ID of the app. For information about Industry and how to use it, MHUB[Industry](https://help.aliyun.com/document_detail/201638.html).
  final String industryId;
  /// Android App package name.  **NOTE:** Either `bundle_id` or `package_name` must be set.
  final String packageName;
  /// The ID of the Product.
  final String productId;
  /// The type of the App. Valid values: `Android` and `iOS`.
  final String type;

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
      appKey: map['appKey'] as String,
      appName: map['appName'] as String,
      bundleId: map['bundleId'] as String,
      createTime: map['createTime'] as String,
      encodedIcon: map['encodedIcon'] as String,
      id: map['id'] as String,
      industryId: map['industryId'] as String,
      packageName: map['packageName'] as String,
      productId: map['productId'] as String,
      type: map['type'] as String,
    );
  }
}


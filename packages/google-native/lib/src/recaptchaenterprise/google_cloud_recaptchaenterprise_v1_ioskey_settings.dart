// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_recaptchaenterprise_v1_apple_developer_id.dart';

/// Settings specific to keys that can be used by iOS apps.
class GoogleCloudRecaptchaenterpriseV1IOSKeySettings {
  /// Optional. If set to true, allowed_bundle_ids are not enforced.
  final bool? allowAllBundleIds;

  /// Optional. iOS bundle ids of apps allowed to use the key. Example: 'com.companyname.productname.appname'
  final List<String>? allowedBundleIds;

  /// Optional. Apple Developer account details for the app that is protected by the reCAPTCHA Key. reCAPTCHA Enterprise leverages platform-specific checks like Apple App Attest and Apple DeviceCheck to protect your app from abuse. Providing these fields allows reCAPTCHA Enterprise to get a better assessment of the integrity of your app.
  final GoogleCloudRecaptchaenterpriseV1AppleDeveloperId? appleDeveloperId;

  /// Creates a new [GoogleCloudRecaptchaenterpriseV1IOSKeySettings].
  /// [allowAllBundleIds] Optional. If set to true, allowed_bundle_ids are not enforced.
  /// [allowedBundleIds] Optional. iOS bundle ids of apps allowed to use the key. Example: 'com.companyname.productname.appname'
  /// [appleDeveloperId] Optional. Apple Developer account details for the app that is protected by the reCAPTCHA Key. reCAPTCHA Enterprise leverages platform-specific checks like Apple App Attest and Apple DeviceCheck to protect your app from abuse. Providing these fields allows reCAPTCHA Enterprise to get a better assessment of the integrity of your app.
  GoogleCloudRecaptchaenterpriseV1IOSKeySettings({
    this.allowAllBundleIds,
    this.allowedBundleIds,
    this.appleDeveloperId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowAllBundleIds': ?allowAllBundleIds,
      'allowedBundleIds': ?allowedBundleIds,
      'appleDeveloperId': ?appleDeveloperId == null
          ? null
          : appleDeveloperId!.toMap(),
    };
  }

  factory GoogleCloudRecaptchaenterpriseV1IOSKeySettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudRecaptchaenterpriseV1IOSKeySettings(
      allowAllBundleIds: map['allowAllBundleIds'] == null
          ? null
          : map['allowAllBundleIds'] as bool,
      allowedBundleIds: map['allowedBundleIds'] == null
          ? null
          : (map['allowedBundleIds'] as List).cast<String>(),
      appleDeveloperId: map['appleDeveloperId'] == null
          ? null
          : GoogleCloudRecaptchaenterpriseV1AppleDeveloperId.fromMap(
              (map['appleDeveloperId'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

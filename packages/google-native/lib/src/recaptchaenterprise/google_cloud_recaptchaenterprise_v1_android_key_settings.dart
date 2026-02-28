// ignore_for_file: unused_element, unnecessary_cast


/// Settings specific to keys that can be used by Android apps.
class GoogleCloudRecaptchaenterpriseV1AndroidKeySettings {
  /// Optional. If set to true, allowed_package_names are not enforced.
  final bool? allowAllPackageNames;
  /// Optional. Android package names of apps allowed to use the key. Example: 'com.companyname.appname'
  final List<String>? allowedPackageNames;
  /// Optional. Set to true for keys that are used in an Android application that is available for download in app stores in addition to the Google Play Store.
  final bool? supportNonGoogleAppStoreDistribution;

  /// Creates a new [GoogleCloudRecaptchaenterpriseV1AndroidKeySettings].
  /// [allowAllPackageNames] Optional. If set to true, allowed_package_names are not enforced.
  /// [allowedPackageNames] Optional. Android package names of apps allowed to use the key. Example: 'com.companyname.appname'
  /// [supportNonGoogleAppStoreDistribution] Optional. Set to true for keys that are used in an Android application that is available for download in app stores in addition to the Google Play Store.
  GoogleCloudRecaptchaenterpriseV1AndroidKeySettings({
    this.allowAllPackageNames,
    this.allowedPackageNames,
    this.supportNonGoogleAppStoreDistribution,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowAllPackageNames': ?allowAllPackageNames,
      'allowedPackageNames': ?allowedPackageNames,
      'supportNonGoogleAppStoreDistribution': ?supportNonGoogleAppStoreDistribution,
    };
  }

  factory GoogleCloudRecaptchaenterpriseV1AndroidKeySettings.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRecaptchaenterpriseV1AndroidKeySettings(
      allowAllPackageNames: map['allowAllPackageNames'] == null ? null : map['allowAllPackageNames'] as bool,
      allowedPackageNames: map['allowedPackageNames'] == null ? null : (map['allowedPackageNames'] as List).cast<String>(),
      supportNonGoogleAppStoreDistribution: map['supportNonGoogleAppStoreDistribution'] == null ? null : map['supportNonGoogleAppStoreDistribution'] as bool,
    );
  }
}


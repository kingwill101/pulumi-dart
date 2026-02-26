// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseKeyIosSettings {
  /// If set to true, it means<span pulumi-lang-nodejs=" allowedBundleIds " pulumi-lang-dotnet=" AllowedBundleIds " pulumi-lang-go=" allowedBundleIds " pulumi-lang-python=" allowed_bundle_ids " pulumi-lang-yaml=" allowedBundleIds " pulumi-lang-java=" allowedBundleIds "> allowed_bundle_ids </span>will not be enforced.
  final bool? allowAllBundleIds;

  /// iOS bundle ids of apps allowed to use the key. Example: 'com.companyname.productname.appname'
  final List<String>? allowedBundleIds;

  EnterpriseKeyIosSettings({
    this.allowAllBundleIds,
    this.allowedBundleIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowAllBundleIdsValue = allowAllBundleIds;
    if (allowAllBundleIdsValue != null) {
      map['allowAllBundleIds'] = allowAllBundleIdsValue;
    }
    final allowedBundleIdsValue = allowedBundleIds;
    if (allowedBundleIdsValue != null) {
      map['allowedBundleIds'] = allowedBundleIdsValue;
    }
    return map;
  }

  factory EnterpriseKeyIosSettings.fromMap(Map<String, dynamic> map) {
    return EnterpriseKeyIosSettings(
      allowAllBundleIds: map['allowAllBundleIds'] == null
          ? null
          : map['allowAllBundleIds'] as bool,
      allowedBundleIds: map['allowedBundleIds'] == null
          ? null
          : (map['allowedBundleIds'] as List).cast<String>(),
    );
  }
}

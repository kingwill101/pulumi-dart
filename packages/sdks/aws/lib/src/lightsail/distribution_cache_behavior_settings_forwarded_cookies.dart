// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionCacheBehaviorSettingsForwardedCookies {
  /// Specific cookies to forward to your distribution's origin.
  final pulumi.Input<List<String>>? cookiesAllowLists;
  /// Which cookies to forward to the distribution's origin for a cache behavior. Valid values: `all`, `none`, `allow-list`.
  final pulumi.Input<String>? option;

  /// Creates a new [DistributionCacheBehaviorSettingsForwardedCookies].
  /// [cookiesAllowLists] Specific cookies to forward to your distribution's origin.
  /// [option] Which cookies to forward to the distribution's origin for a cache behavior. Valid values: `all`, `none`, `allow-list`.
  DistributionCacheBehaviorSettingsForwardedCookies({
    this.cookiesAllowLists,
    this.option,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookiesAllowLists': ?cookiesAllowLists,
      'option': ?option,
    };
  }

  factory DistributionCacheBehaviorSettingsForwardedCookies.fromMap(Map<String, dynamic> map) {
    return DistributionCacheBehaviorSettingsForwardedCookies(
      cookiesAllowLists: map['cookiesAllowLists'] == null ? null : (((map['cookiesAllowLists'] as List).cast<String>()).input()).input(),
      option: map['option'] == null ? null : ((map['option'] as String).input()).input(),
    );
  }
}


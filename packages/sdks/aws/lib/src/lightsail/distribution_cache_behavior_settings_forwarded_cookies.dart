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
      cookiesAllowLists: (() { final guardedValue = map['cookiesAllowLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      option: (() { final guardedValue = map['option']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


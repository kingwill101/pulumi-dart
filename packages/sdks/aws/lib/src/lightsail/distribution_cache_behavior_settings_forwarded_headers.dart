// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionCacheBehaviorSettingsForwardedHeaders {
  /// Specific headers to forward to your distribution's origin.
  final pulumi.Input<List<String>>? headersAllowLists;

  /// Headers that you want your distribution to forward to your origin and base caching on. Valid values: `default`, `allow-list`, `all`.
  final pulumi.Input<String>? option;

  /// Creates a new [DistributionCacheBehaviorSettingsForwardedHeaders].
  /// [headersAllowLists] Specific headers to forward to your distribution's origin.
  /// [option] Headers that you want your distribution to forward to your origin and base caching on. Valid values: `default`, `allow-list`, `all`.
  DistributionCacheBehaviorSettingsForwardedHeaders({
    this.headersAllowLists,
    this.option,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headersAllowLists': ?headersAllowLists,
      'option': ?option,
    };
  }

  factory DistributionCacheBehaviorSettingsForwardedHeaders.fromMap(
    Map<String, dynamic> map,
  ) {
    return DistributionCacheBehaviorSettingsForwardedHeaders(
      headersAllowLists: (() {
        final guardedValue = map['headersAllowLists'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      option: (() {
        final guardedValue = map['option'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

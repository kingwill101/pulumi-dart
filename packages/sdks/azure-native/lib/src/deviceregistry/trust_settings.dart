// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines server trust settings for an endpoint.
class TrustSettings {
  /// Defines a secret reference for certificates to trust.
  final pulumi.Input<String>? trustList;

  /// Creates a new [TrustSettings].
  /// [trustList] Defines a secret reference for certificates to trust.
  TrustSettings({this.trustList});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'trustList': ?trustList};
  }

  factory TrustSettings.fromMap(Map<String, dynamic> map) {
    return TrustSettings(
      trustList: (() {
        final guardedValue = map['trustList'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

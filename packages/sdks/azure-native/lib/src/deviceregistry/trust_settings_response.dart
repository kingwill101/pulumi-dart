// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines server trust settings for an endpoint.
class TrustSettingsResponse {
  /// Defines a secret reference for certificates to trust.
  final pulumi.Input<String>? trustList;

  /// Creates a new [TrustSettingsResponse].
  /// [trustList] Defines a secret reference for certificates to trust.
  TrustSettingsResponse({this.trustList});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'trustList': ?trustList};
  }

  factory TrustSettingsResponse.fromMap(Map<String, dynamic> map) {
    return TrustSettingsResponse(
      trustList: (() {
        final guardedValue = map['trustList'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

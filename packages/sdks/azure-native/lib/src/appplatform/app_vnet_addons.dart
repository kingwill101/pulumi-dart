// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional App settings in vnet injection instance
class AppVNetAddons {
  /// Indicates whether the App in vnet injection instance exposes endpoint which could be accessed from internet.
  final pulumi.Input<bool>? publicEndpoint;

  /// Creates a new [AppVNetAddons].
  /// [publicEndpoint] Indicates whether the App in vnet injection instance exposes endpoint which could be accessed from internet.
  AppVNetAddons({this.publicEndpoint});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'publicEndpoint': ?publicEndpoint};
  }

  factory AppVNetAddons.fromMap(Map<String, dynamic> map) {
    return AppVNetAddons(
      publicEndpoint: (() {
        final guardedValue = map['publicEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}

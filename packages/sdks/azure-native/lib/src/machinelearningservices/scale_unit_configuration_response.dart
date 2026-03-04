// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for ScaleUnit pool.
class ScaleUnitConfigurationResponse {
  /// Gets or sets a value indicating whether PublicEgress is disabled.
  final pulumi.Input<bool>? disablePublicEgress;

  /// Gets or sets a list of Registry sources that will be used to confirm identity, storage, ACR.
  final pulumi.Input<List<String>>? registries;

  /// Creates a new [ScaleUnitConfigurationResponse].
  /// [disablePublicEgress] Gets or sets a value indicating whether PublicEgress is disabled.
  /// [registries] Gets or sets a list of Registry sources that will be used to confirm identity, storage, ACR.
  ScaleUnitConfigurationResponse({this.disablePublicEgress, this.registries});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disablePublicEgress': ?disablePublicEgress,
      'registries': ?registries,
    };
  }

  factory ScaleUnitConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ScaleUnitConfigurationResponse(
      disablePublicEgress: (() {
        final guardedValue = map['disablePublicEgress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      registries: (() {
        final guardedValue = map['registries'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}

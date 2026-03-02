// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for ScaleUnit pool.
class ScaleUnitConfiguration {
  /// Gets or sets a value indicating whether PublicEgress is disabled.
  final pulumi.Input<bool>? disablePublicEgress;
  /// Gets or sets a list of Registry sources that will be used to confirm identity, storage, ACR.
  final pulumi.Input<List<String>>? registries;

  /// Creates a new [ScaleUnitConfiguration].
  /// [disablePublicEgress] Gets or sets a value indicating whether PublicEgress is disabled.
  /// [registries] Gets or sets a list of Registry sources that will be used to confirm identity, storage, ACR.
  ScaleUnitConfiguration({
    this.disablePublicEgress,
    this.registries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disablePublicEgress': ?disablePublicEgress,
      'registries': ?registries,
    };
  }

  factory ScaleUnitConfiguration.fromMap(Map<String, dynamic> map) {
    return ScaleUnitConfiguration(
      disablePublicEgress: map['disablePublicEgress'] == null ? null : (map['disablePublicEgress'] as bool).input(),
      registries: map['registries'] == null ? null : ((map['registries'] as List).cast<String>()).input(),
    );
  }
}


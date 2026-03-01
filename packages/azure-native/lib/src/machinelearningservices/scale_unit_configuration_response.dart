// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for ScaleUnit pool.
class ScaleUnitConfigurationResponse {
  /// Gets or sets a value indicating whether PublicEgress is disabled.
  final bool? disablePublicEgress;
  /// Gets or sets a list of Registry sources that will be used to confirm identity, storage, ACR.
  final List<String>? registries;

  /// Creates a new [ScaleUnitConfigurationResponse].
  /// [disablePublicEgress] Gets or sets a value indicating whether PublicEgress is disabled.
  /// [registries] Gets or sets a list of Registry sources that will be used to confirm identity, storage, ACR.
  ScaleUnitConfigurationResponse({
    this.disablePublicEgress,
    this.registries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disablePublicEgress': ?disablePublicEgress,
      'registries': ?registries,
    };
  }

  factory ScaleUnitConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ScaleUnitConfigurationResponse(
      disablePublicEgress: map['disablePublicEgress'] == null ? null : map['disablePublicEgress'] as bool,
      registries: map['registries'] == null ? null : (map['registries'] as List).cast<String>(),
    );
  }
}


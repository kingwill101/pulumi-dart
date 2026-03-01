// ignore_for_file: unused_element, unnecessary_cast


/// Additional App settings in vnet injection instance
class AppVNetAddons {
  /// Indicates whether the App in vnet injection instance exposes endpoint which could be accessed from internet.
  final bool? publicEndpoint;

  /// Creates a new [AppVNetAddons].
  /// [publicEndpoint] Indicates whether the App in vnet injection instance exposes endpoint which could be accessed from internet.
  AppVNetAddons({
    this.publicEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicEndpoint': ?publicEndpoint,
    };
  }

  factory AppVNetAddons.fromMap(Map<String, dynamic> map) {
    return AppVNetAddons(
      publicEndpoint: map['publicEndpoint'] == null ? null : map['publicEndpoint'] as bool,
    );
  }
}


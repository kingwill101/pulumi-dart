// ignore_for_file: unused_element, unnecessary_cast


/// The OptionalServices of AzureStackHCI Cluster.
class OptionalServices {
  /// The name of custom location.
  final String? customLocation;

  /// Creates a new [OptionalServices].
  /// [customLocation] The name of custom location.
  OptionalServices({
    this.customLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customLocation': ?customLocation,
    };
  }

  factory OptionalServices.fromMap(Map<String, dynamic> map) {
    return OptionalServices(
      customLocation: map['customLocation'] == null ? null : map['customLocation'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


/// The OptionalServices of AzureStackHCI Cluster.
class OptionalServicesResponse {
  /// The name of custom location.
  final String? customLocation;

  /// Creates a new [OptionalServicesResponse].
  /// [customLocation] The name of custom location.
  OptionalServicesResponse({
    this.customLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customLocation': ?customLocation,
    };
  }

  factory OptionalServicesResponse.fromMap(Map<String, dynamic> map) {
    return OptionalServicesResponse(
      customLocation: map['customLocation'] == null ? null : map['customLocation'] as String,
    );
  }
}


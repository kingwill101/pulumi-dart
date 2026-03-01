// ignore_for_file: unused_element, unnecessary_cast


/// Description of the IoT hub.
class IotHubDefinitionDescription {
  /// weight to apply for a given iot h.
  final int? allocationWeight;
  /// flag for applying allocationPolicy or not for a given iot hub.
  final bool? applyAllocationPolicy;
  /// Connection string of the IoT hub.
  final String connectionString;
  /// ARM region of the IoT hub.
  final String location;

  /// Creates a new [IotHubDefinitionDescription].
  /// [allocationWeight] weight to apply for a given iot h.
  /// [applyAllocationPolicy] flag for applying allocationPolicy or not for a given iot hub.
  /// [connectionString] Connection string of the IoT hub.
  /// [location] ARM region of the IoT hub.
  IotHubDefinitionDescription({
    this.allocationWeight,
    this.applyAllocationPolicy,
    required this.connectionString,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationWeight': ?allocationWeight,
      'applyAllocationPolicy': ?applyAllocationPolicy,
      'connectionString': connectionString,
      'location': location,
    };
  }

  factory IotHubDefinitionDescription.fromMap(Map<String, dynamic> map) {
    return IotHubDefinitionDescription(
      allocationWeight: map['allocationWeight'] == null ? null : map['allocationWeight'] as int,
      applyAllocationPolicy: map['applyAllocationPolicy'] == null ? null : map['applyAllocationPolicy'] as bool,
      connectionString: map['connectionString'] as String,
      location: map['location'] as String,
    );
  }
}


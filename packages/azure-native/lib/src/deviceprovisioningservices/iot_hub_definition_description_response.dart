// ignore_for_file: unused_element, unnecessary_cast


/// Description of the IoT hub.
class IotHubDefinitionDescriptionResponse {
  /// weight to apply for a given iot h.
  final int? allocationWeight;
  /// flag for applying allocationPolicy or not for a given iot hub.
  final bool? applyAllocationPolicy;
  /// Connection string of the IoT hub.
  final String connectionString;
  /// ARM region of the IoT hub.
  final String location;
  /// Host name of the IoT hub.
  final String name;

  /// Creates a new [IotHubDefinitionDescriptionResponse].
  /// [allocationWeight] weight to apply for a given iot h.
  /// [applyAllocationPolicy] flag for applying allocationPolicy or not for a given iot hub.
  /// [connectionString] Connection string of the IoT hub.
  /// [location] ARM region of the IoT hub.
  /// [name] Host name of the IoT hub.
  IotHubDefinitionDescriptionResponse({
    this.allocationWeight,
    this.applyAllocationPolicy,
    required this.connectionString,
    required this.location,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationWeight': ?allocationWeight,
      'applyAllocationPolicy': ?applyAllocationPolicy,
      'connectionString': connectionString,
      'location': location,
      'name': name,
    };
  }

  factory IotHubDefinitionDescriptionResponse.fromMap(Map<String, dynamic> map) {
    return IotHubDefinitionDescriptionResponse(
      allocationWeight: map['allocationWeight'] == null ? null : map['allocationWeight'] as int,
      applyAllocationPolicy: map['applyAllocationPolicy'] == null ? null : map['applyAllocationPolicy'] as bool,
      connectionString: map['connectionString'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Description of the IoT hub.
class IotHubDefinitionDescriptionResponse {
  /// weight to apply for a given iot h.
  final pulumi.Input<int>? allocationWeight;
  /// flag for applying allocationPolicy or not for a given iot hub.
  final pulumi.Input<bool>? applyAllocationPolicy;
  /// Connection string of the IoT hub.
  final pulumi.Input<String> connectionString;
  /// ARM region of the IoT hub.
  final pulumi.Input<String> location;
  /// Host name of the IoT hub.
  final pulumi.Input<String> name;

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
      allocationWeight: map['allocationWeight'] == null ? null : (map['allocationWeight'] as int).input(),
      applyAllocationPolicy: map['applyAllocationPolicy'] == null ? null : (map['applyAllocationPolicy'] as bool).input(),
      connectionString: (map['connectionString'] as String).input(),
      location: (map['location'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}


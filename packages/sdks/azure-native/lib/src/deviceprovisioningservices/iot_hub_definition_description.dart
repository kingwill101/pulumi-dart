// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Description of the IoT hub.
class IotHubDefinitionDescription {
  /// weight to apply for a given iot h.
  final pulumi.Input<int>? allocationWeight;
  /// flag for applying allocationPolicy or not for a given iot hub.
  final pulumi.Input<bool>? applyAllocationPolicy;
  /// Connection string of the IoT hub.
  final pulumi.Input<String> connectionString;
  /// ARM region of the IoT hub.
  final pulumi.Input<String> location;

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
      allocationWeight: map['allocationWeight'] == null ? null : (map['allocationWeight'] as int).input(),
      applyAllocationPolicy: map['applyAllocationPolicy'] == null ? null : (map['applyAllocationPolicy'] as bool).input(),
      connectionString: (map['connectionString'] as String).input(),
      location: (map['location'] as String).input(),
    );
  }
}


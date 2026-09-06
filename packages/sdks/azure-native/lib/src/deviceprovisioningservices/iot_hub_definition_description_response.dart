// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Description of the IoT hub.
class IotHubDefinitionDescriptionResponse {
  /// weight to apply for a given iot h.
  final pulumi.Input<int?>? allocationWeight;
  /// flag for applying allocationPolicy or not for a given iot hub.
  final pulumi.Input<bool?>? applyAllocationPolicy;
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
  const IotHubDefinitionDescriptionResponse({
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
      allocationWeight: (() { final guardedValue = map['allocationWeight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      applyAllocationPolicy: (() { final guardedValue = map['applyAllocationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      connectionString: pulumi.Input.fromValue(map['connectionString'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventConnectionAuthParametersConnectivityParametersResourceParameters {
  final pulumi.Input<String?>? resourceAssociationArn;
  /// ARN of the Amazon VPC Lattice resource configuration for the resource endpoint.
  final pulumi.Input<String> resourceConfigurationArn;

  /// Creates a new [EventConnectionAuthParametersConnectivityParametersResourceParameters].
  /// [resourceAssociationArn] Optional.
  /// [resourceConfigurationArn] ARN of the Amazon VPC Lattice resource configuration for the resource endpoint.
  const EventConnectionAuthParametersConnectivityParametersResourceParameters({
    this.resourceAssociationArn,
    required this.resourceConfigurationArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceAssociationArn': ?resourceAssociationArn,
      'resourceConfigurationArn': resourceConfigurationArn,
    };
  }

  factory EventConnectionAuthParametersConnectivityParametersResourceParameters.fromMap(Map<String, dynamic> map) {
    return EventConnectionAuthParametersConnectivityParametersResourceParameters(
      resourceAssociationArn: (() { final guardedValue = map['resourceAssociationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceConfigurationArn: pulumi.Input.fromValue(map['resourceConfigurationArn'] as String),
    );
  }
}

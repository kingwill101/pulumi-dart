// ignore_for_file: unused_element, unnecessary_cast


class EventConnectionInvocationConnectivityParametersResourceParameters {
  final String? resourceAssociationArn;
  /// ARN of the Amazon VPC Lattice resource configuration for the resource endpoint.
  final String resourceConfigurationArn;

  /// Creates a new [EventConnectionInvocationConnectivityParametersResourceParameters].
  /// [resourceAssociationArn] Optional.
  /// [resourceConfigurationArn] ARN of the Amazon VPC Lattice resource configuration for the resource endpoint.
  EventConnectionInvocationConnectivityParametersResourceParameters({
    this.resourceAssociationArn,
    required this.resourceConfigurationArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceAssociationArn': ?resourceAssociationArn,
      'resourceConfigurationArn': resourceConfigurationArn,
    };
  }

  factory EventConnectionInvocationConnectivityParametersResourceParameters.fromMap(Map<String, dynamic> map) {
    return EventConnectionInvocationConnectivityParametersResourceParameters(
      resourceAssociationArn: map['resourceAssociationArn'] == null ? null : map['resourceAssociationArn'] as String,
      resourceConfigurationArn: map['resourceConfigurationArn'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

class EventConnectionInvocationConnectivityParametersResourceParameters {
  final String? resourceAssociationArn;

  /// ARN of the Amazon VPC Lattice resource configuration for the resource endpoint.
  final String resourceConfigurationArn;

  EventConnectionInvocationConnectivityParametersResourceParameters({
    this.resourceAssociationArn,
    required this.resourceConfigurationArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final resourceAssociationArnValue = resourceAssociationArn;
    if (resourceAssociationArnValue != null) {
      map['resourceAssociationArn'] = resourceAssociationArnValue;
    }
    map['resourceConfigurationArn'] = resourceConfigurationArn;
    return map;
  }

  factory EventConnectionInvocationConnectivityParametersResourceParameters.fromMap(
      Map<String, dynamic> map) {
    return EventConnectionInvocationConnectivityParametersResourceParameters(
      resourceAssociationArn: map['resourceAssociationArn'] == null
          ? null
          : map['resourceAssociationArn'] as String,
      resourceConfigurationArn: map['resourceConfigurationArn'] as String,
    );
  }
}

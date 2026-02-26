// ignore_for_file: unused_element, unnecessary_cast

class CustomRoutingEndpointGroupEndpointConfiguration {
  /// An ID for the endpoint. For custom routing accelerators, this is the virtual private cloud (VPC) subnet ID.
  final String? endpointId;

  CustomRoutingEndpointGroupEndpointConfiguration({
    this.endpointId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endpointIdValue = endpointId;
    if (endpointIdValue != null) {
      map['endpointId'] = endpointIdValue;
    }
    return map;
  }

  factory CustomRoutingEndpointGroupEndpointConfiguration.fromMap(
      Map<String, dynamic> map) {
    return CustomRoutingEndpointGroupEndpointConfiguration(
      endpointId:
          map['endpointId'] == null ? null : map['endpointId'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getServiceBinding.
class GetServiceBindingNetworkservicesV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceBindingId;

  GetServiceBindingNetworkservicesV1beta1Args({
    required this.location,
    this.project,
    required this.serviceBindingId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceBindingId'] = serviceBindingId;
    return map;
  }

  factory GetServiceBindingNetworkservicesV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetServiceBindingNetworkservicesV1beta1Args(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serviceBindingId: pulumi.Input.asInput<String>(map['serviceBindingId']),
    );
  }
}

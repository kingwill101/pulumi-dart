// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1beta1_get_service_binding_networkservices_v1beta1_args_doc}
/// Arguments for getServiceBinding.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1beta1_get_service_binding_networkservices_v1beta1_args_doc}
class GetServiceBindingNetworkservicesV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceBindingId;

  /// Creates a new [GetServiceBindingNetworkservicesV1beta1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [serviceBindingId] Required.
  GetServiceBindingNetworkservicesV1beta1Args({
    required String location,
    String? project,
    required String serviceBindingId,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        serviceBindingId = pulumi.Input.asInput<String>(serviceBindingId);

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
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      serviceBindingId: map['serviceBindingId'] as String,
    );
  }
}

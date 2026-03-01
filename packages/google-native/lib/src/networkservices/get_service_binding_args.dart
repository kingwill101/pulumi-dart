// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1_get_service_binding_args_doc}
/// Arguments for getServiceBinding.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1_get_service_binding_args_doc}
class GetServiceBindingArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceBindingId;

  /// Creates a new [GetServiceBindingArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [serviceBindingId] Required.
  GetServiceBindingArgs({
    required String location,
    String? project,
    required String serviceBindingId,
  }) : location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       serviceBindingId = pulumi.Input.asInput<String>(serviceBindingId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'serviceBindingId': serviceBindingId,
    };
  }

  factory GetServiceBindingArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceBindingArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      serviceBindingId: map['serviceBindingId'] as String,
    );
  }
}

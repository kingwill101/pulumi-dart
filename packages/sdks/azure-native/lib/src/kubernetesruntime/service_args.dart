// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kubernetesruntime_service_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_kubernetesruntime_service_args_doc}
class ServiceArgs {
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;
  /// The name of the the service
  final pulumi.Input<String>? serviceName;

  /// Creates a new [ServiceArgs].
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  /// [serviceName] The name of the the service
  const ServiceArgs({
    required this.resourceUri,
    this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceUri': resourceUri,
      'serviceName': ?serviceName,
    };
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

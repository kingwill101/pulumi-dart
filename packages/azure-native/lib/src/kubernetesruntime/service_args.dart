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
  ServiceArgs({
    required String resourceUri,
    String? serviceName,
  }) :
      resourceUri = pulumi.Input.asInput<String>(resourceUri),
      serviceName = pulumi.Input.asOptionalInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceUri': resourceUri,
      'serviceName': ?serviceName,
    };
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      resourceUri: map['resourceUri'] as String,
      serviceName: map['serviceName'] == null ? null : map['serviceName'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kubernetesruntime_get_service_args_doc}
/// Arguments for getService.
/// {@endtemplate}
/// {@macro pulumi_kubernetesruntime_get_service_args_doc}
class GetServiceArgs {
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;
  /// The name of the the service
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetServiceArgs].
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  /// [serviceName] The name of the the service
  GetServiceArgs({
    required String resourceUri,
    required String serviceName,
  }) :
      resourceUri = pulumi.Input.asInput<String>(resourceUri),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceUri': resourceUri,
      'serviceName': serviceName,
    };
  }

  factory GetServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceArgs(
      resourceUri: map['resourceUri'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}


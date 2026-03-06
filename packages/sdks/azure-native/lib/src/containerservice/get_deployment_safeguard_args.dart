// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_get_deployment_safeguard_args_doc}
/// Arguments for getDeploymentSafeguard.
/// {@endtemplate}
/// {@macro pulumi_containerservice_get_deployment_safeguard_args_doc}
class GetDeploymentSafeguardArgs {
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [GetDeploymentSafeguardArgs].
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  const GetDeploymentSafeguardArgs({
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceUri': resourceUri,
    };
  }

  factory GetDeploymentSafeguardArgs.fromMap(Map<String, dynamic> map) {
    return GetDeploymentSafeguardArgs(
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
    );
  }
}


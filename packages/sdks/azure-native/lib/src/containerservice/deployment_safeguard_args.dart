// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_deployment_safeguard_args_doc}
/// The set of arguments for DeploymentSafeguard.
/// {@endtemplate}
/// {@macro pulumi_containerservice_deployment_safeguard_args_doc}
class DeploymentSafeguardArgs {
  /// User defined list of namespaces to exclude from Deployment Safeguards. Deployments in these namespaces will not be checked against any safeguards
  final pulumi.Input<List<String>>? excludedNamespaces;
  /// The deployment safeguards level. Possible values are Warn and Enforce
  final pulumi.Input<String> level;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [DeploymentSafeguardArgs].
  /// [excludedNamespaces] User defined list of namespaces to exclude from Deployment Safeguards. Deployments in these namespaces will not be checked against any safeguards
  /// [level] The deployment safeguards level. Possible values are Warn and Enforce
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  const DeploymentSafeguardArgs({
    this.excludedNamespaces,
    required this.level,
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedNamespaces': ?excludedNamespaces,
      'level': level,
      'resourceUri': resourceUri,
    };
  }

  factory DeploymentSafeguardArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentSafeguardArgs(
      excludedNamespaces: (() { final guardedValue = map['excludedNamespaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      level: pulumi.Input.fromValue(map['level'] as String),
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
    );
  }
}

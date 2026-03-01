// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_intercept_deployment_intercept_deployment_args_doc}
/// The set of arguments for InterceptDeployment.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_intercept_deployment_intercept_deployment_args_doc}
class InterceptDeploymentArgs {
  /// User-provided description of the deployment.
  /// Used as additional context for the deployment.
  final pulumi.Input<String>? description;

  /// The regional forwarding rule that fronts the interceptors, for example:
  /// `projects/123456789/regions/us-central1/forwardingRules/my-rule`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String> forwardingRule;

  /// The deployment group that this deployment is a part of, for example:
  /// `projects/123456789/locations/global/interceptDeploymentGroups/my-dg`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String> interceptDeploymentGroup;

  /// The ID to use for the new deployment, which will become the final
  /// component of the deployment's resource name.
  final pulumi.Input<String> interceptDeploymentId;

  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The cloud location of the deployment, e.g. `us-central1-a` or `asia-south1-b`.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [InterceptDeploymentArgs].
  /// [description] User-provided description of the deployment.
  /// [forwardingRule] The regional forwarding rule that fronts the interceptors, for example:
  /// [interceptDeploymentGroup] The deployment group that this deployment is a part of, for example:
  /// [interceptDeploymentId] The ID to use for the new deployment, which will become the final
  /// [labels] Labels are key/value pairs that help to organize and filter resources.
  /// [location] The cloud location of the deployment, e.g. `us-central1-a` or `asia-south1-b`.
  /// [project] The ID of the project in which the resource belongs.
  InterceptDeploymentArgs({
    String? description,
    required String forwardingRule,
    required String interceptDeploymentGroup,
    required String interceptDeploymentId,
    Map<String, String>? labels,
    required String location,
    String? project,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       forwardingRule = pulumi.Input.asInput<String>(forwardingRule),
       interceptDeploymentGroup = pulumi.Input.asInput<String>(
         interceptDeploymentGroup,
       ),
       interceptDeploymentId = pulumi.Input.asInput<String>(
         interceptDeploymentId,
       ),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'forwardingRule': forwardingRule,
      'interceptDeploymentGroup': interceptDeploymentGroup,
      'interceptDeploymentId': interceptDeploymentId,
      'labels': ?labels,
      'location': location,
      'project': ?project,
    };
  }

  factory InterceptDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return InterceptDeploymentArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      forwardingRule: map['forwardingRule'] as String,
      interceptDeploymentGroup: map['interceptDeploymentGroup'] as String,
      interceptDeploymentId: map['interceptDeploymentId'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

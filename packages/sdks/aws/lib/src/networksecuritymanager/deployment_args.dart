// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_configuration.dart';

/// {@template pulumi_networksecuritymanager_deployment_deployment_args_doc}
/// The set of arguments for Deployment.
/// {@endtemplate}
/// {@macro pulumi_networksecuritymanager_deployment_deployment_args_doc}
class DeploymentArgs {
  /// Settings for the deployment. See `configuration` Block below.
  final pulumi.Input<DeploymentConfiguration> configuration;
  /// Description of the deployment.
  final pulumi.Input<String?>? description;
  /// Whether to publish the deployment. When `true`, the deployment is saved in the published (`ACTIVE`) state. When `false`, it is saved as a draft (`DRAFT`); for a published deployment, the draft is saved on top of the published version. Defaults to `true`.
  final pulumi.Input<bool?>? isPublished;
  /// Name of the deployment.
  final pulumi.Input<String?>? name;
  /// Set of ARNs of the policies to deploy. Specify 1 or 2 policies.
  final pulumi.Input<List<String>> policyArns;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the scope that selects the accounts and resources the policies apply to.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> scopeArn;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// &gt; **Note:** A policy or scope used by a deployment cannot be deleted. Configure `createBeforeDestroy` on referenced policy and scope resources so that a replacement is associated with the deployment before the old resource is deleted.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [DeploymentArgs].
  /// [configuration] Settings for the deployment. See `configuration` Block below.
  /// [description] Description of the deployment.
  /// [isPublished] Whether to publish the deployment. When `true`, the deployment is saved in the published (`ACTIVE`) state. When `false`, it is saved as a draft (`DRAFT`); for a published deployment, the draft is saved on top of the published version. Defaults to `true`.
  /// [name] Name of the deployment.
  /// [policyArns] Set of ARNs of the policies to deploy. Specify 1 or 2 policies.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scopeArn] ARN of the scope that selects the accounts and resources the policies apply to.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const DeploymentArgs({
    required this.configuration,
    this.description,
    this.isPublished,
    this.name,
    required this.policyArns,
    this.region,
    required this.scopeArn,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': pulumi.Input.mapInputValue<DeploymentConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'description': ?description,
      'isPublished': ?isPublished,
      'name': ?name,
      'policyArns': policyArns,
      'region': ?region,
      'scopeArn': scopeArn,
      'tags': ?tags,
    };
  }

  factory DeploymentArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentArgs(
      configuration: pulumi.Input.fromValue(DeploymentConfiguration.fromMap((map['configuration']! as Map).cast<String, dynamic>())),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isPublished: (() { final guardedValue = map['isPublished']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyArns: pulumi.Input.fromValue((map['policyArns'] as List).cast<String>()),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopeArn: pulumi.Input.fromValue(map['scopeArn'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

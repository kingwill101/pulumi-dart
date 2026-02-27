import 'package:pulumi/pulumi.dart' as pulumi;
import '../project_kaj_policy_config_default_key_access_justification_policy/project_kaj_policy_config_default_key_access_justification_policy.dart';
import 'project_kaj_policy_config_args.dart';

/// ## Example Usage
///
/// ### Kms Project Kaj Policy Config Basic
///
///
///
///
/// ## Import
///
/// ProjectKajPolicyConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/kajPolicyConfig`
///
/// * `{{project}}`
///
/// When using the `pulumi import` command, ProjectKajPolicyConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:kms/projectKajPolicyConfig:ProjectKajPolicyConfig default projects/{{project}}/kajPolicyConfig
/// ```
///
/// ```sh
/// $ pulumi import gcp:kms/projectKajPolicyConfig:ProjectKajPolicyConfig default {{project}}
/// ```
class ProjectKajPolicyConfig extends pulumi.CustomResource {
  /// The default key access justification policy used when a CryptoKey is
  /// created in this project. This is only used when a Key Access Justifications
  /// policy is not provided in the CreateCryptoKeyRequest.
  /// Structure is documented below.
  late final pulumi
      .Output<ProjectKajPolicyConfigDefaultKeyAccessJustificationPolicy?>
      defaultKeyAccessJustificationPolicy;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  ProjectKajPolicyConfig(
    String name, {
    ProjectKajPolicyConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:kms/projectKajPolicyConfig:ProjectKajPolicyConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.defaultKeyAccessJustificationPolicy = registerOutput<
            ProjectKajPolicyConfigDefaultKeyAccessJustificationPolicy?>(
        'defaultKeyAccessJustificationPolicy');
    this.project = registerOutput<String>('project');
  }
}

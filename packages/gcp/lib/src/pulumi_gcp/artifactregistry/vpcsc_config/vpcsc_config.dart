import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpcsc_config_args.dart';

/// ## Example Usage
///
/// ### Artifact Registry Vpcsc Config
///
///
///
///
/// ## Import
///
/// VPCSCConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/vpcscConfig/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, VPCSCConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:artifactregistry/vpcscConfig:VpcscConfig default projects/{{project}}/locations/{{location}}/vpcscConfig/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:artifactregistry/vpcscConfig:VpcscConfig default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:artifactregistry/vpcscConfig:VpcscConfig default {{location}}/{{name}}
/// ```
class VpcscConfig extends pulumi.CustomResource {
  /// The name of the location this config is located in.
  late final pulumi.Output<String> location;

  /// The name of the project's VPC SC Config.
  /// Always of the form: projects/{project}/location/{location}/vpcscConfig
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The VPC SC policy for project and location.
  /// Possible values are: `DENY`, `ALLOW`.
  late final pulumi.Output<String?> vpcscPolicy;

  VpcscConfig(
    String name, {
    VpcscConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:artifactregistry/vpcscConfig:VpcscConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.vpcscPolicy = registerOutput<String?>('vpcscPolicy');
  }
}

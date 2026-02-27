import 'package:pulumi/pulumi.dart' as pulumi;
import 'version_args.dart';

/// You can create multiple versions of your agent and publish them to separate environments.
///
///
/// To get more information about Version, see:
///
/// * [API documentation](https://docs.cloud.google.com/dialogflow/es/docs/reference/rest/v2/projects.agent.versions)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/docs/)
///
/// ## Example Usage
///
/// ### Dialogflow Version Full
///
///
///
///
/// ## Import
///
/// Version can be imported using any of these accepted formats:
///
/// * `{{parent}}/versions/{{name}}`
///
/// * `{{parent}}/{{name}}`
///
/// When using the `pulumi import` command, Version can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/version:Version default {{parent}}/versions/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:diagflow/version:Version default {{parent}}/{{name}}
/// ```
class Version extends pulumi.CustomResource {
  /// The developer-provided description of this version.
  late final pulumi.Output<String?> description;

  /// The unique identifier of this agent version.
  late final pulumi.Output<String> name;

  /// The Flow to create an Version for.
  /// Format: projects/<Project ID>/agent.
  late final pulumi.Output<String?> parent;

  /// The status of this version.
  late final pulumi.Output<String> status;

  /// The sequential number of this version.
  late final pulumi.Output<int> versionNumber;

  Version(
    String name, {
    VersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/version:Version',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String?>('parent');
    this.status = registerOutput<String>('status');
    this.versionNumber = registerOutput<int>('versionNumber');
  }
}

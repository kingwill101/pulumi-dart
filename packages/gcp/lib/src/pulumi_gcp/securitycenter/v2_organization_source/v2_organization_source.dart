import 'package:pulumi/pulumi.dart';
import 'v2_organization_source_args.dart';

/// A Cloud Security Command Center's (Cloud SCC) finding source. A finding
/// source is an entity or a mechanism that can produce a finding. A source is
/// like a container of findings that come from the same scanner, logger,
/// monitor, etc.
///
///
/// To get more information about OrganizationSource, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/rest/v2/organizations.sources)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/security-command-center/docs)
///
/// ## Example Usage
///
/// ### Scc Source Basic
///
///
///
///
/// ## Import
///
/// OrganizationSource can be imported using any of these accepted formats:
///
/// * `organizations/{{organization}}/sources/{{name}}`
///
/// * `{{organization}}/{{name}}`
///
/// When using the `pulumi import` command, OrganizationSource can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/v2OrganizationSource:V2OrganizationSource default organizations/{{organization}}/sources/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/v2OrganizationSource:V2OrganizationSource default {{organization}}/{{name}}
/// ```
class V2OrganizationSource extends CustomResource {
  /// The description of the source (max of 1024 characters).
  late final Output<String?> description;

  /// The source’s display name. A source’s display name must be unique
  /// amongst its siblings, for example, two sources with the same parent
  /// can't share the same display name. The display name must start and end
  /// with a letter or digit, may contain letters, digits, spaces, hyphens,
  /// and underscores, and can be no longer than 32 characters.
  late final Output<String> displayName;

  /// The resource name of this source, in the format
  /// `organizations/{{organization}}/sources/{{source}}`.
  late final Output<String> name;

  /// The organization whose Cloud Security Command Center the Source
  /// lives in.
  late final Output<String> organization;

  V2OrganizationSource(
    String name, {
    V2OrganizationSourceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/v2OrganizationSource:V2OrganizationSource',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    this.organization = registerOutput<String>('organization');
  }
}

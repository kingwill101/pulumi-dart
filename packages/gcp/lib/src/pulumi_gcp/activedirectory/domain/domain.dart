import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_args.dart';

/// Creates a Microsoft AD domain
///
///
/// To get more information about Domain, see:
///
/// * [API documentation](https://cloud.google.com/managed-microsoft-ad/reference/rest/v1/projects.locations.global.domains)
/// * How-to Guides
/// * [Managed Microsoft Active Directory Quickstart](https://cloud.google.com/managed-microsoft-ad/docs/quickstarts)
///
/// ## Example Usage
///
/// ### Active Directory Domain Basic
///
///
///
///
/// ## Import
///
/// Domain can be imported using any of these accepted formats:
///
/// * `{{project}}/{{name}}`
///
/// * `{{project}} {{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Domain can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:activedirectory/domain:Domain default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:activedirectory/domain:Domain default "{{project}} {{name}}"
/// ```
///
/// ```sh
/// $ pulumi import gcp:activedirectory/domain:Domain default {{name}}
/// ```
class Domain extends pulumi.CustomResource {
  /// The name of delegated administrator account used to perform Active Directory operations.
  /// If not specified, setupadmin will be used.
  late final pulumi.Output<String?> admin;

  /// The full names of the Google Compute Engine networks the domain instance is connected to. The domain is only available on networks listed in authorizedNetworks.
  /// If CIDR subnets overlap between networks, domain creation will fail.
  late final pulumi.Output<List<String>?> authorizedNetworks;
  late final pulumi.Output<bool?> deletionProtection;

  /// The fully qualified domain name. e.g. mydomain.myorganization.com, with the restrictions
  /// of https://cloud.google.com/managed-microsoft-ad/reference/rest/v1/projects.locations.global.domains.
  late final pulumi.Output<String> domainName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The fully-qualified domain name of the exposed domain used by clients to connect to the service.
  /// Similar to what would be chosen for an Active Directory set up on an internal network.
  late final pulumi.Output<String> fqdn;

  /// Resource labels that can contain user-provided metadata
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Locations where domain needs to be provisioned. [regions][compute/docs/regions-zones/]
  /// e.g. us-west1 or us-east4 Service supports up to 4 locations at once. Each location will use a /26 block.
  late final pulumi.Output<List<String>> locations;

  /// The unique name of the domain using the format: `projects/{project}/locations/global/domains/{domainName}`.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The CIDR range of internal addresses that are reserved for this domain. Reserved networks must be /24 or larger.
  /// Ranges must be unique and non-overlapping with existing subnets in authorizedNetworks
  late final pulumi.Output<String> reservedIpRange;

  Domain(
    String name, {
    DomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:activedirectory/domain:Domain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.admin = registerOutput<String?>('admin');
    this.authorizedNetworks =
        registerOutput<List<String>?>('authorizedNetworks');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.domainName = registerOutput<String>('domainName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.fqdn = registerOutput<String>('fqdn');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.locations = registerOutput<List<String>>('locations');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reservedIpRange = registerOutput<String>('reservedIpRange');
  }
}

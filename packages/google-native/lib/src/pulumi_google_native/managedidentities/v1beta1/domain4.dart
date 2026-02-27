import 'package:pulumi/pulumi.dart' hide Config;
import 'domain_args4.dart';
import 'trust_response3.dart';

/// Creates a Microsoft AD domain.
/// Auto-naming is currently not supported for this resource.
class Domain4 extends CustomResource {
  /// Optional. The name of delegated administrator account used to perform Active Directory operations. If not specified, `setupadmin` will be used.
  late final Output<String> admin;

  /// Optional. Configuration for audit logs. True if audit logs are enabled, else false. Default is audit logs disabled.
  late final Output<bool> auditLogsEnabled;

  /// Optional. The full names of the Google Compute Engine [networks](/compute/docs/networks-and-firewalls#networks) the domain instance is connected to. Networks can be added using UpdateDomain. The domain is only available on networks listed in `authorized_networks`. If CIDR subnets overlap between networks, domain creation will fail.
  late final Output<List<String>> authorizedNetworks;

  /// The time the instance was created.
  late final Output<String> createTime;

  /// Required. A domain name, e.g. mydomain.myorg.com, with the following restrictions: * Must contain only lowercase letters, numbers, periods and hyphens. * Must start with a letter. * Must contain between 2-64 characters. * Must end with a number or a letter. * Must not start with period. * First segment length (mydomain form example above) shouldn't exceed 15 chars. * The last segment cannot be fully numeric. * Must be unique within the customer project.
  late final Output<String> domainName;

  /// The fully-qualified domain name of the exposed domain used by clients to connect to the service. Similar to what would be chosen for an Active Directory set up on an internal network.
  late final Output<String> fqdn;

  /// Optional. Resource labels that can contain user-provided metadata.
  late final Output<Map<String, String>> labels;

  /// Locations where domain needs to be provisioned. regions e.g. us-west1 or us-east4 Service supports up to 4 locations at once. Each location will use a /26 block.
  late final Output<List<String>> locations;

  /// The unique name of the domain using the form: `projects/{project_id}/locations/global/domains/{domain_name}`.
  late final Output<String> name;
  late final Output<String> project;

  /// The CIDR range of internal addresses that are reserved for this domain. Reserved networks must be /24 or larger. Ranges must be unique and non-overlapping with existing subnets in [Domain].[authorized_networks].
  late final Output<String> reservedIpRange;

  /// The current state of this domain.
  late final Output<String> state;

  /// Additional information about the current status of this domain, if available.
  late final Output<String> statusMessage;

  /// The current trusts associated with the domain.
  late final Output<List<TrustResponse3>> trusts;

  /// The last update time.
  late final Output<String> updateTime;

  Domain4(
    String name, {
    DomainArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:managedidentities/v1beta1:Domain',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.admin = registerOutput<String>('admin');
    this.auditLogsEnabled = registerOutput<bool>('auditLogsEnabled');
    this.authorizedNetworks =
        registerOutput<List<String>>('authorizedNetworks');
    this.createTime = registerOutput<String>('createTime');
    this.domainName = registerOutput<String>('domainName');
    this.fqdn = registerOutput<String>('fqdn');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.locations = registerOutput<List<String>>('locations');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.reservedIpRange = registerOutput<String>('reservedIpRange');
    this.state = registerOutput<String>('state');
    this.statusMessage = registerOutput<String>('statusMessage');
    this.trusts = registerOutput<List<TrustResponse3>>('trusts');
    this.updateTime = registerOutput<String>('updateTime');
  }
}

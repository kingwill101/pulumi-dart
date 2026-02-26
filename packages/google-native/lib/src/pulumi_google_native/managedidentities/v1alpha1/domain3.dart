import 'package:pulumi/pulumi.dart';
import 'domain_args3.dart';
import 'trust_response2.dart';

/// Creates a Microsoft AD Domain in a given project. Operation
/// Auto-naming is currently not supported for this resource.
class Domain3 extends CustomResource {
  /// Optional. Configuration for audit logs. True if audit logs are enabled, else false. Default is audit logs disabled.
  late final Output<bool> auditLogsEnabled;

  /// Optional. The full names of the Google Compute Engine [networks](/compute/docs/networks-and-firewalls#networks) to which the instance is connected. Network can be added using UpdateDomain later. Domain is only available on network part of authorized_networks. Caller needs to make sure that CIDR subnets do not overlap between networks, else domain creation will fail.
  late final Output<List<String>> authorizedNetworks;

  /// The time the instance was created. Synthetic field is populated automatically by CCFE. go/ccfe-synthetic-field-user-guide
  late final Output<String> createTime;

  /// The fully qualified domain name. e.g. mydomain.myorganization.com, with the following restrictions: * Must contain only lowercase letters, numbers, periods and hyphens. * Must start with a letter. * Must contain between 2-64 characters. * Must end with a number or a letter. * Must not start with period. * Must be unique within the project. * First segment length (mydomain form example above) shouldn't exceed 15 chars. * The last segment cannot be fully numeric.
  late final Output<String?> domainName;

  /// Fully-qualified domain name of the exposed domain used by clients to connect to the service. Similar to what would be chosen for an Active Directory that is set up on an internal network.
  late final Output<String> fqdn;

  /// Optional. Resource labels to represent user provided metadata
  late final Output<Map<String, String>> labels;

  /// Locations where domain needs to be provisioned. regions e.g. us-west1 or us-east4 Service supports up to 4 locations at once. Each location will use a /26 block.
  late final Output<List<String>> locations;

  /// Optional. Name of customer-visible admin used to perform Active Directory operations. If not specified `setupadmin` would be used.
  late final Output<String> managedIdentitiesAdminName;

  /// Unique name of the domain in this scope including projects and location using the form: `projects/{project_id}/locations/global/domains/{domain_name}`.
  late final Output<String> name;
  late final Output<String> project;

  /// The CIDR range of internal addresses that are reserved for this domain. Reserved networks must be /24 or larger. Ranges must be unique and non-overlapping with existing subnets in [Domain].[authorized_networks].
  late final Output<String> reservedIpRange;

  /// The current state of this domain.
  late final Output<String> state;

  /// Additional information about the current status of this domain, if available.
  late final Output<String> statusMessage;

  /// The current trusts associated with the domain.
  late final Output<List<TrustResponse2>> trusts;

  /// Last update time. Synthetic field is populated automatically by CCFE.
  late final Output<String> updateTime;

  Domain3(
    String name, {
    DomainArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:managedidentities/v1alpha1:Domain',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.auditLogsEnabled = Output.createUnknown<bool>();
    this.authorizedNetworks = Output.createUnknown<List<String>>();
    this.createTime = Output.createUnknown<String>();
    this.domainName = Output.createUnknown<String?>();
    this.fqdn = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.locations = Output.createUnknown<List<String>>();
    this.managedIdentitiesAdminName = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.reservedIpRange = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.statusMessage = Output.createUnknown<String>();
    this.trusts = Output.createUnknown<List<TrustResponse2>>();
    this.updateTime = Output.createUnknown<String>();
  }
}

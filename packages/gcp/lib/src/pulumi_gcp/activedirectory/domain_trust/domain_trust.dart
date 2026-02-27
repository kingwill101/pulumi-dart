import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_trust_args.dart';

/// Adds a trust between Active Directory domains
///
///
/// To get more information about DomainTrust, see:
///
/// * [API documentation](https://cloud.google.com/managed-microsoft-ad/reference/rest/v1/projects.locations.global.domains/attachTrust)
/// * How-to Guides
/// * [Active Directory Trust](https://cloud.google.com/managed-microsoft-ad/docs/create-one-way-trust)
///
///
///
/// ## Example Usage
///
/// ### Active Directory Domain Trust Basic
///
///
///
///
/// ## Import
///
/// DomainTrust can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/domains/{{domain}}/{{target_domain_name}}`
///
/// * `{{project}}/{{domain}}/{{target_domain_name}}`
///
/// * `{{domain}}/{{target_domain_name}}`
///
/// When using the `pulumi import` command, DomainTrust can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:activedirectory/domainTrust:DomainTrust default projects/{{project}}/locations/global/domains/{{domain}}/{{target_domain_name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:activedirectory/domainTrust:DomainTrust default {{project}}/{{domain}}/{{target_domain_name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:activedirectory/domainTrust:DomainTrust default {{domain}}/{{target_domain_name}}
/// ```
class DomainTrust extends pulumi.CustomResource {
  /// The fully qualified domain name. e.g. mydomain.myorganization.com, with the restrictions
  /// of https://cloud.google.com/managed-microsoft-ad/reference/rest/v1/projects.locations.global.domains.
  late final pulumi.Output<String> domain;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Whether the trusted side has forest/domain wide access or selective access to an approved set of resources.
  late final pulumi.Output<bool?> selectiveAuthentication;

  /// The target DNS server IP addresses which can resolve the remote domain involved in the trust.
  late final pulumi.Output<List<String>> targetDnsIpAddresses;

  /// The fully qualified target domain name which will be in trust with the current domain.
  late final pulumi.Output<String> targetDomainName;

  /// The trust direction, which decides if the current domain is trusted, trusting, or both.
  /// Possible values are: `INBOUND`, `OUTBOUND`, `BIDIRECTIONAL`.
  late final pulumi.Output<String> trustDirection;

  /// The trust secret used for the handshake with the target domain. This will not be stored.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String> trustHandshakeSecret;

  /// The type of trust represented by the trust resource.
  /// Possible values are: `FOREST`, `EXTERNAL`.
  late final pulumi.Output<String> trustType;

  DomainTrust(
    String name, {
    DomainTrustArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:activedirectory/domainTrust:DomainTrust',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.domain = registerOutput<String>('domain');
    this.project = registerOutput<String>('project');
    this.selectiveAuthentication =
        registerOutput<bool?>('selectiveAuthentication');
    this.targetDnsIpAddresses =
        registerOutput<List<String>>('targetDnsIpAddresses');
    this.targetDomainName = registerOutput<String>('targetDomainName');
    this.trustDirection = registerOutput<String>('trustDirection');
    this.trustHandshakeSecret = registerOutput<String>('trustHandshakeSecret');
    this.trustType = registerOutput<String>('trustType');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_args.dart';
import 'domain_listen.dart';
import 'domain_redirect.dart';

/// Provides a WAFV3 Domain resource.
///
///
///
/// For information about WAFV3 Domain and how to use it, see [What is Domain](https://www.alibabacloud.com/help/en/web-application-firewall/latest/api-waf-openapi-2021-10-01-createdomain).
///
/// > **NOTE:** Available since v1.200.0.
///
/// ## Import
///
/// WAFV3 Domain can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:wafv3/domain:Domain example <instance_id>:<domain>
/// ```
class Domain extends pulumi.CustomResource {
  late final pulumi.Output<String?> accessType;
  /// The CNAME assigned by WAF to the domain name.
  late final pulumi.Output<String> cname;
  /// The name of the domain name to query.
  late final pulumi.Output<String> domain;
  /// The domain ID.
  late final pulumi.Output<String> domainId;
  /// The ID of the Web Application Firewall (WAF) instance.
  late final pulumi.Output<String> instanceId;
  /// Configure listening information. See `listen` below.
  late final pulumi.Output<DomainListen> listen;
  /// Configure forwarding information. See `redirect` below.
  late final pulumi.Output<DomainRedirect> redirect;
  /// The ID of the Alibaba Cloud resource group.
  late final pulumi.Output<String> resourceManagerResourceGroupId;
  /// The status of the domain name.
  late final pulumi.Output<int> status;
  /// The tags. You can specify up to 20 tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Domain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Domain]. {@macro pulumi_wafv3_domain_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Domain(
    String name, {
    DomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:wafv3/domain:Domain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessType = registerOutput<String?>('accessType');
    this.cname = registerOutput<String>('cname');
    this.domain = registerOutput<String>('domain');
    this.domainId = registerOutput<String>('domainId');
    this.instanceId = registerOutput<String>('instanceId');
    this.listen = registerOutput<DomainListen>('listen');
    this.redirect = registerOutput<DomainRedirect>('redirect');
    this.resourceManagerResourceGroupId = registerOutput<String>('resourceManagerResourceGroupId');
    this.status = registerOutput<int>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}

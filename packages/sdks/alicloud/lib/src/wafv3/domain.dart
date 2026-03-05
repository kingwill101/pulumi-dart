import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_args.dart';
import 'domain_listen.dart';
import 'domain_redirect.dart';
import 'domain_state.dart';

/// Provides a WAFV3 Domain resource.
///
///
///
/// For information about WAFV3 Domain and how to use it, see [What is Domain](https://www.alibabacloud.com/help/en/web-application-firewall/latest/api-waf-openapi-2021-10-01-createdomain).
///
/// &gt; **NOTE:** Available since v1.200.0.
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
    accessType = registerOutput<String?>('accessType');
    cname = registerOutput<String>('cname');
    domain = registerOutput<String>('domain');
    domainId = registerOutput<String>('domainId');
    instanceId = registerOutput<String>('instanceId');
    listen = registerOutput<DomainListen>('listen', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainListen.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    redirect = registerOutput<DomainRedirect>('redirect', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainRedirect.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceManagerResourceGroupId = registerOutput<String>('resourceManagerResourceGroupId');
    status = registerOutput<int>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Domain] resource's state with the given [name] and [id].
  static Domain get(
    String name,
    pulumi.Input<String> id, {
    DomainState? state,
  }) {
    return Domain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Domain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:wafv3/domain:Domain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessType = registerOutput<String?>('accessType');
    cname = registerOutput<String>('cname');
    domain = registerOutput<String>('domain');
    domainId = registerOutput<String>('domainId');
    instanceId = registerOutput<String>('instanceId');
    listen = registerOutput<DomainListen>('listen', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainListen.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    redirect = registerOutput<DomainRedirect>('redirect', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainRedirect.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceManagerResourceGroupId = registerOutput<String>('resourceManagerResourceGroupId');
    status = registerOutput<int>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}

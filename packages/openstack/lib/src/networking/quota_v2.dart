import 'package:pulumi/pulumi.dart' as pulumi;
import 'quota_v2_args.dart';

/// Manages a V2 networking quota resource within OpenStack.
///
/// > **Note:** This usually requires admin privileges.
///
/// > **Note:** This resource has a no-op deletion so no actual actions will be done against the OpenStack API
/// in case of delete call.
///
/// ## Import
///
/// Quotas can be imported using the `project_id/region_name`, e.g.
///
/// ```sh
/// $ pulumi import openstack:networking/quotaV2:QuotaV2 quota_1 2a0f2240-c5e6-41de-896d-e80d97428d6b/region_1
/// ```
class QuotaV2 extends pulumi.CustomResource {
  /// Quota value for floating IPs. Changing this updates the
  /// existing quota.
  late final pulumi.Output<int> floatingip;
  /// Quota value for networks. Changing this updates the
  /// existing quota.
  late final pulumi.Output<int> network;
  /// Quota value for ports. Changing this updates the
  /// existing quota.
  late final pulumi.Output<int> port;
  /// ID of the project to manage quota. Changing this
  /// creates new quota.
  late final pulumi.Output<String> projectId;
  /// Quota value for RBAC policies.
  /// Changing this updates the existing quota.
  late final pulumi.Output<int> rbacPolicy;
  /// The region in which to create the quota. If
  /// omitted, the `region` argument of the provider is used. Changing this
  /// creates new quota.
  late final pulumi.Output<String> region;
  /// Quota value for routers. Changing this updates the
  /// existing quota.
  late final pulumi.Output<int> router;
  /// Quota value for security groups. Changing
  /// this updates the existing quota.
  late final pulumi.Output<int> securityGroup;
  /// Quota value for security group rules.
  /// Changing this updates the existing quota.
  late final pulumi.Output<int> securityGroupRule;
  /// Quota value for subnets. Changing
  /// this updates the existing quota.
  late final pulumi.Output<int> subnet;
  /// Quota value for subnetpools.
  /// Changing this updates the existing quota.
  late final pulumi.Output<int> subnetpool;

  /// Creates a new [QuotaV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [QuotaV2]. {@macro pulumi_networking_quota_v2_quota_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  QuotaV2(
    String name, {
    QuotaV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:networking/quotaV2:QuotaV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.floatingip = registerOutput<int>('floatingip');
    this.network = registerOutput<int>('network');
    this.port = registerOutput<int>('port');
    this.projectId = registerOutput<String>('projectId');
    this.rbacPolicy = registerOutput<int>('rbacPolicy');
    this.region = registerOutput<String>('region');
    this.router = registerOutput<int>('router');
    this.securityGroup = registerOutput<int>('securityGroup');
    this.securityGroupRule = registerOutput<int>('securityGroupRule');
    this.subnet = registerOutput<int>('subnet');
    this.subnetpool = registerOutput<int>('subnetpool');
  }
}

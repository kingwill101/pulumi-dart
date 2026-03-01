import 'package:pulumi/pulumi.dart' as pulumi;
import 'quota_set_v2_args.dart';

/// Manages a V2 compute quotaset resource within OpenStack.
///
/// > **Note:** This usually requires admin privileges.
///
/// > **Note:** This resource has a no-op deletion so no actual actions will be done against the OpenStack API
/// in case of delete call.
///
/// ## Import
///
/// Quotasets can be imported using the `project_id/region_name`, e.g.
///
/// ```sh
/// $ pulumi import openstack:compute/quotaSetV2:QuotaSetV2 quotaset_1 2a0f2240-c5e6-41de-896d-e80d97428d6b/region_1
/// ```
class QuotaSetV2 extends pulumi.CustomResource {
  /// Quota value for cores.
  /// Changing this updates the existing quotaset.
  late final pulumi.Output<int> cores;
  /// Quota value for fixed IPs.
  /// Changing this updates the existing quotaset.
  late final pulumi.Output<int> fixedIps;
  /// Quota value for floating IPs.
  /// Changing this updates the existing quotaset.
  late final pulumi.Output<int> floatingIps;
  /// Quota value for content bytes
  /// of injected files. Changing this updates the existing quotaset.
  late final pulumi.Output<int> injectedFileContentBytes;
  /// Quota value for path bytes of
  /// injected files. Changing this updates the existing quotaset.
  late final pulumi.Output<int> injectedFilePathBytes;
  /// Quota value for injected files.
  /// Changing this updates the existing quotaset.
  late final pulumi.Output<int> injectedFiles;
  /// Quota value for instances.
  /// Changing this updates the existing quotaset.
  late final pulumi.Output<int> instances;
  /// Quota value for key pairs.
  /// Changing this updates the existing quotaset.
  late final pulumi.Output<int> keyPairs;
  /// Quota value for metadata items.
  /// Changing this updates the existing quotaset.
  late final pulumi.Output<int> metadataItems;
  /// ID of the project to manage quotas.
  /// Changing this creates a new quotaset.
  late final pulumi.Output<String> projectId;
  /// Quota value for RAM.
  /// Changing this updates the existing quotaset.
  late final pulumi.Output<int> ram;
  /// The region in which to create the volume. If
  /// omitted, the `region` argument of the provider is used. Changing this
  /// creates a new quotaset.
  late final pulumi.Output<String> region;
  /// Quota value for security group rules.
  /// Changing this updates the existing quotaset.
  late final pulumi.Output<int> securityGroupRules;
  /// Quota value for security groups.
  /// Changing this updates the existing quotaset.
  late final pulumi.Output<int> securityGroups;
  /// Quota value for server groups members.
  /// Changing this updates the existing quotaset.
  late final pulumi.Output<int> serverGroupMembers;
  /// Quota value for server groups.
  /// Changing this updates the existing quotaset.
  late final pulumi.Output<int> serverGroups;

  /// Creates a new [QuotaSetV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [QuotaSetV2]. {@macro pulumi_compute_quota_set_v2_quota_set_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  QuotaSetV2(
    String name, {
    QuotaSetV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:compute/quotaSetV2:QuotaSetV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cores = registerOutput<int>('cores');
    this.fixedIps = registerOutput<int>('fixedIps');
    this.floatingIps = registerOutput<int>('floatingIps');
    this.injectedFileContentBytes = registerOutput<int>('injectedFileContentBytes');
    this.injectedFilePathBytes = registerOutput<int>('injectedFilePathBytes');
    this.injectedFiles = registerOutput<int>('injectedFiles');
    this.instances = registerOutput<int>('instances');
    this.keyPairs = registerOutput<int>('keyPairs');
    this.metadataItems = registerOutput<int>('metadataItems');
    this.projectId = registerOutput<String>('projectId');
    this.ram = registerOutput<int>('ram');
    this.region = registerOutput<String>('region');
    this.securityGroupRules = registerOutput<int>('securityGroupRules');
    this.securityGroups = registerOutput<int>('securityGroups');
    this.serverGroupMembers = registerOutput<int>('serverGroupMembers');
    this.serverGroups = registerOutput<int>('serverGroups');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'quote_set_v3_args.dart';

/// Manages a V3 block storage quotaset resource within OpenStack.
///
/// > **Note:** This usually requires admin privileges.
///
/// > **Note:** This resource has a no-op deletion so no actual actions will be done against the OpenStack API
/// in case of delete call.
///
/// ## Import
///
/// Quotasets can be imported using the `project_id/region`, e.g.
///
/// ```sh
/// $ pulumi import openstack:blockstorage/quoteSetV3:QuoteSetV3 quotaset_1 2a0f2240-c5e6-41de-896d-e80d97428d6b/region_1
/// ```
class QuoteSetV3 extends pulumi.CustomResource {
  /// Quota value for backup gigabytes. Changing
  /// this updates the existing quotaset.
  late final pulumi.Output<int> backupGigabytes;
  /// Quota value for backups. Changing this updates the
  /// existing quotaset.
  late final pulumi.Output<int> backups;
  /// Quota value for gigabytes. Changing this updates the
  /// existing quotaset.
  late final pulumi.Output<int> gigabytes;
  /// Quota value for groups. Changing this updates the
  /// existing quotaset.
  late final pulumi.Output<int> groups;
  /// Quota value for gigabytes per volume .
  /// Changing this updates the existing quotaset.
  late final pulumi.Output<int> perVolumeGigabytes;
  /// ID of the project to manage quotas. Changing this
  /// creates a new quotaset.
  late final pulumi.Output<String> projectId;
  /// The region in which to create the volume. If
  /// omitted, the `region` argument of the provider is used. Changing this
  /// creates a new quotaset.
  late final pulumi.Output<String> region;
  /// Quota value for snapshots. Changing this updates the
  /// existing quotaset.
  late final pulumi.Output<int> snapshots;
  /// Key/Value pairs for setting quota for
  /// volumes types. Possible keys are `snapshots_<volume_type_name>`,
  /// `volumes_<volume_type_name>` and `gigabytes_<volume_type_name>`.
  late final pulumi.Output<Map<String, String>?> volumeTypeQuota;
  /// Quota value for volumes. Changing this updates the
  /// existing quotaset.
  late final pulumi.Output<int> volumes;

  /// Creates a new [QuoteSetV3].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [QuoteSetV3]. {@macro pulumi_blockstorage_quote_set_v3_quote_set_v3_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  QuoteSetV3(
    String name, {
    QuoteSetV3Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:blockstorage/quoteSetV3:QuoteSetV3',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupGigabytes = registerOutput<int>('backupGigabytes');
    this.backups = registerOutput<int>('backups');
    this.gigabytes = registerOutput<int>('gigabytes');
    this.groups = registerOutput<int>('groups');
    this.perVolumeGigabytes = registerOutput<int>('perVolumeGigabytes');
    this.projectId = registerOutput<String>('projectId');
    this.region = registerOutput<String>('region');
    this.snapshots = registerOutput<int>('snapshots');
    this.volumeTypeQuota = registerOutput<Map<String, String>?>('volumeTypeQuota');
    this.volumes = registerOutput<int>('volumes');
  }
}

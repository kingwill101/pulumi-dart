import 'package:pulumi/pulumi.dart';
import 'nfs_export_options_response2.dart';
import 'share_args.dart';

/// Creates a share.
/// Auto-naming is currently not supported for this resource.
class Share extends CustomResource {
  /// Immutable. Full name of the Cloud Filestore Backup resource that this Share is restored from, in the format of projects/{project_id}/locations/{location_id}/backups/{backup_id}. Empty, if the Share is created from scratch and not restored from a backup.
  late final Output<String> backup;

  /// File share capacity in gigabytes (GB). Filestore defines 1 GB as 1024^3 bytes. Must be greater than 0.
  late final Output<String> capacityGb;

  /// The time when the share was created.
  late final Output<String> createTime;

  /// A description of the share with 2048 characters or less. Requests with longer descriptions will be rejected.
  late final Output<String> description;
  late final Output<String> instanceId;

  /// Resource labels to represent user provided metadata.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The mount name of the share. Must be 63 characters or less and consist of uppercase or lowercase letters, numbers, and underscores.
  late final Output<String> mountName;

  /// The resource name of the share, in the format `projects/{project_id}/locations/{location_id}/instances/{instance_id}/shares/{share_id}`.
  late final Output<String> name;

  /// Nfs Export Options. There is a limit of 10 export options per file share.
  late final Output<List<NfsExportOptionsResponse2>> nfsExportOptions;
  late final Output<String> project;

  /// Required. The ID to use for the share. The ID must be unique within the specified instance. This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
  late final Output<String> shareId;

  /// The share state.
  late final Output<String> state;

  Share(
    String name, {
    ShareArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:file/v1beta1:Share',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.backup = Output.createUnknown<String>();
    this.capacityGb = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.instanceId = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.mountName = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.nfsExportOptions =
        Output.createUnknown<List<NfsExportOptionsResponse2>>();
    this.project = Output.createUnknown<String>();
    this.shareId = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
  }
}

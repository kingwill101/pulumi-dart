import 'package:pulumi/pulumi.dart' as pulumi;
import 'nfs_export_options_response_file_v1beta1.dart';
import 'share_args.dart';

/// Creates a share.
/// Auto-naming is currently not supported for this resource.
class Share extends pulumi.CustomResource {
  /// Immutable. Full name of the Cloud Filestore Backup resource that this Share is restored from, in the format of projects/{project_id}/locations/{location_id}/backups/{backup_id}. Empty, if the Share is created from scratch and not restored from a backup.
  late final pulumi.Output<String> backup;
  /// File share capacity in gigabytes (GB). Filestore defines 1 GB as 1024^3 bytes. Must be greater than 0.
  late final pulumi.Output<String> capacityGb;
  /// The time when the share was created.
  late final pulumi.Output<String> createTime;
  /// A description of the share with 2048 characters or less. Requests with longer descriptions will be rejected.
  late final pulumi.Output<String> description;
  late final pulumi.Output<String> instanceId;
  /// Resource labels to represent user provided metadata.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// The mount name of the share. Must be 63 characters or less and consist of uppercase or lowercase letters, numbers, and underscores.
  late final pulumi.Output<String> mountName;
  /// The resource name of the share, in the format `projects/{project_id}/locations/{location_id}/instances/{instance_id}/shares/{share_id}`.
  late final pulumi.Output<String> name;
  /// Nfs Export Options. There is a limit of 10 export options per file share.
  late final pulumi.Output<List<NfsExportOptionsResponseFileV1beta1>> nfsExportOptions;
  late final pulumi.Output<String> project;
  /// Required. The ID to use for the share. The ID must be unique within the specified instance. This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
  late final pulumi.Output<String> shareId;
  /// The share state.
  late final pulumi.Output<String> state;

  /// Creates a new [Share].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Share]. {@macro pulumi_file_v1beta1_share_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Share(
    String name, {
    ShareArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:file/v1beta1:Share',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backup = registerOutput<String>('backup');
    this.capacityGb = registerOutput<String>('capacityGb');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.instanceId = registerOutput<String>('instanceId');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.mountName = registerOutput<String>('mountName');
    this.name = registerOutput<String>('name');
    this.nfsExportOptions = registerOutput<List<NfsExportOptionsResponseFileV1beta1>>('nfsExportOptions');
    this.project = registerOutput<String>('project');
    this.shareId = registerOutput<String>('shareId');
    this.state = registerOutput<String>('state');
  }
}

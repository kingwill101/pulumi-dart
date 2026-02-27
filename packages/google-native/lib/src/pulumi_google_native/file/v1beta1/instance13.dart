import 'package:pulumi/pulumi.dart' hide Config;
import 'directory_services_config_response.dart';
import 'file_share_config_response2.dart';
import 'instance_args13.dart';
import 'network_config_response15.dart';

/// Creates an instance. When creating from a backup, the capacity of the new instance needs to be equal to or larger than the capacity of the backup (and also equal to or larger than the minimum capacity of the tier).
/// Auto-naming is currently not supported for this resource.
class Instance13 extends CustomResource {
  /// The storage capacity of the instance in gigabytes (GB = 1024^3 bytes). This capacity can be increased up to `max_capacity_gb` GB in multipliers of `capacity_step_size_gb` GB.
  late final Output<String> capacityGb;

  /// The increase/decrease capacity step size.
  late final Output<String> capacityStepSizeGb;

  /// The time when the instance was created.
  late final Output<String> createTime;

  /// The description of the instance (2048 characters or less).
  late final Output<String> description;

  /// Directory Services configuration for Kerberos-based authentication. Should only be set if protocol is "NFS_V4_1".
  late final Output<DirectoryServicesConfigResponse> directoryServices;

  /// Server-specified ETag for the instance resource to prevent simultaneous updates from overwriting each other.
  late final Output<String> etag;

  /// File system shares on the instance. For this version, only a single file share is supported.
  late final Output<List<FileShareConfigResponse2>> fileShares;

  /// Required. The ID of the instance to create. The ID must be unique within the specified project and location. This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
  late final Output<String> instanceId;

  /// KMS key name used for data encryption.
  late final Output<String> kmsKeyName;

  /// Resource labels to represent user provided metadata.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The max capacity of the instance.
  late final Output<String> maxCapacityGb;

  /// The max number of shares allowed.
  late final Output<String> maxShareCount;

  /// Indicates whether this instance uses a multi-share configuration with which it can have more than one file-share or none at all. File-shares are added, updated and removed through the separate file-share APIs.
  late final Output<bool> multiShareEnabled;

  /// The resource name of the instance, in the format `projects/{project_id}/locations/{location_id}/instances/{instance_id}`.
  late final Output<String> name;

  /// VPC networks to which the instance is connected. For this version, only a single network is supported.
  late final Output<List<NetworkConfigResponse15>> networks;
  late final Output<String> project;

  /// Immutable. The protocol indicates the access protocol for all shares in the instance. This field is immutable and it cannot be changed after the instance has been created. Default value: `NFS_V3`.
  late final Output<String> protocol;

  /// Reserved for future use.
  late final Output<bool> satisfiesPzs;

  /// The instance state.
  late final Output<String> state;

  /// Additional information about the instance state, if available.
  late final Output<String> statusMessage;

  /// Field indicates all the reasons the instance is in "SUSPENDED" state.
  late final Output<List<String>> suspensionReasons;

  /// The service tier of the instance.
  late final Output<String> tier;

  Instance13(
    String name, {
    InstanceArgs13? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:file/v1beta1:Instance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.capacityGb = registerOutput<String>('capacityGb');
    this.capacityStepSizeGb = registerOutput<String>('capacityStepSizeGb');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.directoryServices =
        registerOutput<DirectoryServicesConfigResponse>('directoryServices');
    this.etag = registerOutput<String>('etag');
    this.fileShares =
        registerOutput<List<FileShareConfigResponse2>>('fileShares');
    this.instanceId = registerOutput<String>('instanceId');
    this.kmsKeyName = registerOutput<String>('kmsKeyName');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.maxCapacityGb = registerOutput<String>('maxCapacityGb');
    this.maxShareCount = registerOutput<String>('maxShareCount');
    this.multiShareEnabled = registerOutput<bool>('multiShareEnabled');
    this.name = registerOutput<String>('name');
    this.networks = registerOutput<List<NetworkConfigResponse15>>('networks');
    this.project = registerOutput<String>('project');
    this.protocol = registerOutput<String>('protocol');
    this.satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    this.state = registerOutput<String>('state');
    this.statusMessage = registerOutput<String>('statusMessage');
    this.suspensionReasons = registerOutput<List<String>>('suspensionReasons');
    this.tier = registerOutput<String>('tier');
  }
}

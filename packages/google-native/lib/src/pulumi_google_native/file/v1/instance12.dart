import 'package:pulumi/pulumi.dart';
import 'file_share_config_response.dart';
import 'instance_args12.dart';
import 'network_config_response14.dart';

/// Creates an instance. When creating from a backup, the capacity of the new instance needs to be equal to or larger than the capacity of the backup (and also equal to or larger than the minimum capacity of the tier).
/// Auto-naming is currently not supported for this resource.
class Instance12 extends CustomResource {
  /// The time when the instance was created.
  late final Output<String> createTime;

  /// The description of the instance (2048 characters or less).
  late final Output<String> description;

  /// Server-specified ETag for the instance resource to prevent simultaneous updates from overwriting each other.
  late final Output<String> etag;

  /// File system shares on the instance. For this version, only a single file share is supported.
  late final Output<List<FileShareConfigResponse>> fileShares;

  /// Required. The name of the instance to create. The name must be unique for the specified project and location.
  late final Output<String> instanceId;

  /// KMS key name used for data encryption.
  late final Output<String> kmsKeyName;

  /// Resource labels to represent user provided metadata.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The resource name of the instance, in the format `projects/{project}/locations/{location}/instances/{instance}`.
  late final Output<String> name;

  /// VPC networks to which the instance is connected. For this version, only a single network is supported.
  late final Output<List<NetworkConfigResponse14>> networks;
  late final Output<String> project;

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

  Instance12(
    String name, {
    InstanceArgs12? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:file/v1:Instance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.fileShares = Output.createUnknown<List<FileShareConfigResponse>>();
    this.instanceId = Output.createUnknown<String>();
    this.kmsKeyName = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.networks = Output.createUnknown<List<NetworkConfigResponse14>>();
    this.project = Output.createUnknown<String>();
    this.satisfiesPzs = Output.createUnknown<bool>();
    this.state = Output.createUnknown<String>();
    this.statusMessage = Output.createUnknown<String>();
    this.suspensionReasons = Output.createUnknown<List<String>>();
    this.tier = Output.createUnknown<String>();
  }
}

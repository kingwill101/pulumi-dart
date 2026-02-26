import 'package:pulumi/pulumi.dart';
import 'instance_config_response.dart';
import 'network_config_response5.dart';
import 'provisioning_config_args.dart';
import 'volume_config_response.dart';

/// Create new ProvisioningConfig.
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class ProvisioningConfig extends CustomResource {
  /// URI to Cloud Console UI view of this provisioning config.
  late final Output<String> cloudConsoleUri;

  /// Optional. The user-defined identifier of the provisioning config.
  late final Output<String> customId;

  /// Optional. Email provided to send a confirmation with provisioning config to.
  late final Output<String> email;

  /// A service account to enable customers to access instance credentials upon handover.
  late final Output<String> handoverServiceAccount;

  /// Instances to be created.
  late final Output<List<InstanceConfigResponse>> instances;
  late final Output<String> location;

  /// The system-generated name of the provisioning config. This follows the UUID format.
  late final Output<String> name;

  /// Networks to be created.
  late final Output<List<NetworkConfigResponse5>> networks;

  /// Optional. Pod name. Pod is an independent part of infrastructure. Instance can be connected to the assets (networks, volumes, nfsshares) allocated in the same pod only.
  late final Output<String> pod;
  late final Output<String> project;

  /// State of ProvisioningConfig.
  late final Output<String> state;

  /// Optional status messages associated with the FAILED state.
  late final Output<String> statusMessage;

  /// A generated ticket id to track provisioning request.
  late final Output<String> ticketId;

  /// Last update timestamp.
  late final Output<String> updateTime;

  /// Volumes to be created.
  late final Output<List<VolumeConfigResponse>> volumes;

  /// If true, VPC SC is enabled for the cluster.
  late final Output<bool> vpcScEnabled;

  ProvisioningConfig(
    String name, {
    ProvisioningConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:baremetalsolution/v2:ProvisioningConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.cloudConsoleUri = registerOutput<String>('cloudConsoleUri');
    this.customId = registerOutput<String>('customId');
    this.email = registerOutput<String>('email');
    this.handoverServiceAccount =
        registerOutput<String>('handoverServiceAccount');
    this.instances = registerOutput<List<InstanceConfigResponse>>('instances');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.networks = registerOutput<List<NetworkConfigResponse5>>('networks');
    this.pod = registerOutput<String>('pod');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.statusMessage = registerOutput<String>('statusMessage');
    this.ticketId = registerOutput<String>('ticketId');
    this.updateTime = registerOutput<String>('updateTime');
    this.volumes = registerOutput<List<VolumeConfigResponse>>('volumes');
    this.vpcScEnabled = registerOutput<bool>('vpcScEnabled');
  }
}

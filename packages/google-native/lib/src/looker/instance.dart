import 'package:pulumi/pulumi.dart' as pulumi;
import 'admin_settings_response.dart';
import 'custom_domain_response.dart';
import 'deny_maintenance_period_response.dart';
import 'encryption_config_response.dart';
import 'instance_args.dart';
import 'maintenance_schedule_response.dart';
import 'maintenance_window_response.dart';
import 'oauth_config_response.dart';
import 'user_metadata_response.dart';

/// Creates a new Instance in a given project and location.
/// Auto-naming is currently not supported for this resource.
class Instance extends pulumi.CustomResource {
  /// Looker Instance Admin settings.
  late final pulumi.Output<AdminSettingsResponse> adminSettings;

  /// Network name in the consumer project. Format: `projects/{project}/global/networks/{network}`. Note that the consumer network may be in a different GCP project than the consumer project that is hosting the Looker Instance.
  late final pulumi.Output<String> consumerNetwork;

  /// The time when the Looker instance provisioning was first requested.
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<CustomDomainResponse> customDomain;

  /// Maintenance denial period for this instance.
  late final pulumi.Output<DenyMaintenancePeriodResponse> denyMaintenancePeriod;

  /// Public Egress IP (IPv4).
  late final pulumi.Output<String> egressPublicIp;

  /// Encryption configuration (CMEK). Only set if CMEK has been enabled on the instance.
  late final pulumi.Output<EncryptionConfigResponse> encryptionConfig;

  /// Private Ingress IP (IPv4).
  late final pulumi.Output<String> ingressPrivateIp;

  /// Public Ingress IP (IPv4).
  late final pulumi.Output<String> ingressPublicIp;

  /// Required. The unique instance identifier. Must contain only lowercase letters, numbers, or hyphens, with the first character a letter and the last a letter or a number. 63 characters maximum.
  late final pulumi.Output<String> instanceId;

  /// Last computed maintenance denial period for this instance.
  late final pulumi.Output<DenyMaintenancePeriodResponse>
  lastDenyMaintenancePeriod;
  late final pulumi.Output<String> location;

  /// Looker instance URI which can be used to access the Looker Instance UI.
  late final pulumi.Output<String> lookerUri;

  /// The Looker version that the instance is using.
  late final pulumi.Output<String> lookerVersion;

  /// Maintenance schedule for this instance.
  late final pulumi.Output<MaintenanceScheduleResponse> maintenanceSchedule;

  /// Maintenance window for this instance.
  late final pulumi.Output<MaintenanceWindowResponse> maintenanceWindow;

  /// Format: `projects/{project}/locations/{location}/instances/{instance}`.
  late final pulumi.Output<String> name;

  /// Looker instance OAuth login settings.
  late final pulumi.Output<OAuthConfigResponse> oauthConfig;

  /// Platform edition.
  late final pulumi.Output<String> platformEdition;

  /// Whether private IP is enabled on the Looker instance.
  late final pulumi.Output<bool> privateIpEnabled;
  late final pulumi.Output<String> project;

  /// Whether public IP is enabled on the Looker instance.
  late final pulumi.Output<bool> publicIpEnabled;

  /// Name of a reserved IP address range within the Instance.consumer_network, to be used for private services access connection. May or may not be specified in a create request.
  late final pulumi.Output<String> reservedRange;

  /// The state of the instance.
  late final pulumi.Output<String> state;

  /// The time when the Looker instance was last updated.
  late final pulumi.Output<String> updateTime;

  /// User metadata.
  late final pulumi.Output<UserMetadataResponse> userMetadata;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_looker_v1_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:looker/v1:Instance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.adminSettings = registerOutput<AdminSettingsResponse>('adminSettings');
    this.consumerNetwork = registerOutput<String>('consumerNetwork');
    this.createTime = registerOutput<String>('createTime');
    this.customDomain = registerOutput<CustomDomainResponse>('customDomain');
    this.denyMaintenancePeriod = registerOutput<DenyMaintenancePeriodResponse>(
      'denyMaintenancePeriod',
    );
    this.egressPublicIp = registerOutput<String>('egressPublicIp');
    this.encryptionConfig = registerOutput<EncryptionConfigResponse>(
      'encryptionConfig',
    );
    this.ingressPrivateIp = registerOutput<String>('ingressPrivateIp');
    this.ingressPublicIp = registerOutput<String>('ingressPublicIp');
    this.instanceId = registerOutput<String>('instanceId');
    this.lastDenyMaintenancePeriod =
        registerOutput<DenyMaintenancePeriodResponse>(
          'lastDenyMaintenancePeriod',
        );
    this.location = registerOutput<String>('location');
    this.lookerUri = registerOutput<String>('lookerUri');
    this.lookerVersion = registerOutput<String>('lookerVersion');
    this.maintenanceSchedule = registerOutput<MaintenanceScheduleResponse>(
      'maintenanceSchedule',
    );
    this.maintenanceWindow = registerOutput<MaintenanceWindowResponse>(
      'maintenanceWindow',
    );
    this.name = registerOutput<String>('name');
    this.oauthConfig = registerOutput<OAuthConfigResponse>('oauthConfig');
    this.platformEdition = registerOutput<String>('platformEdition');
    this.privateIpEnabled = registerOutput<bool>('privateIpEnabled');
    this.project = registerOutput<String>('project');
    this.publicIpEnabled = registerOutput<bool>('publicIpEnabled');
    this.reservedRange = registerOutput<String>('reservedRange');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
    this.userMetadata = registerOutput<UserMetadataResponse>('userMetadata');
  }
}

import 'package:pulumi/pulumi.dart';
import 'admin_settings_response.dart';
import 'custom_domain_response.dart';
import 'deny_maintenance_period_response.dart';
import 'encryption_config_response10.dart';
import 'instance_args15.dart';
import 'maintenance_schedule_response.dart';
import 'maintenance_window_response5.dart';
import 'oauth_config_response.dart';
import 'user_metadata_response.dart';

/// Creates a new Instance in a given project and location.
/// Auto-naming is currently not supported for this resource.
class Instance15 extends CustomResource {
  /// Looker Instance Admin settings.
  late final Output<AdminSettingsResponse> adminSettings;

  /// Network name in the consumer project. Format: `projects/{project}/global/networks/{network}`. Note that the consumer network may be in a different GCP project than the consumer project that is hosting the Looker Instance.
  late final Output<String> consumerNetwork;

  /// The time when the Looker instance provisioning was first requested.
  late final Output<String> createTime;
  late final Output<CustomDomainResponse> customDomain;

  /// Maintenance denial period for this instance.
  late final Output<DenyMaintenancePeriodResponse> denyMaintenancePeriod;

  /// Public Egress IP (IPv4).
  late final Output<String> egressPublicIp;

  /// Encryption configuration (CMEK). Only set if CMEK has been enabled on the instance.
  late final Output<EncryptionConfigResponse10> encryptionConfig;

  /// Private Ingress IP (IPv4).
  late final Output<String> ingressPrivateIp;

  /// Public Ingress IP (IPv4).
  late final Output<String> ingressPublicIp;

  /// Required. The unique instance identifier. Must contain only lowercase letters, numbers, or hyphens, with the first character a letter and the last a letter or a number. 63 characters maximum.
  late final Output<String> instanceId;

  /// Last computed maintenance denial period for this instance.
  late final Output<DenyMaintenancePeriodResponse> lastDenyMaintenancePeriod;
  late final Output<String> location;

  /// Looker instance URI which can be used to access the Looker Instance UI.
  late final Output<String> lookerUri;

  /// The Looker version that the instance is using.
  late final Output<String> lookerVersion;

  /// Maintenance schedule for this instance.
  late final Output<MaintenanceScheduleResponse> maintenanceSchedule;

  /// Maintenance window for this instance.
  late final Output<MaintenanceWindowResponse5> maintenanceWindow;

  /// Format: `projects/{project}/locations/{location}/instances/{instance}`.
  late final Output<String> name;

  /// Looker instance OAuth login settings.
  late final Output<OAuthConfigResponse> oauthConfig;

  /// Platform edition.
  late final Output<String> platformEdition;

  /// Whether private IP is enabled on the Looker instance.
  late final Output<bool> privateIpEnabled;
  late final Output<String> project;

  /// Whether public IP is enabled on the Looker instance.
  late final Output<bool> publicIpEnabled;

  /// Name of a reserved IP address range within the Instance.consumer_network, to be used for private services access connection. May or may not be specified in a create request.
  late final Output<String> reservedRange;

  /// The state of the instance.
  late final Output<String> state;

  /// The time when the Looker instance was last updated.
  late final Output<String> updateTime;

  /// User metadata.
  late final Output<UserMetadataResponse> userMetadata;

  Instance15(
    String name, {
    InstanceArgs15? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:looker/v1:Instance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.adminSettings = Output.createUnknown<AdminSettingsResponse>();
    this.consumerNetwork = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.customDomain = Output.createUnknown<CustomDomainResponse>();
    this.denyMaintenancePeriod =
        Output.createUnknown<DenyMaintenancePeriodResponse>();
    this.egressPublicIp = Output.createUnknown<String>();
    this.encryptionConfig = Output.createUnknown<EncryptionConfigResponse10>();
    this.ingressPrivateIp = Output.createUnknown<String>();
    this.ingressPublicIp = Output.createUnknown<String>();
    this.instanceId = Output.createUnknown<String>();
    this.lastDenyMaintenancePeriod =
        Output.createUnknown<DenyMaintenancePeriodResponse>();
    this.location = Output.createUnknown<String>();
    this.lookerUri = Output.createUnknown<String>();
    this.lookerVersion = Output.createUnknown<String>();
    this.maintenanceSchedule =
        Output.createUnknown<MaintenanceScheduleResponse>();
    this.maintenanceWindow = Output.createUnknown<MaintenanceWindowResponse5>();
    this.name = Output.createUnknown<String>();
    this.oauthConfig = Output.createUnknown<OAuthConfigResponse>();
    this.platformEdition = Output.createUnknown<String>();
    this.privateIpEnabled = Output.createUnknown<bool>();
    this.project = Output.createUnknown<String>();
    this.publicIpEnabled = Output.createUnknown<bool>();
    this.reservedRange = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
    this.userMetadata = Output.createUnknown<UserMetadataResponse>();
  }
}

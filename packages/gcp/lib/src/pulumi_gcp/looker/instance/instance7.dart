import 'package:pulumi/pulumi.dart';
import '../instance_admin_settings/instance_admin_settings.dart';
import '../instance_controlled_egress_config/instance_controlled_egress_config.dart';
import '../instance_custom_domain/instance_custom_domain.dart';
import '../instance_deny_maintenance_period/instance_deny_maintenance_period.dart';
import '../instance_encryption_config/instance_encryption_config.dart';
import '../instance_maintenance_window/instance_maintenance_window.dart';
import '../instance_oauth_config/instance_oauth_config.dart';
import '../instance_periodic_export_config/instance_periodic_export_config.dart';
import '../instance_psc_config/instance_psc_config.dart';
import '../instance_user_metadata/instance_user_metadata.dart';
import 'instance_args7.dart';

/// A Google Cloud Looker instance.
///
///
/// To get more information about Instance, see:
///
/// * [API documentation](https://cloud.google.com/looker/docs/reference/rest/v1/projects.locations.instances)
/// * How-to Guides
/// * [Configure a Looker (Google Cloud core) instance](https://cloud.google.com/looker/docs/looker-core-instance-setup)
/// * [Create a Looker (Google Cloud core) instance](https://cloud.google.com/looker/docs/looker-core-instance-create)
///
/// ## Example Usage
///
/// ### Looker Instance Basic
///
///
///
/// ### Looker Instance Full
///
///
///
/// ### Looker Instance Fips
///
///
///
/// ### Looker Instance Enterprise Full
///
///
///
/// ### Looker Instance Custom Domain
///
///
///
/// ### Looker Instance Psc
///
///
///
/// ### Looker Instance Force Delete
///
///
///
///
/// ## Import
///
/// Instance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/instances/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Instance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:looker/instance:Instance default projects/{{project}}/locations/{{region}}/instances/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:looker/instance:Instance default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:looker/instance:Instance default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:looker/instance:Instance default {{name}}
/// ```
class Instance7 extends CustomResource {
  /// Looker instance Admin settings.
  /// Structure is documented below.
  late final Output<InstanceAdminSettings?> adminSettings;

  /// Network name in the consumer project in the format of: projects/{project}/global/networks/{network}
  /// Note that the consumer network may be in a different GCP project than the consumer
  /// project that is hosting the Looker Instance.
  late final Output<String?> consumerNetwork;

  /// Controlled egress configuration.
  /// Structure is documented below.
  late final Output<InstanceControlledEgressConfig?> controlledEgressConfig;

  /// Whether controlled egress is enabled on the Looker instance.
  late final Output<bool?> controlledEgressEnabled;

  /// The time the instance was created in RFC3339 UTC "Zulu" format,
  /// accurate to nanoseconds.
  late final Output<String> createTime;

  /// Custom domain settings for a Looker instance.
  /// Structure is documented below.
  late final Output<InstanceCustomDomain?> customDomain;

  /// Policy to determine if the cluster should be deleted forcefully.
  /// If setting deletion_policy = "FORCE", the Looker instance will be deleted regardless
  /// of its nested resources. If set to "DEFAULT", Looker instances that still have
  /// nested resources will return an error. Possible values: DEFAULT, FORCE
  late final Output<String?> deletionPolicy;

  /// Maintenance denial period for this instance.
  /// You must allow at least 14 days of maintenance availability
  /// between any two deny maintenance periods.
  /// Structure is documented below.
  late final Output<InstanceDenyMaintenancePeriod?> denyMaintenancePeriod;

  /// Public Egress IP (IPv4).
  late final Output<String> egressPublicIp;

  /// Looker instance encryption settings.
  /// Structure is documented below.
  late final Output<InstanceEncryptionConfig> encryptionConfig;

  /// FIPS 140-2 Encryption enablement for Looker (Google Cloud Core).
  late final Output<bool?> fipsEnabled;

  /// Gemini enablement for Looker (Google Cloud Core).
  late final Output<bool?> geminiEnabled;

  /// Private Ingress IP (IPv4).
  late final Output<String> ingressPrivateIp;

  /// Public Ingress IP (IPv4).
  late final Output<String> ingressPublicIp;

  /// Looker instance URI which can be used to access the Looker Instance UI.
  late final Output<String> lookerUri;

  /// The Looker version that the instance is using.
  late final Output<String> lookerVersion;

  /// Maintenance window for an instance.
  /// Maintenance of your instance takes place once a month, and will require
  /// your instance to be restarted during updates, which will temporarily
  /// disrupt service.
  /// Structure is documented below.
  late final Output<InstanceMaintenanceWindow?> maintenanceWindow;

  /// The ID of the instance or a fully qualified identifier for the instance.
  late final Output<String> name;

  /// Looker Instance OAuth login settings.
  /// Structure is documented below.
  late final Output<InstanceOauthConfig> oauthConfig;

  /// Configuration for periodic export.
  /// Structure is documented below.
  late final Output<InstancePeriodicExportConfig?> periodicExportConfig;

  /// Platform editions for a Looker instance. Each edition maps to a set of instance features, like its size. Must be one of these values:
  /// - LOOKER_CORE_TRIAL: trial instance (Currently Unavailable)
  /// - LOOKER_CORE_STANDARD: pay as you go standard instance (Currently Unavailable)
  /// - LOOKER_CORE_STANDARD_ANNUAL: subscription standard instance
  /// - LOOKER_CORE_ENTERPRISE_ANNUAL: subscription enterprise instance
  /// - LOOKER_CORE_EMBED_ANNUAL: subscription embed instance
  /// - LOOKER_CORE_NONPROD_STANDARD_ANNUAL: nonprod subscription standard instance
  /// - LOOKER_CORE_NONPROD_ENTERPRISE_ANNUAL: nonprod subscription enterprise instance
  /// - LOOKER_CORE_NONPROD_EMBED_ANNUAL: nonprod subscription embed instance
  /// - LOOKER_CORE_TRIAL_STANDARD: A standard trial edition of Looker (Google Cloud core) product.
  /// - LOOKER_CORE_TRIAL_ENTERPRISE: An enterprise trial edition of Looker (Google Cloud core) product.
  /// - LOOKER_CORE_TRIAL_EMBED: An embed trial edition of Looker (Google Cloud core) product.
  /// Default value is `LOOKER_CORE_TRIAL`.
  /// Possible values are: `LOOKER_CORE_TRIAL`, `LOOKER_CORE_STANDARD`, `LOOKER_CORE_STANDARD_ANNUAL`, `LOOKER_CORE_ENTERPRISE_ANNUAL`, `LOOKER_CORE_EMBED_ANNUAL`, `LOOKER_CORE_NONPROD_STANDARD_ANNUAL`, `LOOKER_CORE_NONPROD_ENTERPRISE_ANNUAL`, `LOOKER_CORE_NONPROD_EMBED_ANNUAL`, `LOOKER_CORE_TRIAL_STANDARD`, `LOOKER_CORE_TRIAL_ENTERPRISE`, `LOOKER_CORE_TRIAL_EMBED`.
  late final Output<String?> platformEdition;

  /// Whether private IP is enabled on the Looker instance.
  late final Output<bool?> privateIpEnabled;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Information for Private Service Connect (PSC) setup for a Looker instance.
  /// Structure is documented below.
  late final Output<InstancePscConfig> pscConfig;

  /// Whether Public Service Connect (PSC) is enabled on the Looker instance
  late final Output<bool?> pscEnabled;

  /// Whether public IP is enabled on the Looker instance.
  late final Output<bool?> publicIpEnabled;

  /// The name of the Looker region of the instance.
  late final Output<String> region;

  /// Name of a reserved IP address range within the consumer network, to be used for
  /// private service access connection. User may or may not specify this in a request.
  late final Output<String?> reservedRange;

  /// The time the instance was updated in RFC3339 UTC "Zulu" format,
  /// accurate to nanoseconds.
  late final Output<String> updateTime;

  /// Metadata about users for a Looker instance.
  /// These settings are only available when platform edition LOOKER_CORE_STANDARD is set.
  /// There are ten Standard and two Developer users included in the cost of the product.
  /// You can allocate additional Standard, Viewer, and Developer users for this instance.
  /// It is an optional step and can be modified later.
  /// With the Standard edition of Looker (Google Cloud core), you can provision up to 50
  /// total users, distributed across Viewer, Standard, and Developer.
  /// Structure is documented below.
  late final Output<InstanceUserMetadata?> userMetadata;

  Instance7(
    String name, {
    InstanceArgs7? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:looker/instance:Instance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.adminSettings =
        registerOutput<InstanceAdminSettings?>('adminSettings');
    this.consumerNetwork = registerOutput<String?>('consumerNetwork');
    this.controlledEgressConfig =
        registerOutput<InstanceControlledEgressConfig?>(
            'controlledEgressConfig');
    this.controlledEgressEnabled =
        registerOutput<bool?>('controlledEgressEnabled');
    this.createTime = registerOutput<String>('createTime');
    this.customDomain = registerOutput<InstanceCustomDomain?>('customDomain');
    this.deletionPolicy = registerOutput<String?>('deletionPolicy');
    this.denyMaintenancePeriod =
        registerOutput<InstanceDenyMaintenancePeriod?>('denyMaintenancePeriod');
    this.egressPublicIp = registerOutput<String>('egressPublicIp');
    this.encryptionConfig =
        registerOutput<InstanceEncryptionConfig>('encryptionConfig');
    this.fipsEnabled = registerOutput<bool?>('fipsEnabled');
    this.geminiEnabled = registerOutput<bool?>('geminiEnabled');
    this.ingressPrivateIp = registerOutput<String>('ingressPrivateIp');
    this.ingressPublicIp = registerOutput<String>('ingressPublicIp');
    this.lookerUri = registerOutput<String>('lookerUri');
    this.lookerVersion = registerOutput<String>('lookerVersion');
    this.maintenanceWindow =
        registerOutput<InstanceMaintenanceWindow?>('maintenanceWindow');
    this.name = registerOutput<String>('name');
    this.oauthConfig = registerOutput<InstanceOauthConfig>('oauthConfig');
    this.periodicExportConfig =
        registerOutput<InstancePeriodicExportConfig?>('periodicExportConfig');
    this.platformEdition = registerOutput<String?>('platformEdition');
    this.privateIpEnabled = registerOutput<bool?>('privateIpEnabled');
    this.project = registerOutput<String>('project');
    this.pscConfig = registerOutput<InstancePscConfig>('pscConfig');
    this.pscEnabled = registerOutput<bool?>('pscEnabled');
    this.publicIpEnabled = registerOutput<bool?>('publicIpEnabled');
    this.region = registerOutput<String>('region');
    this.reservedRange = registerOutput<String?>('reservedRange');
    this.updateTime = registerOutput<String>('updateTime');
    this.userMetadata = registerOutput<InstanceUserMetadata?>('userMetadata');
  }
}

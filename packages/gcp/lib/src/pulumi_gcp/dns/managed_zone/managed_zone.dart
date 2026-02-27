import 'package:pulumi/pulumi.dart';
import '../managed_zone_cloud_logging_config/managed_zone_cloud_logging_config.dart';
import '../managed_zone_dnssec_config/managed_zone_dnssec_config.dart';
import '../managed_zone_forwarding_config/managed_zone_forwarding_config.dart';
import '../managed_zone_peering_config/managed_zone_peering_config.dart';
import '../managed_zone_private_visibility_config/managed_zone_private_visibility_config.dart';
import '../managed_zone_service_directory_config/managed_zone_service_directory_config.dart';
import 'managed_zone_args.dart';

/// A zone is a subtree of the DNS namespace under one administrative
/// responsibility. A ManagedZone is a resource that represents a DNS zone
/// hosted by the Cloud DNS service.
///
///
/// To get more information about ManagedZone, see:
///
/// * [API documentation](https://cloud.google.com/dns/api/v1/managedZones)
/// * How-to Guides
/// * [Managing Zones](https://cloud.google.com/dns/zones/)
///
/// ## Example Usage
///
/// ### Dns Managed Zone Basic
///
///
///
/// ### Dns Managed Zone Private
///
///
///
/// ### Dns Managed Zone Private Forwarding
///
///
///
/// ### Dns Managed Zone Private Forwarding Ipv6
///
///
///
/// ### Dns Managed Zone Private Gke
///
///
///
/// ### Dns Managed Zone Private Peering
///
///
///
/// ### Dns Managed Zone Service Directory
///
///
///
/// ### Dns Managed Zone Cloud Logging
///
///
///
///
/// ## Import
///
/// ManagedZone can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/managedZones/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, ManagedZone can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dns/managedZone:ManagedZone default projects/{{project}}/managedZones/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dns/managedZone:ManagedZone default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dns/managedZone:ManagedZone default {{name}}
/// ```
class ManagedZone extends CustomResource {
  /// Cloud logging configuration
  /// Structure is documented below.
  late final Output<ManagedZoneCloudLoggingConfig> cloudLoggingConfig;

  /// The time that this resource was created on the server.
  /// This is in RFC3339 text format.
  late final Output<String> creationTime;

  /// A textual description field. Defaults to 'Managed by Pulumi'.
  late final Output<String> description;

  /// The DNS name of this managed zone, for instance "example.com.".
  late final Output<String> dnsName;

  /// DNSSEC configuration
  /// Structure is documented below.
  late final Output<ManagedZoneDnssecConfig> dnssecConfig;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Set this true to delete all records in the zone.
  late final Output<bool?> forceDestroy;

  /// The presence for this field indicates that outbound forwarding is enabled
  /// for this zone. The value of this field contains the set of destinations
  /// to forward to.
  /// Structure is documented below.
  late final Output<ManagedZoneForwardingConfig?> forwardingConfig;

  /// A set of key/value label pairs to assign to this ManagedZone.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Unique identifier for the resource; defined by the server.
  late final Output<String> managedZoneId;

  /// User assigned name for this resource.
  /// Must be unique within the project.
  late final Output<String> name;

  /// Delegate your managed_zone to these virtual name servers;
  /// defined by the server
  late final Output<List<String>> nameServers;

  /// The presence of this field indicates that DNS Peering is enabled for this
  /// zone. The value of this field contains the network to peer with.
  /// Structure is documented below.
  late final Output<ManagedZonePeeringConfig?> peeringConfig;

  /// For privately visible zones, the set of Virtual Private Cloud
  /// resources that the zone is visible from. At least one of `gke_clusters` or `networks` must be specified.
  /// Structure is documented below.
  late final Output<ManagedZonePrivateVisibilityConfig?>
      privateVisibilityConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Specifies if this is a managed reverse lookup zone. If true, Cloud DNS will resolve reverse
  /// lookup queries using automatically configured records for VPC resources. This only applies
  /// to networks listed under `private_visibility_config`.
  late final Output<bool?> reverseLookup;

  /// The presence of this field indicates that this zone is backed by Service Directory. The value of this field contains information related to the namespace associated with the zone.
  /// Structure is documented below.
  late final Output<ManagedZoneServiceDirectoryConfig?> serviceDirectoryConfig;

  /// The zone's visibility: public zones are exposed to the Internet,
  /// while private zones are visible only to Virtual Private Cloud resources.
  /// Default value is `public`.
  /// Possible values are: `private`, `public`.
  late final Output<String?> visibility;

  ManagedZone(
    String name, {
    ManagedZoneArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dns/managedZone:ManagedZone',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.cloudLoggingConfig =
        registerOutput<ManagedZoneCloudLoggingConfig>('cloudLoggingConfig');
    this.creationTime = registerOutput<String>('creationTime');
    this.description = registerOutput<String>('description');
    this.dnsName = registerOutput<String>('dnsName');
    this.dnssecConfig = registerOutput<ManagedZoneDnssecConfig>('dnssecConfig');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.forwardingConfig =
        registerOutput<ManagedZoneForwardingConfig?>('forwardingConfig');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.managedZoneId = registerOutput<String>('managedZoneId');
    this.name = registerOutput<String>('name');
    this.nameServers = registerOutput<List<String>>('nameServers');
    this.peeringConfig =
        registerOutput<ManagedZonePeeringConfig?>('peeringConfig');
    this.privateVisibilityConfig =
        registerOutput<ManagedZonePrivateVisibilityConfig?>(
            'privateVisibilityConfig');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reverseLookup = registerOutput<bool?>('reverseLookup');
    this.serviceDirectoryConfig =
        registerOutput<ManagedZoneServiceDirectoryConfig?>(
            'serviceDirectoryConfig');
    this.visibility = registerOutput<String?>('visibility');
  }
}

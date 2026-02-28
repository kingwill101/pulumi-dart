import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_zone_cloud_logging_config_response_dns_v1beta2.dart';
import 'managed_zone_dns_sec_config_response_dns_v1beta2.dart';
import 'managed_zone_dns_v1beta2_args.dart';
import 'managed_zone_forwarding_config_response_dns_v1beta2.dart';
import 'managed_zone_peering_config_response_dns_v1beta2.dart';
import 'managed_zone_private_visibility_config_response_dns_v1beta2.dart';
import 'managed_zone_reverse_lookup_config_response_dns_v1beta2.dart';
import 'managed_zone_service_directory_config_response_dns_v1beta2.dart';

/// Creates a new ManagedZone.
class ManagedZoneDnsV1beta2 extends pulumi.CustomResource {
  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  late final pulumi.Output<String?> clientOperationId;
  late final pulumi.Output<ManagedZoneCloudLoggingConfigResponseDnsV1beta2>
      cloudLoggingConfig;

  /// The time that this resource was created on the server. This is in RFC3339 text format. Output only.
  late final pulumi.Output<String> creationTime;

  /// A mutable string of at most 1024 characters associated with this resource for the user's convenience. Has no effect on the managed zone's function.
  late final pulumi.Output<String> description;

  /// The DNS name of this managed zone, for instance "example.com.".
  late final pulumi.Output<String> dnsName;

  /// DNSSEC configuration.
  late final pulumi.Output<ManagedZoneDnsSecConfigResponseDnsV1beta2>
      dnssecConfig;

  /// The presence for this field indicates that outbound forwarding is enabled for this zone. The value of this field contains the set of destinations to forward to.
  late final pulumi.Output<ManagedZoneForwardingConfigResponseDnsV1beta2>
      forwardingConfig;
  late final pulumi.Output<String> kind;

  /// User labels.
  late final pulumi.Output<Map<String, String>> labels;

  /// User assigned name for this resource. Must be unique within the project. The name must be 1-63 characters long, must begin with a letter, end with a letter or digit, and only contain lowercase letters, digits or dashes.
  late final pulumi.Output<String> name;

  /// Optionally specifies the NameServerSet for this ManagedZone. A NameServerSet is a set of DNS name servers that all host the same ManagedZones. Most users leave this field unset. If you need to use this field, contact your account team.
  late final pulumi.Output<String> nameServerSet;

  /// Delegate your managed_zone to these virtual name servers; defined by the server (output only)
  late final pulumi.Output<List<String>> nameServers;

  /// The presence of this field indicates that DNS Peering is enabled for this zone. The value of this field contains the network to peer with.
  late final pulumi.Output<ManagedZonePeeringConfigResponseDnsV1beta2>
      peeringConfig;

  /// For privately visible zones, the set of Virtual Private Cloud resources that the zone is visible from.
  late final pulumi.Output<ManagedZonePrivateVisibilityConfigResponseDnsV1beta2>
      privateVisibilityConfig;
  late final pulumi.Output<String> project;

  /// The presence of this field indicates that this is a managed reverse lookup zone and Cloud DNS resolves reverse lookup queries using automatically configured records for VPC resources. This only applies to networks listed under private_visibility_config.
  late final pulumi.Output<ManagedZoneReverseLookupConfigResponseDnsV1beta2>
      reverseLookupConfig;

  /// This field links to the associated service directory namespace. Do not set this field for public zones or forwarding zones.
  late final pulumi.Output<ManagedZoneServiceDirectoryConfigResponseDnsV1beta2>
      serviceDirectoryConfig;

  /// The zone's visibility: public zones are exposed to the Internet, while private zones are visible only to Virtual Private Cloud resources.
  late final pulumi.Output<String> visibility;

  /// Creates a new [ManagedZoneDnsV1beta2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedZoneDnsV1beta2]. {@macro pulumi_dns_v1beta2_managed_zone_dns_v1beta2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedZoneDnsV1beta2(
    String name, {
    ManagedZoneDnsV1beta2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dns/v1beta2:ManagedZone',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clientOperationId = registerOutput<String?>('clientOperationId');
    this.cloudLoggingConfig =
        registerOutput<ManagedZoneCloudLoggingConfigResponseDnsV1beta2>(
            'cloudLoggingConfig');
    this.creationTime = registerOutput<String>('creationTime');
    this.description = registerOutput<String>('description');
    this.dnsName = registerOutput<String>('dnsName');
    this.dnssecConfig =
        registerOutput<ManagedZoneDnsSecConfigResponseDnsV1beta2>(
            'dnssecConfig');
    this.forwardingConfig =
        registerOutput<ManagedZoneForwardingConfigResponseDnsV1beta2>(
            'forwardingConfig');
    this.kind = registerOutput<String>('kind');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    this.nameServerSet = registerOutput<String>('nameServerSet');
    this.nameServers = registerOutput<List<String>>('nameServers');
    this.peeringConfig =
        registerOutput<ManagedZonePeeringConfigResponseDnsV1beta2>(
            'peeringConfig');
    this.privateVisibilityConfig =
        registerOutput<ManagedZonePrivateVisibilityConfigResponseDnsV1beta2>(
            'privateVisibilityConfig');
    this.project = registerOutput<String>('project');
    this.reverseLookupConfig =
        registerOutput<ManagedZoneReverseLookupConfigResponseDnsV1beta2>(
            'reverseLookupConfig');
    this.serviceDirectoryConfig =
        registerOutput<ManagedZoneServiceDirectoryConfigResponseDnsV1beta2>(
            'serviceDirectoryConfig');
    this.visibility = registerOutput<String>('visibility');
  }
}

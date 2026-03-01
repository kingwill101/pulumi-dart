import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_args.dart';
import 'network_managed_service.dart';
import 'network_oci_dns_forwarding_config.dart';
import 'network_timeouts.dart';

/// Resource for managing odb Network resource in AWS for Oracle Database@AWS.
///
/// ## Example Usage
///
/// ## Import
///
/// Using `pulumi import`, import Odb Network using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:odb/network:Network example example
/// ```
class Network extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the odb network resource.
  late final pulumi.Output<String> arn;
  /// The name of the Availability Zone (AZ) where the odb network is located. Changing this will force terraform to create new resource. Make sure availability_zone maps correctly with availability_zone_id.
  late final pulumi.Output<String> availabilityZone;
  /// The AZ ID of the AZ where the ODB network is located. Changing this will force terraform to create new resource.
  late final pulumi.Output<String> availabilityZoneId;
  /// The CIDR range of the backup subnet for the ODB network. Changing this will force terraform to create new resource.
  late final pulumi.Output<String> backupSubnetCidr;
  /// The CIDR notation for the network resource. Changing this will force terraform to create new resource.
  late final pulumi.Output<String> clientSubnetCidr;
  /// The date and time when the ODB network was created.
  late final pulumi.Output<String> createdAt;
  /// The name of the custom domain that the network is located. Custom_domain_name and default_dns_prefix both can't be given. Changing this will force terraform to create new resource.
  late final pulumi.Output<String?> customDomainName;
  /// The default DNS prefix for the network resource. Changing this will force terraform to create new resource. Changing this will force terraform to create new resource.
  late final pulumi.Output<String?> defaultDnsPrefix;
  /// If set to true deletes associated OCI resources. Default false.
  late final pulumi.Output<bool> deleteAssociatedResources;
  /// The user-friendly name for the odb network. Changing this will force terraform to create a new resource.
  late final pulumi.Output<String> displayName;
  /// Specifies the configuration for KMS access from the ODB network.
  late final pulumi.Output<String> kmsAccess;
  /// Specifies the endpoint policy for KMS access from the ODB network.
  late final pulumi.Output<String?> kmsPolicyDocument;
  /// The name of the OCI resource anchor for the Exadata infrastructure.
  late final pulumi.Output<List<NetworkManagedService>> managedServices;
  /// The number of storage servers requested for the Exadata infrastructure.
  late final pulumi.Output<List<NetworkOciDnsForwardingConfig>> ociDnsForwardingConfigs;
  /// The unique identifier of the OCI network anchor for the ODB network.
  late final pulumi.Output<String> ociNetworkAnchorId;
  /// The URL of the OCI network anchor for the ODB network.
  late final pulumi.Output<String> ociNetworkAnchorUrl;
  /// The name of the OCI resource anchor for the ODB network.
  late final pulumi.Output<String> ociResourceAnchorName;
  /// The unique identifier  Oracle Cloud ID (OCID) of the OCI VCN for the ODB network.
  late final pulumi.Output<String> ociVcnId;
  /// The URL of the OCI VCN for the ODB network.
  late final pulumi.Output<String> ociVcnUrl;
  /// The list of CIDR ranges from the peered VPC that are allowed access to the ODB network. Please refer odb network peering documentation.
  late final pulumi.Output<List<String>> peeredCidrs;
  /// The amount of progress made on the current operation on the ODB network, expressed as a percentage.
  late final pulumi.Output<double> percentProgress;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Specifies the configuration for Amazon S3 access from the ODB network.
  late final pulumi.Output<String> s3Access;
  /// Specifies the endpoint policy for Amazon S3 access from the ODB network.
  late final pulumi.Output<String?> s3PolicyDocument;
  /// The status of the network resource.
  late final pulumi.Output<String> status;
  /// Additional information about the current status of the ODB network.
  late final pulumi.Output<String> statusReason;
  /// Specifies the configuration for STS access from the ODB network.
  late final pulumi.Output<String> stsAccess;
  /// Specifies the endpoint policy for STS access from the ODB network.
  late final pulumi.Output<String?> stsPolicyDocument;
  /// A map of tags to assign to the exadata infrastructure. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<NetworkTimeouts?> timeouts;
  /// Specifies the configuration for Zero-ETL access from the ODB network.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> zeroEtlAccess;

  /// Creates a new [Network].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Network]. {@macro pulumi_odb_network_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Network(
    String name, {
    NetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:odb/network:Network',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.availabilityZoneId = registerOutput<String>('availabilityZoneId');
    this.backupSubnetCidr = registerOutput<String>('backupSubnetCidr');
    this.clientSubnetCidr = registerOutput<String>('clientSubnetCidr');
    this.createdAt = registerOutput<String>('createdAt');
    this.customDomainName = registerOutput<String?>('customDomainName');
    this.defaultDnsPrefix = registerOutput<String?>('defaultDnsPrefix');
    this.deleteAssociatedResources = registerOutput<bool>('deleteAssociatedResources');
    this.displayName = registerOutput<String>('displayName');
    this.kmsAccess = registerOutput<String>('kmsAccess');
    this.kmsPolicyDocument = registerOutput<String?>('kmsPolicyDocument');
    this.managedServices = registerOutput<List<NetworkManagedService>>('managedServices');
    this.ociDnsForwardingConfigs = registerOutput<List<NetworkOciDnsForwardingConfig>>('ociDnsForwardingConfigs');
    this.ociNetworkAnchorId = registerOutput<String>('ociNetworkAnchorId');
    this.ociNetworkAnchorUrl = registerOutput<String>('ociNetworkAnchorUrl');
    this.ociResourceAnchorName = registerOutput<String>('ociResourceAnchorName');
    this.ociVcnId = registerOutput<String>('ociVcnId');
    this.ociVcnUrl = registerOutput<String>('ociVcnUrl');
    this.peeredCidrs = registerOutput<List<String>>('peeredCidrs');
    this.percentProgress = registerOutput<double>('percentProgress');
    this.region = registerOutput<String>('region');
    this.s3Access = registerOutput<String>('s3Access');
    this.s3PolicyDocument = registerOutput<String?>('s3PolicyDocument');
    this.status = registerOutput<String>('status');
    this.statusReason = registerOutput<String>('statusReason');
    this.stsAccess = registerOutput<String>('stsAccess');
    this.stsPolicyDocument = registerOutput<String?>('stsPolicyDocument');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<NetworkTimeouts?>('timeouts');
    this.zeroEtlAccess = registerOutput<String>('zeroEtlAccess');
  }
}

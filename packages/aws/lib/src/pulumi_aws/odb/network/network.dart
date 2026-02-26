import 'package:pulumi/pulumi.dart';
import '../network_managed_service/network_managed_service.dart';
import '../network_oci_dns_forwarding_config/network_oci_dns_forwarding_config.dart';
import '../network_timeouts/network_timeouts.dart';
import 'network_args.dart';

/// Resource for managing odb Network resource in AWS for Oracle Database@AWS.
///
/// ## Example Usage
///
/// ## Import
///
/// Using `pulumi import`, import Odb Network using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:odb/network:Network example example
/// ```
class Network extends CustomResource {
  /// Amazon Resource Name (ARN) of the odb network resource.
  late final Output<String> arn;

  /// The name of the Availability Zone (AZ) where the odb network is located. Changing this will force terraform to create new resource. Make sure<span pulumi-lang-nodejs=" availabilityZone " pulumi-lang-dotnet=" AvailabilityZone " pulumi-lang-go=" availabilityZone " pulumi-lang-python=" availability_zone " pulumi-lang-yaml=" availabilityZone " pulumi-lang-java=" availabilityZone "> availability_zone </span>maps correctly with availability_zone_id.
  late final Output<String> availabilityZone;

  /// The AZ ID of the AZ where the ODB network is located. Changing this will force terraform to create new resource.
  late final Output<String> availabilityZoneId;

  /// The CIDR range of the backup subnet for the ODB network. Changing this will force terraform to create new resource.
  late final Output<String> backupSubnetCidr;

  /// The CIDR notation for the network resource. Changing this will force terraform to create new resource.
  late final Output<String> clientSubnetCidr;

  /// The date and time when the ODB network was created.
  late final Output<String> createdAt;

  /// The name of the custom domain that the network is located. Custom_domain_name and<span pulumi-lang-nodejs=" defaultDnsPrefix " pulumi-lang-dotnet=" DefaultDnsPrefix " pulumi-lang-go=" defaultDnsPrefix " pulumi-lang-python=" default_dns_prefix " pulumi-lang-yaml=" defaultDnsPrefix " pulumi-lang-java=" defaultDnsPrefix "> default_dns_prefix </span>both can't be given. Changing this will force terraform to create new resource.
  late final Output<String?> customDomainName;

  /// The default DNS prefix for the network resource. Changing this will force terraform to create new resource. Changing this will force terraform to create new resource.
  late final Output<String?> defaultDnsPrefix;

  /// If set to true deletes associated OCI resources. Default false.
  late final Output<bool> deleteAssociatedResources;

  /// The user-friendly name for the odb network. Changing this will force terraform to create a new resource.
  late final Output<String> displayName;

  /// Specifies the configuration for KMS access from the ODB network.
  late final Output<String> kmsAccess;

  /// Specifies the endpoint policy for KMS access from the ODB network.
  late final Output<String?> kmsPolicyDocument;

  /// The name of the OCI resource anchor for the Exadata infrastructure.
  late final Output<List<NetworkManagedService>> managedServices;

  /// The number of storage servers requested for the Exadata infrastructure.
  late final Output<List<NetworkOciDnsForwardingConfig>>
      ociDnsForwardingConfigs;

  /// The unique identifier of the OCI network anchor for the ODB network.
  late final Output<String> ociNetworkAnchorId;

  /// The URL of the OCI network anchor for the ODB network.
  late final Output<String> ociNetworkAnchorUrl;

  /// The name of the OCI resource anchor for the ODB network.
  late final Output<String> ociResourceAnchorName;

  /// The unique identifier  Oracle Cloud ID (OCID) of the OCI VCN for the ODB network.
  late final Output<String> ociVcnId;

  /// The URL of the OCI VCN for the ODB network.
  late final Output<String> ociVcnUrl;

  /// The list of CIDR ranges from the peered VPC that are allowed access to the ODB network. Please refer odb network peering documentation.
  late final Output<List<String>> peeredCidrs;

  /// The amount of progress made on the current operation on the ODB network, expressed as a percentage.
  late final Output<double> percentProgress;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Specifies the configuration for Amazon S3 access from the ODB network.
  late final Output<String> s3Access;

  /// Specifies the endpoint policy for Amazon S3 access from the ODB network.
  late final Output<String?> s3PolicyDocument;

  /// The status of the network resource.
  late final Output<String> status;

  /// Additional information about the current status of the ODB network.
  late final Output<String> statusReason;

  /// Specifies the configuration for STS access from the ODB network.
  late final Output<String> stsAccess;

  /// Specifies the endpoint policy for STS access from the ODB network.
  late final Output<String?> stsPolicyDocument;

  /// A map of tags to assign to the exadata infrastructure. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;
  late final Output<NetworkTimeouts?> timeouts;

  /// Specifies the configuration for Zero-ETL access from the ODB network.
  ///
  /// The following arguments are optional:
  late final Output<String> zeroEtlAccess;

  Network(
    String name, {
    NetworkArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:odb/network:Network',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.availabilityZone = Output.createUnknown<String>();
    this.availabilityZoneId = Output.createUnknown<String>();
    this.backupSubnetCidr = Output.createUnknown<String>();
    this.clientSubnetCidr = Output.createUnknown<String>();
    this.createdAt = Output.createUnknown<String>();
    this.customDomainName = Output.createUnknown<String?>();
    this.defaultDnsPrefix = Output.createUnknown<String?>();
    this.deleteAssociatedResources = Output.createUnknown<bool>();
    this.displayName = Output.createUnknown<String>();
    this.kmsAccess = Output.createUnknown<String>();
    this.kmsPolicyDocument = Output.createUnknown<String?>();
    this.managedServices = Output.createUnknown<List<NetworkManagedService>>();
    this.ociDnsForwardingConfigs =
        Output.createUnknown<List<NetworkOciDnsForwardingConfig>>();
    this.ociNetworkAnchorId = Output.createUnknown<String>();
    this.ociNetworkAnchorUrl = Output.createUnknown<String>();
    this.ociResourceAnchorName = Output.createUnknown<String>();
    this.ociVcnId = Output.createUnknown<String>();
    this.ociVcnUrl = Output.createUnknown<String>();
    this.peeredCidrs = Output.createUnknown<List<String>>();
    this.percentProgress = Output.createUnknown<double>();
    this.region = Output.createUnknown<String>();
    this.s3Access = Output.createUnknown<String>();
    this.s3PolicyDocument = Output.createUnknown<String?>();
    this.status = Output.createUnknown<String>();
    this.statusReason = Output.createUnknown<String>();
    this.stsAccess = Output.createUnknown<String>();
    this.stsPolicyDocument = Output.createUnknown<String?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timeouts = Output.createUnknown<NetworkTimeouts?>();
    this.zeroEtlAccess = Output.createUnknown<String>();
  }
}

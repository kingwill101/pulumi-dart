import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_args.dart';
import 'network_state.dart';
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
  late final pulumi.Output<List<Map<String, dynamic>>> managedServices;

  /// The number of storage servers requested for the Exadata infrastructure.
  late final pulumi.Output<List<Map<String, dynamic>>> ociDnsForwardingConfigs;

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
    arn = registerOutput<String>('arn');
    availabilityZone = registerOutput<String>('availabilityZone');
    availabilityZoneId = registerOutput<String>('availabilityZoneId');
    backupSubnetCidr = registerOutput<String>('backupSubnetCidr');
    clientSubnetCidr = registerOutput<String>('clientSubnetCidr');
    createdAt = registerOutput<String>('createdAt');
    customDomainName = registerOutput<String?>('customDomainName');
    defaultDnsPrefix = registerOutput<String?>('defaultDnsPrefix');
    deleteAssociatedResources = registerOutput<bool>(
      'deleteAssociatedResources',
    );
    displayName = registerOutput<String>('displayName');
    kmsAccess = registerOutput<String>('kmsAccess');
    kmsPolicyDocument = registerOutput<String?>('kmsPolicyDocument');
    managedServices = registerOutput<List<Map<String, dynamic>>>(
      'managedServices',
    );
    ociDnsForwardingConfigs = registerOutput<List<Map<String, dynamic>>>(
      'ociDnsForwardingConfigs',
    );
    ociNetworkAnchorId = registerOutput<String>('ociNetworkAnchorId');
    ociNetworkAnchorUrl = registerOutput<String>('ociNetworkAnchorUrl');
    ociResourceAnchorName = registerOutput<String>('ociResourceAnchorName');
    ociVcnId = registerOutput<String>('ociVcnId');
    ociVcnUrl = registerOutput<String>('ociVcnUrl');
    peeredCidrs = registerOutput<List<String>>('peeredCidrs');
    percentProgress = registerOutput<double>('percentProgress');
    region = registerOutput<String>('region');
    s3Access = registerOutput<String>('s3Access');
    s3PolicyDocument = registerOutput<String?>('s3PolicyDocument');
    status = registerOutput<String>('status');
    statusReason = registerOutput<String>('statusReason');
    stsAccess = registerOutput<String>('stsAccess');
    stsPolicyDocument = registerOutput<String?>('stsPolicyDocument');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<NetworkTimeouts?>('timeouts');
    zeroEtlAccess = registerOutput<String>('zeroEtlAccess');
  }

  /// Gets an existing [Network] resource's state with the given [name] and [id].
  static Network get(
    String name,
    pulumi.Input<String> id, {
    NetworkState? state,
  }) {
    return Network._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Network._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:odb/network:Network',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    availabilityZone = registerOutput<String>('availabilityZone');
    availabilityZoneId = registerOutput<String>('availabilityZoneId');
    backupSubnetCidr = registerOutput<String>('backupSubnetCidr');
    clientSubnetCidr = registerOutput<String>('clientSubnetCidr');
    createdAt = registerOutput<String>('createdAt');
    customDomainName = registerOutput<String?>('customDomainName');
    defaultDnsPrefix = registerOutput<String?>('defaultDnsPrefix');
    deleteAssociatedResources = registerOutput<bool>(
      'deleteAssociatedResources',
    );
    displayName = registerOutput<String>('displayName');
    kmsAccess = registerOutput<String>('kmsAccess');
    kmsPolicyDocument = registerOutput<String?>('kmsPolicyDocument');
    managedServices = registerOutput<List<Map<String, dynamic>>>(
      'managedServices',
    );
    ociDnsForwardingConfigs = registerOutput<List<Map<String, dynamic>>>(
      'ociDnsForwardingConfigs',
    );
    ociNetworkAnchorId = registerOutput<String>('ociNetworkAnchorId');
    ociNetworkAnchorUrl = registerOutput<String>('ociNetworkAnchorUrl');
    ociResourceAnchorName = registerOutput<String>('ociResourceAnchorName');
    ociVcnId = registerOutput<String>('ociVcnId');
    ociVcnUrl = registerOutput<String>('ociVcnUrl');
    peeredCidrs = registerOutput<List<String>>('peeredCidrs');
    percentProgress = registerOutput<double>('percentProgress');
    region = registerOutput<String>('region');
    s3Access = registerOutput<String>('s3Access');
    s3PolicyDocument = registerOutput<String?>('s3PolicyDocument');
    status = registerOutput<String>('status');
    statusReason = registerOutput<String>('statusReason');
    stsAccess = registerOutput<String>('stsAccess');
    stsPolicyDocument = registerOutput<String?>('stsPolicyDocument');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<NetworkTimeouts?>('timeouts');
    zeroEtlAccess = registerOutput<String>('zeroEtlAccess');
  }
}

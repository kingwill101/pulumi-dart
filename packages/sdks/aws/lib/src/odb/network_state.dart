// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_managed_service.dart';
import 'network_oci_dns_forwarding_config.dart';
import 'network_timeouts.dart';

/// Input properties used for looking up and filtering Network resources.
class NetworkState {
  /// Amazon Resource Name (ARN) of the odb network resource.
  final pulumi.Input<String>? arn;
  /// The name of the Availability Zone (AZ) where the odb network is located. Changing this will force terraform to create new resource. Make sure availability_zone maps correctly with availability_zone_id.
  final pulumi.Input<String>? availabilityZone;
  /// The AZ ID of the AZ where the ODB network is located. Changing this will force terraform to create new resource.
  final pulumi.Input<String>? availabilityZoneId;
  /// The CIDR range of the backup subnet for the ODB network. Changing this will force terraform to create new resource.
  final pulumi.Input<String>? backupSubnetCidr;
  /// The CIDR notation for the network resource. Changing this will force terraform to create new resource.
  final pulumi.Input<String>? clientSubnetCidr;
  /// The date and time when the ODB network was created.
  final pulumi.Input<String>? createdAt;
  /// The name of the custom domain that the network is located. Custom_domain_name and default_dns_prefix both can't be given. Changing this will force terraform to create new resource.
  final pulumi.Input<String>? customDomainName;
  /// The default DNS prefix for the network resource. Changing this will force terraform to create new resource. Changing this will force terraform to create new resource.
  final pulumi.Input<String>? defaultDnsPrefix;
  /// If set to true deletes associated OCI resources. Default false.
  final pulumi.Input<bool>? deleteAssociatedResources;
  /// The user-friendly name for the odb network. Changing this will force terraform to create a new resource.
  final pulumi.Input<String>? displayName;
  /// Specifies the configuration for KMS access from the ODB network.
  final pulumi.Input<String>? kmsAccess;
  /// Specifies the endpoint policy for KMS access from the ODB network.
  final pulumi.Input<String>? kmsPolicyDocument;
  /// The name of the OCI resource anchor for the Exadata infrastructure.
  final pulumi.Input<List<NetworkManagedService>>? managedServices;
  /// The number of storage servers requested for the Exadata infrastructure.
  final pulumi.Input<List<NetworkOciDnsForwardingConfig>>? ociDnsForwardingConfigs;
  /// The unique identifier of the OCI network anchor for the ODB network.
  final pulumi.Input<String>? ociNetworkAnchorId;
  /// The URL of the OCI network anchor for the ODB network.
  final pulumi.Input<String>? ociNetworkAnchorUrl;
  /// The name of the OCI resource anchor for the ODB network.
  final pulumi.Input<String>? ociResourceAnchorName;
  /// The unique identifier  Oracle Cloud ID (OCID) of the OCI VCN for the ODB network.
  final pulumi.Input<String>? ociVcnId;
  /// The URL of the OCI VCN for the ODB network.
  final pulumi.Input<String>? ociVcnUrl;
  /// The list of CIDR ranges from the peered VPC that are allowed access to the ODB network. Please refer odb network peering documentation.
  final pulumi.Input<List<String>>? peeredCidrs;
  /// The amount of progress made on the current operation on the ODB network, expressed as a percentage.
  final pulumi.Input<double>? percentProgress;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies the configuration for Amazon S3 access from the ODB network.
  final pulumi.Input<String>? s3Access;
  /// Specifies the endpoint policy for Amazon S3 access from the ODB network.
  final pulumi.Input<String>? s3PolicyDocument;
  /// The status of the network resource.
  final pulumi.Input<String>? status;
  /// Additional information about the current status of the ODB network.
  final pulumi.Input<String>? statusReason;
  /// Specifies the configuration for STS access from the ODB network.
  final pulumi.Input<String>? stsAccess;
  /// Specifies the endpoint policy for STS access from the ODB network.
  final pulumi.Input<String>? stsPolicyDocument;
  /// A map of tags to assign to the exadata infrastructure. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<NetworkTimeouts>? timeouts;
  /// Specifies the configuration for Zero-ETL access from the ODB network.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? zeroEtlAccess;

  /// Creates a new [NetworkState].
  /// [arn] Amazon Resource Name (ARN) of the odb network resource.
  /// [availabilityZone] The name of the Availability Zone (AZ) where the odb network is located. Changing this will force terraform to create new resource. Make sure availability_zone maps correctly with availability_zone_id.
  /// [availabilityZoneId] The AZ ID of the AZ where the ODB network is located. Changing this will force terraform to create new resource.
  /// [backupSubnetCidr] The CIDR range of the backup subnet for the ODB network. Changing this will force terraform to create new resource.
  /// [clientSubnetCidr] The CIDR notation for the network resource. Changing this will force terraform to create new resource.
  /// [createdAt] The date and time when the ODB network was created.
  /// [customDomainName] The name of the custom domain that the network is located. Custom_domain_name and default_dns_prefix both can't be given. Changing this will force terraform to create new resource.
  /// [defaultDnsPrefix] The default DNS prefix for the network resource. Changing this will force terraform to create new resource. Changing this will force terraform to create new resource.
  /// [deleteAssociatedResources] If set to true deletes associated OCI resources. Default false.
  /// [displayName] The user-friendly name for the odb network. Changing this will force terraform to create a new resource.
  /// [kmsAccess] Specifies the configuration for KMS access from the ODB network.
  /// [kmsPolicyDocument] Specifies the endpoint policy for KMS access from the ODB network.
  /// [managedServices] The name of the OCI resource anchor for the Exadata infrastructure.
  /// [ociDnsForwardingConfigs] The number of storage servers requested for the Exadata infrastructure.
  /// [ociNetworkAnchorId] The unique identifier of the OCI network anchor for the ODB network.
  /// [ociNetworkAnchorUrl] The URL of the OCI network anchor for the ODB network.
  /// [ociResourceAnchorName] The name of the OCI resource anchor for the ODB network.
  /// [ociVcnId] The unique identifier  Oracle Cloud ID (OCID) of the OCI VCN for the ODB network.
  /// [ociVcnUrl] The URL of the OCI VCN for the ODB network.
  /// [peeredCidrs] The list of CIDR ranges from the peered VPC that are allowed access to the ODB network. Please refer odb network peering documentation.
  /// [percentProgress] The amount of progress made on the current operation on the ODB network, expressed as a percentage.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3Access] Specifies the configuration for Amazon S3 access from the ODB network.
  /// [s3PolicyDocument] Specifies the endpoint policy for Amazon S3 access from the ODB network.
  /// [status] The status of the network resource.
  /// [statusReason] Additional information about the current status of the ODB network.
  /// [stsAccess] Specifies the configuration for STS access from the ODB network.
  /// [stsPolicyDocument] Specifies the endpoint policy for STS access from the ODB network.
  /// [tags] A map of tags to assign to the exadata infrastructure. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [timeouts] Optional.
  /// [zeroEtlAccess] Specifies the configuration for Zero-ETL access from the ODB network.
  NetworkState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<String>? availabilityZoneId,
    pulumi.Output<String>? backupSubnetCidr,
    pulumi.Output<String>? clientSubnetCidr,
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? customDomainName,
    pulumi.Output<String>? defaultDnsPrefix,
    pulumi.Output<bool>? deleteAssociatedResources,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? kmsAccess,
    pulumi.Output<String>? kmsPolicyDocument,
    pulumi.Output<List<NetworkManagedService>>? managedServices,
    pulumi.Output<List<NetworkOciDnsForwardingConfig>>? ociDnsForwardingConfigs,
    pulumi.Output<String>? ociNetworkAnchorId,
    pulumi.Output<String>? ociNetworkAnchorUrl,
    pulumi.Output<String>? ociResourceAnchorName,
    pulumi.Output<String>? ociVcnId,
    pulumi.Output<String>? ociVcnUrl,
    pulumi.Output<List<String>>? peeredCidrs,
    pulumi.Output<double>? percentProgress,
    pulumi.Output<String>? region,
    pulumi.Output<String>? s3Access,
    pulumi.Output<String>? s3PolicyDocument,
    pulumi.Output<String>? status,
    pulumi.Output<String>? statusReason,
    pulumi.Output<String>? stsAccess,
    pulumi.Output<String>? stsPolicyDocument,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<NetworkTimeouts>? timeouts,
    pulumi.Output<String>? zeroEtlAccess,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      availabilityZoneId = pulumi.Input.asOptionalInput<String>(availabilityZoneId),
      backupSubnetCidr = pulumi.Input.asOptionalInput<String>(backupSubnetCidr),
      clientSubnetCidr = pulumi.Input.asOptionalInput<String>(clientSubnetCidr),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      customDomainName = pulumi.Input.asOptionalInput<String>(customDomainName),
      defaultDnsPrefix = pulumi.Input.asOptionalInput<String>(defaultDnsPrefix),
      deleteAssociatedResources = pulumi.Input.asOptionalInput<bool>(deleteAssociatedResources),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      kmsAccess = pulumi.Input.asOptionalInput<String>(kmsAccess),
      kmsPolicyDocument = pulumi.Input.asOptionalInput<String>(kmsPolicyDocument),
      managedServices = pulumi.Input.asOptionalInput<List<NetworkManagedService>>(managedServices),
      ociDnsForwardingConfigs = pulumi.Input.asOptionalInput<List<NetworkOciDnsForwardingConfig>>(ociDnsForwardingConfigs),
      ociNetworkAnchorId = pulumi.Input.asOptionalInput<String>(ociNetworkAnchorId),
      ociNetworkAnchorUrl = pulumi.Input.asOptionalInput<String>(ociNetworkAnchorUrl),
      ociResourceAnchorName = pulumi.Input.asOptionalInput<String>(ociResourceAnchorName),
      ociVcnId = pulumi.Input.asOptionalInput<String>(ociVcnId),
      ociVcnUrl = pulumi.Input.asOptionalInput<String>(ociVcnUrl),
      peeredCidrs = pulumi.Input.asOptionalInput<List<String>>(peeredCidrs),
      percentProgress = pulumi.Input.asOptionalInput<double>(percentProgress),
      region = pulumi.Input.asOptionalInput<String>(region),
      s3Access = pulumi.Input.asOptionalInput<String>(s3Access),
      s3PolicyDocument = pulumi.Input.asOptionalInput<String>(s3PolicyDocument),
      status = pulumi.Input.asOptionalInput<String>(status),
      statusReason = pulumi.Input.asOptionalInput<String>(statusReason),
      stsAccess = pulumi.Input.asOptionalInput<String>(stsAccess),
      stsPolicyDocument = pulumi.Input.asOptionalInput<String>(stsPolicyDocument),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<NetworkTimeouts>(timeouts),
      zeroEtlAccess = pulumi.Input.asOptionalInput<String>(zeroEtlAccess);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'availabilityZone': ?availabilityZone,
      'availabilityZoneId': ?availabilityZoneId,
      'backupSubnetCidr': ?backupSubnetCidr,
      'clientSubnetCidr': ?clientSubnetCidr,
      'createdAt': ?createdAt,
      'customDomainName': ?customDomainName,
      'defaultDnsPrefix': ?defaultDnsPrefix,
      'deleteAssociatedResources': ?deleteAssociatedResources,
      'displayName': ?displayName,
      'kmsAccess': ?kmsAccess,
      'kmsPolicyDocument': ?kmsPolicyDocument,
      'managedServices': ?pulumi.Input.mapOptionalInputValue<List<NetworkManagedService>, List<Map<String, dynamic>>>(managedServices, (value) => pulumi.Input.encodeList<NetworkManagedService, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ociDnsForwardingConfigs': ?pulumi.Input.mapOptionalInputValue<List<NetworkOciDnsForwardingConfig>, List<Map<String, dynamic>>>(ociDnsForwardingConfigs, (value) => pulumi.Input.encodeList<NetworkOciDnsForwardingConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ociNetworkAnchorId': ?ociNetworkAnchorId,
      'ociNetworkAnchorUrl': ?ociNetworkAnchorUrl,
      'ociResourceAnchorName': ?ociResourceAnchorName,
      'ociVcnId': ?ociVcnId,
      'ociVcnUrl': ?ociVcnUrl,
      'peeredCidrs': ?peeredCidrs,
      'percentProgress': ?percentProgress,
      'region': ?region,
      's3Access': ?s3Access,
      's3PolicyDocument': ?s3PolicyDocument,
      'status': ?status,
      'statusReason': ?statusReason,
      'stsAccess': ?stsAccess,
      'stsPolicyDocument': ?stsPolicyDocument,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<NetworkTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'zeroEtlAccess': ?zeroEtlAccess,
    };
  }

  factory NetworkState.fromMap(Map<String, dynamic> map) {
    return NetworkState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      availabilityZoneId: map['availabilityZoneId'] == null ? null : pulumi.Output.create<String>(map['availabilityZoneId'] as String),
      backupSubnetCidr: map['backupSubnetCidr'] == null ? null : pulumi.Output.create<String>(map['backupSubnetCidr'] as String),
      clientSubnetCidr: map['clientSubnetCidr'] == null ? null : pulumi.Output.create<String>(map['clientSubnetCidr'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      customDomainName: map['customDomainName'] == null ? null : pulumi.Output.create<String>(map['customDomainName'] as String),
      defaultDnsPrefix: map['defaultDnsPrefix'] == null ? null : pulumi.Output.create<String>(map['defaultDnsPrefix'] as String),
      deleteAssociatedResources: map['deleteAssociatedResources'] == null ? null : pulumi.Output.create<bool>(map['deleteAssociatedResources'] as bool),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      kmsAccess: map['kmsAccess'] == null ? null : pulumi.Output.create<String>(map['kmsAccess'] as String),
      kmsPolicyDocument: map['kmsPolicyDocument'] == null ? null : pulumi.Output.create<String>(map['kmsPolicyDocument'] as String),
      managedServices: map['managedServices'] == null ? null : pulumi.Output.create<List<NetworkManagedService>>(pulumi.Input.decodeList<NetworkManagedService>(map['managedServices'], (value) => NetworkManagedService.fromMap((value as Map).cast<String, dynamic>()))),
      ociDnsForwardingConfigs: map['ociDnsForwardingConfigs'] == null ? null : pulumi.Output.create<List<NetworkOciDnsForwardingConfig>>(pulumi.Input.decodeList<NetworkOciDnsForwardingConfig>(map['ociDnsForwardingConfigs'], (value) => NetworkOciDnsForwardingConfig.fromMap((value as Map).cast<String, dynamic>()))),
      ociNetworkAnchorId: map['ociNetworkAnchorId'] == null ? null : pulumi.Output.create<String>(map['ociNetworkAnchorId'] as String),
      ociNetworkAnchorUrl: map['ociNetworkAnchorUrl'] == null ? null : pulumi.Output.create<String>(map['ociNetworkAnchorUrl'] as String),
      ociResourceAnchorName: map['ociResourceAnchorName'] == null ? null : pulumi.Output.create<String>(map['ociResourceAnchorName'] as String),
      ociVcnId: map['ociVcnId'] == null ? null : pulumi.Output.create<String>(map['ociVcnId'] as String),
      ociVcnUrl: map['ociVcnUrl'] == null ? null : pulumi.Output.create<String>(map['ociVcnUrl'] as String),
      peeredCidrs: map['peeredCidrs'] == null ? null : pulumi.Output.create<List<String>>((map['peeredCidrs'] as List).cast<String>()),
      percentProgress: map['percentProgress'] == null ? null : pulumi.Output.create<double>(map['percentProgress'] as double),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      s3Access: map['s3Access'] == null ? null : pulumi.Output.create<String>(map['s3Access'] as String),
      s3PolicyDocument: map['s3PolicyDocument'] == null ? null : pulumi.Output.create<String>(map['s3PolicyDocument'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      statusReason: map['statusReason'] == null ? null : pulumi.Output.create<String>(map['statusReason'] as String),
      stsAccess: map['stsAccess'] == null ? null : pulumi.Output.create<String>(map['stsAccess'] as String),
      stsPolicyDocument: map['stsPolicyDocument'] == null ? null : pulumi.Output.create<String>(map['stsPolicyDocument'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<NetworkTimeouts>(NetworkTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      zeroEtlAccess: map['zeroEtlAccess'] == null ? null : pulumi.Output.create<String>(map['zeroEtlAccess'] as String),
    );
  }
}


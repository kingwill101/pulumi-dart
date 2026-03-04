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
  final pulumi.Input<List<NetworkOciDnsForwardingConfig>>?
  ociDnsForwardingConfigs;

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
    this.arn,
    this.availabilityZone,
    this.availabilityZoneId,
    this.backupSubnetCidr,
    this.clientSubnetCidr,
    this.createdAt,
    this.customDomainName,
    this.defaultDnsPrefix,
    this.deleteAssociatedResources,
    this.displayName,
    this.kmsAccess,
    this.kmsPolicyDocument,
    this.managedServices,
    this.ociDnsForwardingConfigs,
    this.ociNetworkAnchorId,
    this.ociNetworkAnchorUrl,
    this.ociResourceAnchorName,
    this.ociVcnId,
    this.ociVcnUrl,
    this.peeredCidrs,
    this.percentProgress,
    this.region,
    this.s3Access,
    this.s3PolicyDocument,
    this.status,
    this.statusReason,
    this.stsAccess,
    this.stsPolicyDocument,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.zeroEtlAccess,
  });

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
      'managedServices':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkManagedService>,
            List<Map<String, dynamic>>
          >(
            managedServices,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkManagedService,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ociDnsForwardingConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkOciDnsForwardingConfig>,
            List<Map<String, dynamic>>
          >(
            ociDnsForwardingConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkOciDnsForwardingConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            NetworkTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'zeroEtlAccess': ?zeroEtlAccess,
    };
  }

  factory NetworkState.fromMap(Map<String, dynamic> map) {
    return NetworkState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      availabilityZone: (() {
        final guardedValue = map['availabilityZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      availabilityZoneId: (() {
        final guardedValue = map['availabilityZoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      backupSubnetCidr: (() {
        final guardedValue = map['backupSubnetCidr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientSubnetCidr: (() {
        final guardedValue = map['clientSubnetCidr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createdAt: (() {
        final guardedValue = map['createdAt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      customDomainName: (() {
        final guardedValue = map['customDomainName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultDnsPrefix: (() {
        final guardedValue = map['defaultDnsPrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deleteAssociatedResources: (() {
        final guardedValue = map['deleteAssociatedResources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kmsAccess: (() {
        final guardedValue = map['kmsAccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kmsPolicyDocument: (() {
        final guardedValue = map['kmsPolicyDocument'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managedServices: (() {
        final guardedValue = map['managedServices'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NetworkManagedService>(
            guardedValue,
            (value) => NetworkManagedService.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      ociDnsForwardingConfigs: (() {
        final guardedValue = map['ociDnsForwardingConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NetworkOciDnsForwardingConfig>(
            guardedValue,
            (value) => NetworkOciDnsForwardingConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      ociNetworkAnchorId: (() {
        final guardedValue = map['ociNetworkAnchorId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ociNetworkAnchorUrl: (() {
        final guardedValue = map['ociNetworkAnchorUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ociResourceAnchorName: (() {
        final guardedValue = map['ociResourceAnchorName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ociVcnId: (() {
        final guardedValue = map['ociVcnId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ociVcnUrl: (() {
        final guardedValue = map['ociVcnUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      peeredCidrs: (() {
        final guardedValue = map['peeredCidrs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      percentProgress: (() {
        final guardedValue = map['percentProgress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      s3Access: (() {
        final guardedValue = map['s3Access'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      s3PolicyDocument: (() {
        final guardedValue = map['s3PolicyDocument'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      statusReason: (() {
        final guardedValue = map['statusReason'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stsAccess: (() {
        final guardedValue = map['stsAccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stsPolicyDocument: (() {
        final guardedValue = map['stsPolicyDocument'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NetworkTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      zeroEtlAccess: (() {
        final guardedValue = map['zeroEtlAccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

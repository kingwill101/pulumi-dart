// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_domain_advanced_security_option/get_domain_advanced_security_option_opensearch.dart';
import '../get_domain_auto_tune_option/get_domain_auto_tune_option_opensearch.dart';
import '../get_domain_cluster_config/get_domain_cluster_config_opensearch.dart';
import '../get_domain_cognito_option/get_domain_cognito_option_opensearch.dart';
import '../get_domain_ebs_option/get_domain_ebs_option_opensearch.dart';
import '../get_domain_encryption_at_rest/get_domain_encryption_at_rest_opensearch.dart';
import '../get_domain_identity_center_option/get_domain_identity_center_option.dart';
import '../get_domain_log_publishing_option/get_domain_log_publishing_option_opensearch.dart';
import '../get_domain_node_to_node_encryption/get_domain_node_to_node_encryption_opensearch.dart';
import '../get_domain_off_peak_window_options/get_domain_off_peak_window_options.dart';
import '../get_domain_snapshot_option/get_domain_snapshot_option_opensearch.dart';
import '../get_domain_software_update_option/get_domain_software_update_option.dart';
import '../get_domain_vpc_option/get_domain_vpc_option_opensearch.dart';

/// Result data returned by getDomain.
class GetDomainOpensearchResult {
  /// Policy document attached to the domain.
  final String accessPolicies;

  /// Key-value string pairs to specify advanced configuration options.
  final Map<String, String> advancedOptions;

  /// Status of the OpenSearch domain's advanced security options. The block consists of the following attributes:
  final List<GetDomainAdvancedSecurityOptionOpensearch> advancedSecurityOptions;

  /// ARN of the domain.
  final String arn;

  /// Configuration of the Auto-Tune options of the domain.
  final List<GetDomainAutoTuneOptionOpensearch> autoTuneOptions;

  /// Cluster configuration of the domain.
  final List<GetDomainClusterConfigOpensearch> clusterConfigs;

  /// Domain Amazon Cognito Authentication options for Dashboard.
  final List<GetDomainCognitoOptionOpensearch> cognitoOptions;

  /// Status of the creation of the domain.
  final bool created;

  /// Domain-specific endpoint used to access the [Dashboard application](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/dashboards.html).
  final String dashboardEndpoint;

  /// V2 domain-specific endpoint used to access the [Dashboard application](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/dashboards.html)
  final String dashboardEndpointV2;

  /// Status of the deletion of the domain.
  final bool deleted;

  /// Dual stack hosted zone ID for the domain.
  final String domainEndpointV2HostedZoneId;

  /// Unique identifier for the domain.
  final String domainId;
  final String domainName;

  /// EBS Options for the instances in the domain.
  final List<GetDomainEbsOptionOpensearch> ebsOptions;

  /// Domain encryption at rest related options.
  final List<GetDomainEncryptionAtRestOpensearch> encryptionAtRests;

  /// Domain-specific endpoint used to submit index, search, and data upload requests.
  final String endpoint;

  /// V2 domain-specific endpoint that works with both IPv4 and IPv6 addresses, used to submit index, search, and data upload requests.
  final String endpointV2;

  /// OpenSearch version for the domain.
  final String engineVersion;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Configuration for enabling and managing IAM Identity Center integration within a domain.
  final List<GetDomainIdentityCenterOption> identityCenterOptions;

  /// Type of IP addresses supported by the endpoint for the domain.
  final String ipAddressType;

  /// Domain log publishing related options.
  final List<GetDomainLogPublishingOptionOpensearch> logPublishingOptions;

  /// Domain in transit encryption related options.
  final List<GetDomainNodeToNodeEncryptionOpensearch> nodeToNodeEncryptions;

  /// Off Peak update options
  final GetDomainOffPeakWindowOptions offPeakWindowOptions;

  /// Status of a configuration change in the domain.
  final bool processing;
  final String region;

  /// Domain snapshot related options.
  final List<GetDomainSnapshotOptionOpensearch> snapshotOptions;

  /// Software update options for the domain
  final List<GetDomainSoftwareUpdateOption> softwareUpdateOptions;

  /// Tags assigned to the domain.
  final Map<String, String> tags;

  /// VPC Options for private OpenSearch domains.
  final List<GetDomainVpcOptionOpensearch> vpcOptions;

  GetDomainOpensearchResult({
    required this.accessPolicies,
    required this.advancedOptions,
    required this.advancedSecurityOptions,
    required this.arn,
    required this.autoTuneOptions,
    required this.clusterConfigs,
    required this.cognitoOptions,
    required this.created,
    required this.dashboardEndpoint,
    required this.dashboardEndpointV2,
    required this.deleted,
    required this.domainEndpointV2HostedZoneId,
    required this.domainId,
    required this.domainName,
    required this.ebsOptions,
    required this.encryptionAtRests,
    required this.endpoint,
    required this.endpointV2,
    required this.engineVersion,
    required this.id,
    required this.identityCenterOptions,
    required this.ipAddressType,
    required this.logPublishingOptions,
    required this.nodeToNodeEncryptions,
    required this.offPeakWindowOptions,
    required this.processing,
    required this.region,
    required this.snapshotOptions,
    required this.softwareUpdateOptions,
    required this.tags,
    required this.vpcOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessPolicies'] = accessPolicies;
    map['advancedOptions'] = advancedOptions;
    map['advancedSecurityOptions'] = pulumi.Input.encodeList<
            GetDomainAdvancedSecurityOptionOpensearch, Map<String, dynamic>>(
        advancedSecurityOptions, (value) => value.toMap());
    map['arn'] = arn;
    map['autoTuneOptions'] = pulumi.Input.encodeList<
        GetDomainAutoTuneOptionOpensearch,
        Map<String, dynamic>>(autoTuneOptions, (value) => value.toMap());
    map['clusterConfigs'] = pulumi.Input.encodeList<
        GetDomainClusterConfigOpensearch,
        Map<String, dynamic>>(clusterConfigs, (value) => value.toMap());
    map['cognitoOptions'] = pulumi.Input.encodeList<
        GetDomainCognitoOptionOpensearch,
        Map<String, dynamic>>(cognitoOptions, (value) => value.toMap());
    map['created'] = created;
    map['dashboardEndpoint'] = dashboardEndpoint;
    map['dashboardEndpointV2'] = dashboardEndpointV2;
    map['deleted'] = deleted;
    map['domainEndpointV2HostedZoneId'] = domainEndpointV2HostedZoneId;
    map['domainId'] = domainId;
    map['domainName'] = domainName;
    map['ebsOptions'] = pulumi.Input.encodeList<GetDomainEbsOptionOpensearch,
        Map<String, dynamic>>(ebsOptions, (value) => value.toMap());
    map['encryptionAtRests'] = pulumi.Input.encodeList<
        GetDomainEncryptionAtRestOpensearch,
        Map<String, dynamic>>(encryptionAtRests, (value) => value.toMap());
    map['endpoint'] = endpoint;
    map['endpointV2'] = endpointV2;
    map['engineVersion'] = engineVersion;
    map['id'] = id;
    map['identityCenterOptions'] = pulumi.Input.encodeList<
        GetDomainIdentityCenterOption,
        Map<String, dynamic>>(identityCenterOptions, (value) => value.toMap());
    map['ipAddressType'] = ipAddressType;
    map['logPublishingOptions'] = pulumi.Input.encodeList<
        GetDomainLogPublishingOptionOpensearch,
        Map<String, dynamic>>(logPublishingOptions, (value) => value.toMap());
    map['nodeToNodeEncryptions'] = pulumi.Input.encodeList<
        GetDomainNodeToNodeEncryptionOpensearch,
        Map<String, dynamic>>(nodeToNodeEncryptions, (value) => value.toMap());
    map['offPeakWindowOptions'] = offPeakWindowOptions.toMap();
    map['processing'] = processing;
    map['region'] = region;
    map['snapshotOptions'] = pulumi.Input.encodeList<
        GetDomainSnapshotOptionOpensearch,
        Map<String, dynamic>>(snapshotOptions, (value) => value.toMap());
    map['softwareUpdateOptions'] = pulumi.Input.encodeList<
        GetDomainSoftwareUpdateOption,
        Map<String, dynamic>>(softwareUpdateOptions, (value) => value.toMap());
    map['tags'] = tags;
    map['vpcOptions'] = pulumi.Input.encodeList<GetDomainVpcOptionOpensearch,
        Map<String, dynamic>>(vpcOptions, (value) => value.toMap());
    return map;
  }

  factory GetDomainOpensearchResult.fromMap(Map<String, dynamic> map) {
    return GetDomainOpensearchResult(
      accessPolicies: map['accessPolicies'] as String,
      advancedOptions: (map['advancedOptions'] as Map).cast<String, String>(),
      advancedSecurityOptions:
          pulumi.Input.decodeList<GetDomainAdvancedSecurityOptionOpensearch>(
              map['advancedSecurityOptions'],
              (value) => GetDomainAdvancedSecurityOptionOpensearch.fromMap(
                  (value as Map).cast<String, dynamic>())),
      arn: map['arn'] as String,
      autoTuneOptions:
          pulumi.Input.decodeList<GetDomainAutoTuneOptionOpensearch>(
              map['autoTuneOptions'],
              (value) => GetDomainAutoTuneOptionOpensearch.fromMap(
                  (value as Map).cast<String, dynamic>())),
      clusterConfigs: pulumi.Input.decodeList<GetDomainClusterConfigOpensearch>(
          map['clusterConfigs'],
          (value) => GetDomainClusterConfigOpensearch.fromMap(
              (value as Map).cast<String, dynamic>())),
      cognitoOptions: pulumi.Input.decodeList<GetDomainCognitoOptionOpensearch>(
          map['cognitoOptions'],
          (value) => GetDomainCognitoOptionOpensearch.fromMap(
              (value as Map).cast<String, dynamic>())),
      created: map['created'] as bool,
      dashboardEndpoint: map['dashboardEndpoint'] as String,
      dashboardEndpointV2: map['dashboardEndpointV2'] as String,
      deleted: map['deleted'] as bool,
      domainEndpointV2HostedZoneId:
          map['domainEndpointV2HostedZoneId'] as String,
      domainId: map['domainId'] as String,
      domainName: map['domainName'] as String,
      ebsOptions: pulumi.Input.decodeList<GetDomainEbsOptionOpensearch>(
          map['ebsOptions'],
          (value) => GetDomainEbsOptionOpensearch.fromMap(
              (value as Map).cast<String, dynamic>())),
      encryptionAtRests:
          pulumi.Input.decodeList<GetDomainEncryptionAtRestOpensearch>(
              map['encryptionAtRests'],
              (value) => GetDomainEncryptionAtRestOpensearch.fromMap(
                  (value as Map).cast<String, dynamic>())),
      endpoint: map['endpoint'] as String,
      endpointV2: map['endpointV2'] as String,
      engineVersion: map['engineVersion'] as String,
      id: map['id'] as String,
      identityCenterOptions:
          pulumi.Input.decodeList<GetDomainIdentityCenterOption>(
              map['identityCenterOptions'],
              (value) => GetDomainIdentityCenterOption.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ipAddressType: map['ipAddressType'] as String,
      logPublishingOptions:
          pulumi.Input.decodeList<GetDomainLogPublishingOptionOpensearch>(
              map['logPublishingOptions'],
              (value) => GetDomainLogPublishingOptionOpensearch.fromMap(
                  (value as Map).cast<String, dynamic>())),
      nodeToNodeEncryptions:
          pulumi.Input.decodeList<GetDomainNodeToNodeEncryptionOpensearch>(
              map['nodeToNodeEncryptions'],
              (value) => GetDomainNodeToNodeEncryptionOpensearch.fromMap(
                  (value as Map).cast<String, dynamic>())),
      offPeakWindowOptions: GetDomainOffPeakWindowOptions.fromMap(
          (map['offPeakWindowOptions'] as Map).cast<String, dynamic>()),
      processing: map['processing'] as bool,
      region: map['region'] as String,
      snapshotOptions:
          pulumi.Input.decodeList<GetDomainSnapshotOptionOpensearch>(
              map['snapshotOptions'],
              (value) => GetDomainSnapshotOptionOpensearch.fromMap(
                  (value as Map).cast<String, dynamic>())),
      softwareUpdateOptions:
          pulumi.Input.decodeList<GetDomainSoftwareUpdateOption>(
              map['softwareUpdateOptions'],
              (value) => GetDomainSoftwareUpdateOption.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcOptions: pulumi.Input.decodeList<GetDomainVpcOptionOpensearch>(
          map['vpcOptions'],
          (value) => GetDomainVpcOptionOpensearch.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}

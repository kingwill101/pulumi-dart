// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_advanced_security_option.dart';
import 'get_domain_auto_tune_option.dart';
import 'get_domain_cluster_config.dart';
import 'get_domain_cognito_option.dart';
import 'get_domain_ebs_option.dart';
import 'get_domain_encryption_at_rest.dart';
import 'get_domain_identity_center_option.dart';
import 'get_domain_log_publishing_option.dart';
import 'get_domain_node_to_node_encryption.dart';
import 'get_domain_off_peak_window_options.dart';
import 'get_domain_snapshot_option.dart';
import 'get_domain_software_update_option.dart';
import 'get_domain_vpc_option.dart';

/// Result data returned by getDomain.
class GetDomainResult {
  /// Policy document attached to the domain.
  final String accessPolicies;

  /// Key-value string pairs to specify advanced configuration options.
  final Map<String, String> advancedOptions;

  /// Status of the OpenSearch domain's advanced security options. The block consists of the following attributes:
  final List<GetDomainAdvancedSecurityOption> advancedSecurityOptions;

  /// ARN of the domain.
  final String arn;

  /// Configuration of the Auto-Tune options of the domain.
  final List<GetDomainAutoTuneOption> autoTuneOptions;

  /// Cluster configuration of the domain.
  final List<GetDomainClusterConfig> clusterConfigs;

  /// Domain Amazon Cognito Authentication options for Dashboard.
  final List<GetDomainCognitoOption> cognitoOptions;

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
  final List<GetDomainEbsOption> ebsOptions;

  /// Domain encryption at rest related options.
  final List<GetDomainEncryptionAtRest> encryptionAtRests;

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
  final List<GetDomainLogPublishingOption> logPublishingOptions;

  /// Domain in transit encryption related options.
  final List<GetDomainNodeToNodeEncryption> nodeToNodeEncryptions;

  /// Off Peak update options
  final GetDomainOffPeakWindowOptions offPeakWindowOptions;

  /// Status of a configuration change in the domain.
  final bool processing;
  final String region;

  /// Domain snapshot related options.
  final List<GetDomainSnapshotOption> snapshotOptions;

  /// Software update options for the domain
  final List<GetDomainSoftwareUpdateOption> softwareUpdateOptions;

  /// Tags assigned to the domain.
  final Map<String, String> tags;

  /// VPC Options for private OpenSearch domains.
  final List<GetDomainVpcOption> vpcOptions;

  /// Creates a new [GetDomainResult].
  /// [accessPolicies] Policy document attached to the domain.
  /// [advancedOptions] Key-value string pairs to specify advanced configuration options.
  /// [advancedSecurityOptions] Status of the OpenSearch domain's advanced security options. The block consists of the following attributes:
  /// [arn] ARN of the domain.
  /// [autoTuneOptions] Configuration of the Auto-Tune options of the domain.
  /// [clusterConfigs] Cluster configuration of the domain.
  /// [cognitoOptions] Domain Amazon Cognito Authentication options for Dashboard.
  /// [created] Status of the creation of the domain.
  /// [dashboardEndpoint] Domain-specific endpoint used to access the [Dashboard application](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/dashboards.html).
  /// [dashboardEndpointV2] V2 domain-specific endpoint used to access the [Dashboard application](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/dashboards.html)
  /// [deleted] Status of the deletion of the domain.
  /// [domainEndpointV2HostedZoneId] Dual stack hosted zone ID for the domain.
  /// [domainId] Unique identifier for the domain.
  /// [domainName] Required.
  /// [ebsOptions] EBS Options for the instances in the domain.
  /// [encryptionAtRests] Domain encryption at rest related options.
  /// [endpoint] Domain-specific endpoint used to submit index, search, and data upload requests.
  /// [endpointV2] V2 domain-specific endpoint that works with both IPv4 and IPv6 addresses, used to submit index, search, and data upload requests.
  /// [engineVersion] OpenSearch version for the domain.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identityCenterOptions] Configuration for enabling and managing IAM Identity Center integration within a domain.
  /// [ipAddressType] Type of IP addresses supported by the endpoint for the domain.
  /// [logPublishingOptions] Domain log publishing related options.
  /// [nodeToNodeEncryptions] Domain in transit encryption related options.
  /// [offPeakWindowOptions] Off Peak update options
  /// [processing] Status of a configuration change in the domain.
  /// [region] Required.
  /// [snapshotOptions] Domain snapshot related options.
  /// [softwareUpdateOptions] Software update options for the domain
  /// [tags] Tags assigned to the domain.
  /// [vpcOptions] VPC Options for private OpenSearch domains.
  GetDomainResult({
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
    return <String, dynamic>{
      'accessPolicies': accessPolicies,
      'advancedOptions': advancedOptions,
      'advancedSecurityOptions':
          pulumi.Input.encodeList<
            GetDomainAdvancedSecurityOption,
            Map<String, dynamic>
          >(advancedSecurityOptions, (value) => value.toMap()),
      'arn': arn,
      'autoTuneOptions':
          pulumi.Input.encodeList<
            GetDomainAutoTuneOption,
            Map<String, dynamic>
          >(autoTuneOptions, (value) => value.toMap()),
      'clusterConfigs':
          pulumi.Input.encodeList<GetDomainClusterConfig, Map<String, dynamic>>(
            clusterConfigs,
            (value) => value.toMap(),
          ),
      'cognitoOptions':
          pulumi.Input.encodeList<GetDomainCognitoOption, Map<String, dynamic>>(
            cognitoOptions,
            (value) => value.toMap(),
          ),
      'created': created,
      'dashboardEndpoint': dashboardEndpoint,
      'dashboardEndpointV2': dashboardEndpointV2,
      'deleted': deleted,
      'domainEndpointV2HostedZoneId': domainEndpointV2HostedZoneId,
      'domainId': domainId,
      'domainName': domainName,
      'ebsOptions':
          pulumi.Input.encodeList<GetDomainEbsOption, Map<String, dynamic>>(
            ebsOptions,
            (value) => value.toMap(),
          ),
      'encryptionAtRests':
          pulumi.Input.encodeList<
            GetDomainEncryptionAtRest,
            Map<String, dynamic>
          >(encryptionAtRests, (value) => value.toMap()),
      'endpoint': endpoint,
      'endpointV2': endpointV2,
      'engineVersion': engineVersion,
      'id': id,
      'identityCenterOptions':
          pulumi.Input.encodeList<
            GetDomainIdentityCenterOption,
            Map<String, dynamic>
          >(identityCenterOptions, (value) => value.toMap()),
      'ipAddressType': ipAddressType,
      'logPublishingOptions':
          pulumi.Input.encodeList<
            GetDomainLogPublishingOption,
            Map<String, dynamic>
          >(logPublishingOptions, (value) => value.toMap()),
      'nodeToNodeEncryptions':
          pulumi.Input.encodeList<
            GetDomainNodeToNodeEncryption,
            Map<String, dynamic>
          >(nodeToNodeEncryptions, (value) => value.toMap()),
      'offPeakWindowOptions': offPeakWindowOptions.toMap(),
      'processing': processing,
      'region': region,
      'snapshotOptions':
          pulumi.Input.encodeList<
            GetDomainSnapshotOption,
            Map<String, dynamic>
          >(snapshotOptions, (value) => value.toMap()),
      'softwareUpdateOptions':
          pulumi.Input.encodeList<
            GetDomainSoftwareUpdateOption,
            Map<String, dynamic>
          >(softwareUpdateOptions, (value) => value.toMap()),
      'tags': tags,
      'vpcOptions':
          pulumi.Input.encodeList<GetDomainVpcOption, Map<String, dynamic>>(
            vpcOptions,
            (value) => value.toMap(),
          ),
    };
  }

  factory GetDomainResult.fromMap(Map<String, dynamic> map) {
    return GetDomainResult(
      accessPolicies: map['accessPolicies'] as String,
      advancedOptions: (map['advancedOptions'] as Map).cast<String, String>(),
      advancedSecurityOptions:
          pulumi.Input.decodeList<GetDomainAdvancedSecurityOption>(
            map['advancedSecurityOptions']!,
            (value) => GetDomainAdvancedSecurityOption.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      arn: map['arn'] as String,
      autoTuneOptions: pulumi.Input.decodeList<GetDomainAutoTuneOption>(
        map['autoTuneOptions']!,
        (value) => GetDomainAutoTuneOption.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      clusterConfigs: pulumi.Input.decodeList<GetDomainClusterConfig>(
        map['clusterConfigs']!,
        (value) => GetDomainClusterConfig.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      cognitoOptions: pulumi.Input.decodeList<GetDomainCognitoOption>(
        map['cognitoOptions']!,
        (value) => GetDomainCognitoOption.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      created: map['created'] as bool,
      dashboardEndpoint: map['dashboardEndpoint'] as String,
      dashboardEndpointV2: map['dashboardEndpointV2'] as String,
      deleted: map['deleted'] as bool,
      domainEndpointV2HostedZoneId:
          map['domainEndpointV2HostedZoneId'] as String,
      domainId: map['domainId'] as String,
      domainName: map['domainName'] as String,
      ebsOptions: pulumi.Input.decodeList<GetDomainEbsOption>(
        map['ebsOptions']!,
        (value) =>
            GetDomainEbsOption.fromMap((value as Map).cast<String, dynamic>()),
      ),
      encryptionAtRests: pulumi.Input.decodeList<GetDomainEncryptionAtRest>(
        map['encryptionAtRests']!,
        (value) => GetDomainEncryptionAtRest.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      endpoint: map['endpoint'] as String,
      endpointV2: map['endpointV2'] as String,
      engineVersion: map['engineVersion'] as String,
      id: map['id'] as String,
      identityCenterOptions:
          pulumi.Input.decodeList<GetDomainIdentityCenterOption>(
            map['identityCenterOptions']!,
            (value) => GetDomainIdentityCenterOption.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      ipAddressType: map['ipAddressType'] as String,
      logPublishingOptions:
          pulumi.Input.decodeList<GetDomainLogPublishingOption>(
            map['logPublishingOptions']!,
            (value) => GetDomainLogPublishingOption.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      nodeToNodeEncryptions:
          pulumi.Input.decodeList<GetDomainNodeToNodeEncryption>(
            map['nodeToNodeEncryptions']!,
            (value) => GetDomainNodeToNodeEncryption.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      offPeakWindowOptions: GetDomainOffPeakWindowOptions.fromMap(
        (map['offPeakWindowOptions']! as Map).cast<String, dynamic>(),
      ),
      processing: map['processing'] as bool,
      region: map['region'] as String,
      snapshotOptions: pulumi.Input.decodeList<GetDomainSnapshotOption>(
        map['snapshotOptions']!,
        (value) => GetDomainSnapshotOption.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      softwareUpdateOptions:
          pulumi.Input.decodeList<GetDomainSoftwareUpdateOption>(
            map['softwareUpdateOptions']!,
            (value) => GetDomainSoftwareUpdateOption.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcOptions: pulumi.Input.decodeList<GetDomainVpcOption>(
        map['vpcOptions']!,
        (value) =>
            GetDomainVpcOption.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}

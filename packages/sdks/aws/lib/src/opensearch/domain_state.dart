// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_advanced_security_options.dart';
import 'domain_aiml_options.dart';
import 'domain_auto_tune_options.dart';
import 'domain_cluster_config.dart';
import 'domain_cognito_options.dart';
import 'domain_domain_endpoint_options.dart';
import 'domain_ebs_options.dart';
import 'domain_encrypt_at_rest.dart';
import 'domain_identity_center_options.dart';
import 'domain_log_publishing_option.dart';
import 'domain_node_to_node_encryption.dart';
import 'domain_off_peak_window_options.dart';
import 'domain_snapshot_options.dart';
import 'domain_software_update_options.dart';
import 'domain_vpc_options.dart';

/// Input properties used for looking up and filtering Domain resources.
class DomainState {
  /// IAM policy document specifying the access policies for the domain.
  final pulumi.Input<String>? accessPolicies;
  /// Key-value string pairs to specify advanced configuration options. Note that the values for these configuration options must be strings (wrapped in quotes) or they may be wrong and cause a perpetual diff, causing the provider to want to recreate your OpenSearch domain on every apply.
  final pulumi.Input<Map<String, String>>? advancedOptions;
  /// Configuration block for [fine-grained access control](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/fgac.html). Detailed below.
  final pulumi.Input<DomainAdvancedSecurityOptions>? advancedSecurityOptions;
  /// Configuration block for parameters required to enable all machine learning features. Detailed below.
  final pulumi.Input<DomainAimlOptions>? aimlOptions;
  /// ARN of the domain.
  final pulumi.Input<String>? arn;
  /// Configuration block for the Auto-Tune options of the domain. Detailed below.
  final pulumi.Input<DomainAutoTuneOptions>? autoTuneOptions;
  /// Configuration block for the cluster of the domain. Detailed below.
  final pulumi.Input<DomainClusterConfig>? clusterConfig;
  /// Configuration block for authenticating dashboard with Cognito. Detailed below.
  final pulumi.Input<DomainCognitoOptions>? cognitoOptions;
  /// Domain-specific endpoint for Dashboard without https scheme.
  final pulumi.Input<String>? dashboardEndpoint;
  /// V2 domain endpoint for Dashboard that works with both IPv4 and IPv6 addresses, without https scheme.
  final pulumi.Input<String>? dashboardEndpointV2;
  /// Configuration block for domain endpoint HTTP(S) related options. Detailed below.
  final pulumi.Input<DomainDomainEndpointOptions>? domainEndpointOptions;
  /// Dual stack hosted zone ID for the domain.
  final pulumi.Input<String>? domainEndpointV2HostedZoneId;
  /// Unique identifier for the domain.
  final pulumi.Input<String>? domainId;
  /// Name of the domain.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? domainName;
  /// Configuration block for EBS related options, may be required based on chosen [instance size](https://aws.amazon.com/opensearch-service/pricing/). Detailed below.
  final pulumi.Input<DomainEbsOptions>? ebsOptions;
  /// Configuration block for encrypt at rest options. Only available for [certain instance types](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/encryption-at-rest.html). Detailed below.
  final pulumi.Input<DomainEncryptAtRest>? encryptAtRest;
  /// Domain-specific endpoint used to submit index, search, and data upload requests.
  final pulumi.Input<String>? endpoint;
  /// V2 domain endpoint that works with both IPv4 and IPv6 addresses, used to submit index, search, and data upload requests.
  final pulumi.Input<String>? endpointV2;
  /// Either `Elasticsearch_X.Y` or `OpenSearch_X.Y` to specify the engine version for the Amazon OpenSearch Service domain. For example, `OpenSearch_1.0` or `Elasticsearch_7.9`.
  /// See [Creating and managing Amazon OpenSearch Service domains](http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomains).
  /// Defaults to the lastest version of OpenSearch.
  final pulumi.Input<String>? engineVersion;
  /// Configuration block for enabling and managing IAM Identity Center integration within a domain. Detailed below.
  final pulumi.Input<DomainIdentityCenterOptions>? identityCenterOptions;
  /// The IP address type for the endpoint. Valid values are `ipv4` and `dualstack`.
  final pulumi.Input<String>? ipAddressType;
  /// Configuration block for publishing slow and application logs to CloudWatch Logs. This block can be declared multiple times, for each log_type, within the same resource. Detailed below.
  final pulumi.Input<List<DomainLogPublishingOption>>? logPublishingOptions;
  /// Configuration block for node-to-node encryption options. Detailed below.
  final pulumi.Input<DomainNodeToNodeEncryption>? nodeToNodeEncryption;
  /// Configuration to add Off Peak update options. ([documentation](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/off-peak.html)). Detailed below.
  final pulumi.Input<DomainOffPeakWindowOptions>? offPeakWindowOptions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block for snapshot related options. Detailed below. DEPRECATED. For domains running OpenSearch 5.3 and later, Amazon OpenSearch takes hourly automated snapshots, making this setting irrelevant. For domains running earlier versions, OpenSearch takes daily automated snapshots.
  final pulumi.Input<DomainSnapshotOptions>? snapshotOptions;
  /// Software update options for the domain. Detailed below.
  final pulumi.Input<DomainSoftwareUpdateOptions>? softwareUpdateOptions;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Configuration block for VPC related options. Adding or removing this configuration forces a new resource ([documentation](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html)). Detailed below.
  final pulumi.Input<DomainVpcOptions>? vpcOptions;

  /// Creates a new [DomainState].
  /// [accessPolicies] IAM policy document specifying the access policies for the domain.
  /// [advancedOptions] Key-value string pairs to specify advanced configuration options. Note that the values for these configuration options must be strings (wrapped in quotes) or they may be wrong and cause a perpetual diff, causing the provider to want to recreate your OpenSearch domain on every apply.
  /// [advancedSecurityOptions] Configuration block for [fine-grained access control](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/fgac.html). Detailed below.
  /// [aimlOptions] Configuration block for parameters required to enable all machine learning features. Detailed below.
  /// [arn] ARN of the domain.
  /// [autoTuneOptions] Configuration block for the Auto-Tune options of the domain. Detailed below.
  /// [clusterConfig] Configuration block for the cluster of the domain. Detailed below.
  /// [cognitoOptions] Configuration block for authenticating dashboard with Cognito. Detailed below.
  /// [dashboardEndpoint] Domain-specific endpoint for Dashboard without https scheme.
  /// [dashboardEndpointV2] V2 domain endpoint for Dashboard that works with both IPv4 and IPv6 addresses, without https scheme.
  /// [domainEndpointOptions] Configuration block for domain endpoint HTTP(S) related options. Detailed below.
  /// [domainEndpointV2HostedZoneId] Dual stack hosted zone ID for the domain.
  /// [domainId] Unique identifier for the domain.
  /// [domainName] Name of the domain.
  /// [ebsOptions] Configuration block for EBS related options, may be required based on chosen [instance size](https://aws.amazon.com/opensearch-service/pricing/). Detailed below.
  /// [encryptAtRest] Configuration block for encrypt at rest options. Only available for [certain instance types](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/encryption-at-rest.html). Detailed below.
  /// [endpoint] Domain-specific endpoint used to submit index, search, and data upload requests.
  /// [endpointV2] V2 domain endpoint that works with both IPv4 and IPv6 addresses, used to submit index, search, and data upload requests.
  /// [engineVersion] Either `Elasticsearch_X.Y` or `OpenSearch_X.Y` to specify the engine version for the Amazon OpenSearch Service domain. For example, `OpenSearch_1.0` or `Elasticsearch_7.9`.
  /// [identityCenterOptions] Configuration block for enabling and managing IAM Identity Center integration within a domain. Detailed below.
  /// [ipAddressType] The IP address type for the endpoint. Valid values are `ipv4` and `dualstack`.
  /// [logPublishingOptions] Configuration block for publishing slow and application logs to CloudWatch Logs. This block can be declared multiple times, for each log_type, within the same resource. Detailed below.
  /// [nodeToNodeEncryption] Configuration block for node-to-node encryption options. Detailed below.
  /// [offPeakWindowOptions] Configuration to add Off Peak update options. ([documentation](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/off-peak.html)). Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [snapshotOptions] Configuration block for snapshot related options. Detailed below. DEPRECATED. For domains running OpenSearch 5.3 and later, Amazon OpenSearch takes hourly automated snapshots, making this setting irrelevant. For domains running earlier versions, OpenSearch takes daily automated snapshots.
  /// [softwareUpdateOptions] Software update options for the domain. Detailed below.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcOptions] Configuration block for VPC related options. Adding or removing this configuration forces a new resource ([documentation](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html)). Detailed below.
  DomainState({
    this.accessPolicies,
    this.advancedOptions,
    this.advancedSecurityOptions,
    this.aimlOptions,
    this.arn,
    this.autoTuneOptions,
    this.clusterConfig,
    this.cognitoOptions,
    this.dashboardEndpoint,
    this.dashboardEndpointV2,
    this.domainEndpointOptions,
    this.domainEndpointV2HostedZoneId,
    this.domainId,
    this.domainName,
    this.ebsOptions,
    this.encryptAtRest,
    this.endpoint,
    this.endpointV2,
    this.engineVersion,
    this.identityCenterOptions,
    this.ipAddressType,
    this.logPublishingOptions,
    this.nodeToNodeEncryption,
    this.offPeakWindowOptions,
    this.region,
    this.snapshotOptions,
    this.softwareUpdateOptions,
    this.tags,
    this.tagsAll,
    this.vpcOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicies': ?accessPolicies,
      'advancedOptions': ?advancedOptions,
      'advancedSecurityOptions': ?pulumi.Input.mapOptionalInputValue<DomainAdvancedSecurityOptions, Map<String, dynamic>>(advancedSecurityOptions, (value) => value.toMap()),
      'aimlOptions': ?pulumi.Input.mapOptionalInputValue<DomainAimlOptions, Map<String, dynamic>>(aimlOptions, (value) => value.toMap()),
      'arn': ?arn,
      'autoTuneOptions': ?pulumi.Input.mapOptionalInputValue<DomainAutoTuneOptions, Map<String, dynamic>>(autoTuneOptions, (value) => value.toMap()),
      'clusterConfig': ?pulumi.Input.mapOptionalInputValue<DomainClusterConfig, Map<String, dynamic>>(clusterConfig, (value) => value.toMap()),
      'cognitoOptions': ?pulumi.Input.mapOptionalInputValue<DomainCognitoOptions, Map<String, dynamic>>(cognitoOptions, (value) => value.toMap()),
      'dashboardEndpoint': ?dashboardEndpoint,
      'dashboardEndpointV2': ?dashboardEndpointV2,
      'domainEndpointOptions': ?pulumi.Input.mapOptionalInputValue<DomainDomainEndpointOptions, Map<String, dynamic>>(domainEndpointOptions, (value) => value.toMap()),
      'domainEndpointV2HostedZoneId': ?domainEndpointV2HostedZoneId,
      'domainId': ?domainId,
      'domainName': ?domainName,
      'ebsOptions': ?pulumi.Input.mapOptionalInputValue<DomainEbsOptions, Map<String, dynamic>>(ebsOptions, (value) => value.toMap()),
      'encryptAtRest': ?pulumi.Input.mapOptionalInputValue<DomainEncryptAtRest, Map<String, dynamic>>(encryptAtRest, (value) => value.toMap()),
      'endpoint': ?endpoint,
      'endpointV2': ?endpointV2,
      'engineVersion': ?engineVersion,
      'identityCenterOptions': ?pulumi.Input.mapOptionalInputValue<DomainIdentityCenterOptions, Map<String, dynamic>>(identityCenterOptions, (value) => value.toMap()),
      'ipAddressType': ?ipAddressType,
      'logPublishingOptions': ?pulumi.Input.mapOptionalInputValue<List<DomainLogPublishingOption>, List<Map<String, dynamic>>>(logPublishingOptions, (value) => pulumi.Input.encodeList<DomainLogPublishingOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeToNodeEncryption': ?pulumi.Input.mapOptionalInputValue<DomainNodeToNodeEncryption, Map<String, dynamic>>(nodeToNodeEncryption, (value) => value.toMap()),
      'offPeakWindowOptions': ?pulumi.Input.mapOptionalInputValue<DomainOffPeakWindowOptions, Map<String, dynamic>>(offPeakWindowOptions, (value) => value.toMap()),
      'region': ?region,
      'snapshotOptions': ?pulumi.Input.mapOptionalInputValue<DomainSnapshotOptions, Map<String, dynamic>>(snapshotOptions, (value) => value.toMap()),
      'softwareUpdateOptions': ?pulumi.Input.mapOptionalInputValue<DomainSoftwareUpdateOptions, Map<String, dynamic>>(softwareUpdateOptions, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcOptions': ?pulumi.Input.mapOptionalInputValue<DomainVpcOptions, Map<String, dynamic>>(vpcOptions, (value) => value.toMap()),
    };
  }

  factory DomainState.fromMap(Map<String, dynamic> map) {
    return DomainState(
      accessPolicies: map['accessPolicies'] == null ? null : (map['accessPolicies'] as String).input(),
      advancedOptions: map['advancedOptions'] == null ? null : ((map['advancedOptions'] as Map).cast<String, String>()).input(),
      advancedSecurityOptions: map['advancedSecurityOptions'] == null ? null : (DomainAdvancedSecurityOptions.fromMap((map['advancedSecurityOptions'] as Map).cast<String, dynamic>())).input(),
      aimlOptions: map['aimlOptions'] == null ? null : (DomainAimlOptions.fromMap((map['aimlOptions'] as Map).cast<String, dynamic>())).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      autoTuneOptions: map['autoTuneOptions'] == null ? null : (DomainAutoTuneOptions.fromMap((map['autoTuneOptions'] as Map).cast<String, dynamic>())).input(),
      clusterConfig: map['clusterConfig'] == null ? null : (DomainClusterConfig.fromMap((map['clusterConfig'] as Map).cast<String, dynamic>())).input(),
      cognitoOptions: map['cognitoOptions'] == null ? null : (DomainCognitoOptions.fromMap((map['cognitoOptions'] as Map).cast<String, dynamic>())).input(),
      dashboardEndpoint: map['dashboardEndpoint'] == null ? null : (map['dashboardEndpoint'] as String).input(),
      dashboardEndpointV2: map['dashboardEndpointV2'] == null ? null : (map['dashboardEndpointV2'] as String).input(),
      domainEndpointOptions: map['domainEndpointOptions'] == null ? null : (DomainDomainEndpointOptions.fromMap((map['domainEndpointOptions'] as Map).cast<String, dynamic>())).input(),
      domainEndpointV2HostedZoneId: map['domainEndpointV2HostedZoneId'] == null ? null : (map['domainEndpointV2HostedZoneId'] as String).input(),
      domainId: map['domainId'] == null ? null : (map['domainId'] as String).input(),
      domainName: map['domainName'] == null ? null : (map['domainName'] as String).input(),
      ebsOptions: map['ebsOptions'] == null ? null : (DomainEbsOptions.fromMap((map['ebsOptions'] as Map).cast<String, dynamic>())).input(),
      encryptAtRest: map['encryptAtRest'] == null ? null : (DomainEncryptAtRest.fromMap((map['encryptAtRest'] as Map).cast<String, dynamic>())).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint'] as String).input(),
      endpointV2: map['endpointV2'] == null ? null : (map['endpointV2'] as String).input(),
      engineVersion: map['engineVersion'] == null ? null : (map['engineVersion'] as String).input(),
      identityCenterOptions: map['identityCenterOptions'] == null ? null : (DomainIdentityCenterOptions.fromMap((map['identityCenterOptions'] as Map).cast<String, dynamic>())).input(),
      ipAddressType: map['ipAddressType'] == null ? null : (map['ipAddressType'] as String).input(),
      logPublishingOptions: map['logPublishingOptions'] == null ? null : (pulumi.Input.decodeList<DomainLogPublishingOption>(map['logPublishingOptions'], (value) => DomainLogPublishingOption.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nodeToNodeEncryption: map['nodeToNodeEncryption'] == null ? null : (DomainNodeToNodeEncryption.fromMap((map['nodeToNodeEncryption'] as Map).cast<String, dynamic>())).input(),
      offPeakWindowOptions: map['offPeakWindowOptions'] == null ? null : (DomainOffPeakWindowOptions.fromMap((map['offPeakWindowOptions'] as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      snapshotOptions: map['snapshotOptions'] == null ? null : (DomainSnapshotOptions.fromMap((map['snapshotOptions'] as Map).cast<String, dynamic>())).input(),
      softwareUpdateOptions: map['softwareUpdateOptions'] == null ? null : (DomainSoftwareUpdateOptions.fromMap((map['softwareUpdateOptions'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      vpcOptions: map['vpcOptions'] == null ? null : (DomainVpcOptions.fromMap((map['vpcOptions'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


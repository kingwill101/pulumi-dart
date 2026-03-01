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

/// {@template pulumi_opensearch_domain_domain_args_doc}
/// The set of arguments for Domain.
/// {@endtemplate}
/// {@macro pulumi_opensearch_domain_domain_args_doc}
class DomainArgs {
  /// IAM policy document specifying the access policies for the domain.
  final pulumi.Input<String>? accessPolicies;

  /// Key-value string pairs to specify advanced configuration options. Note that the values for these configuration options must be strings (wrapped in quotes) or they may be wrong and cause a perpetual diff, causing the provider to want to recreate your OpenSearch domain on every apply.
  final pulumi.Input<Map<String, String>>? advancedOptions;

  /// Configuration block for [fine-grained access control](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/fgac.html). Detailed below.
  final pulumi.Input<DomainAdvancedSecurityOptions>? advancedSecurityOptions;

  /// Configuration block for parameters required to enable all machine learning features. Detailed below.
  final pulumi.Input<DomainAimlOptions>? aimlOptions;

  /// Configuration block for the Auto-Tune options of the domain. Detailed below.
  final pulumi.Input<DomainAutoTuneOptions>? autoTuneOptions;

  /// Configuration block for the cluster of the domain. Detailed below.
  final pulumi.Input<DomainClusterConfig>? clusterConfig;

  /// Configuration block for authenticating dashboard with Cognito. Detailed below.
  final pulumi.Input<DomainCognitoOptions>? cognitoOptions;

  /// Configuration block for domain endpoint HTTP(S) related options. Detailed below.
  final pulumi.Input<DomainDomainEndpointOptions>? domainEndpointOptions;

  /// Name of the domain.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? domainName;

  /// Configuration block for EBS related options, may be required based on chosen [instance size](https://aws.amazon.com/opensearch-service/pricing/). Detailed below.
  final pulumi.Input<DomainEbsOptions>? ebsOptions;

  /// Configuration block for encrypt at rest options. Only available for [certain instance types](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/encryption-at-rest.html). Detailed below.
  final pulumi.Input<DomainEncryptAtRest>? encryptAtRest;

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

  /// Configuration block for VPC related options. Adding or removing this configuration forces a new resource ([documentation](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html)). Detailed below.
  final pulumi.Input<DomainVpcOptions>? vpcOptions;

  /// Creates a new [DomainArgs].
  /// [accessPolicies] IAM policy document specifying the access policies for the domain.
  /// [advancedOptions] Key-value string pairs to specify advanced configuration options. Note that the values for these configuration options must be strings (wrapped in quotes) or they may be wrong and cause a perpetual diff, causing the provider to want to recreate your OpenSearch domain on every apply.
  /// [advancedSecurityOptions] Configuration block for [fine-grained access control](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/fgac.html). Detailed below.
  /// [aimlOptions] Configuration block for parameters required to enable all machine learning features. Detailed below.
  /// [autoTuneOptions] Configuration block for the Auto-Tune options of the domain. Detailed below.
  /// [clusterConfig] Configuration block for the cluster of the domain. Detailed below.
  /// [cognitoOptions] Configuration block for authenticating dashboard with Cognito. Detailed below.
  /// [domainEndpointOptions] Configuration block for domain endpoint HTTP(S) related options. Detailed below.
  /// [domainName] Name of the domain.
  /// [ebsOptions] Configuration block for EBS related options, may be required based on chosen [instance size](https://aws.amazon.com/opensearch-service/pricing/). Detailed below.
  /// [encryptAtRest] Configuration block for encrypt at rest options. Only available for [certain instance types](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/encryption-at-rest.html). Detailed below.
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
  /// [vpcOptions] Configuration block for VPC related options. Adding or removing this configuration forces a new resource ([documentation](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html)). Detailed below.
  DomainArgs({
    String? accessPolicies,
    Map<String, String>? advancedOptions,
    DomainAdvancedSecurityOptions? advancedSecurityOptions,
    DomainAimlOptions? aimlOptions,
    DomainAutoTuneOptions? autoTuneOptions,
    DomainClusterConfig? clusterConfig,
    DomainCognitoOptions? cognitoOptions,
    DomainDomainEndpointOptions? domainEndpointOptions,
    String? domainName,
    DomainEbsOptions? ebsOptions,
    DomainEncryptAtRest? encryptAtRest,
    String? engineVersion,
    DomainIdentityCenterOptions? identityCenterOptions,
    String? ipAddressType,
    List<DomainLogPublishingOption>? logPublishingOptions,
    DomainNodeToNodeEncryption? nodeToNodeEncryption,
    DomainOffPeakWindowOptions? offPeakWindowOptions,
    String? region,
    DomainSnapshotOptions? snapshotOptions,
    DomainSoftwareUpdateOptions? softwareUpdateOptions,
    Map<String, String>? tags,
    DomainVpcOptions? vpcOptions,
  }) : accessPolicies = pulumi.Input.asOptionalInput<String>(accessPolicies),
       advancedOptions = pulumi.Input.asOptionalInput<Map<String, String>>(
         advancedOptions,
       ),
       advancedSecurityOptions =
           pulumi.Input.asOptionalInput<DomainAdvancedSecurityOptions>(
             advancedSecurityOptions,
           ),
       aimlOptions = pulumi.Input.asOptionalInput<DomainAimlOptions>(
         aimlOptions,
       ),
       autoTuneOptions = pulumi.Input.asOptionalInput<DomainAutoTuneOptions>(
         autoTuneOptions,
       ),
       clusterConfig = pulumi.Input.asOptionalInput<DomainClusterConfig>(
         clusterConfig,
       ),
       cognitoOptions = pulumi.Input.asOptionalInput<DomainCognitoOptions>(
         cognitoOptions,
       ),
       domainEndpointOptions =
           pulumi.Input.asOptionalInput<DomainDomainEndpointOptions>(
             domainEndpointOptions,
           ),
       domainName = pulumi.Input.asOptionalInput<String>(domainName),
       ebsOptions = pulumi.Input.asOptionalInput<DomainEbsOptions>(ebsOptions),
       encryptAtRest = pulumi.Input.asOptionalInput<DomainEncryptAtRest>(
         encryptAtRest,
       ),
       engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
       identityCenterOptions =
           pulumi.Input.asOptionalInput<DomainIdentityCenterOptions>(
             identityCenterOptions,
           ),
       ipAddressType = pulumi.Input.asOptionalInput<String>(ipAddressType),
       logPublishingOptions =
           pulumi.Input.asOptionalInput<List<DomainLogPublishingOption>>(
             logPublishingOptions,
           ),
       nodeToNodeEncryption =
           pulumi.Input.asOptionalInput<DomainNodeToNodeEncryption>(
             nodeToNodeEncryption,
           ),
       offPeakWindowOptions =
           pulumi.Input.asOptionalInput<DomainOffPeakWindowOptions>(
             offPeakWindowOptions,
           ),
       region = pulumi.Input.asOptionalInput<String>(region),
       snapshotOptions = pulumi.Input.asOptionalInput<DomainSnapshotOptions>(
         snapshotOptions,
       ),
       softwareUpdateOptions =
           pulumi.Input.asOptionalInput<DomainSoftwareUpdateOptions>(
             softwareUpdateOptions,
           ),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       vpcOptions = pulumi.Input.asOptionalInput<DomainVpcOptions>(vpcOptions);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicies': ?accessPolicies,
      'advancedOptions': ?advancedOptions,
      'advancedSecurityOptions':
          ?pulumi.Input.mapOptionalInputValue<
            DomainAdvancedSecurityOptions,
            Map<String, dynamic>
          >(advancedSecurityOptions, (value) => value.toMap()),
      'aimlOptions':
          ?pulumi.Input.mapOptionalInputValue<
            DomainAimlOptions,
            Map<String, dynamic>
          >(aimlOptions, (value) => value.toMap()),
      'autoTuneOptions':
          ?pulumi.Input.mapOptionalInputValue<
            DomainAutoTuneOptions,
            Map<String, dynamic>
          >(autoTuneOptions, (value) => value.toMap()),
      'clusterConfig':
          ?pulumi.Input.mapOptionalInputValue<
            DomainClusterConfig,
            Map<String, dynamic>
          >(clusterConfig, (value) => value.toMap()),
      'cognitoOptions':
          ?pulumi.Input.mapOptionalInputValue<
            DomainCognitoOptions,
            Map<String, dynamic>
          >(cognitoOptions, (value) => value.toMap()),
      'domainEndpointOptions':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDomainEndpointOptions,
            Map<String, dynamic>
          >(domainEndpointOptions, (value) => value.toMap()),
      'domainName': ?domainName,
      'ebsOptions':
          ?pulumi.Input.mapOptionalInputValue<
            DomainEbsOptions,
            Map<String, dynamic>
          >(ebsOptions, (value) => value.toMap()),
      'encryptAtRest':
          ?pulumi.Input.mapOptionalInputValue<
            DomainEncryptAtRest,
            Map<String, dynamic>
          >(encryptAtRest, (value) => value.toMap()),
      'engineVersion': ?engineVersion,
      'identityCenterOptions':
          ?pulumi.Input.mapOptionalInputValue<
            DomainIdentityCenterOptions,
            Map<String, dynamic>
          >(identityCenterOptions, (value) => value.toMap()),
      'ipAddressType': ?ipAddressType,
      'logPublishingOptions':
          ?pulumi.Input.mapOptionalInputValue<
            List<DomainLogPublishingOption>,
            List<Map<String, dynamic>>
          >(
            logPublishingOptions,
            (value) =>
                pulumi.Input.encodeList<
                  DomainLogPublishingOption,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'nodeToNodeEncryption':
          ?pulumi.Input.mapOptionalInputValue<
            DomainNodeToNodeEncryption,
            Map<String, dynamic>
          >(nodeToNodeEncryption, (value) => value.toMap()),
      'offPeakWindowOptions':
          ?pulumi.Input.mapOptionalInputValue<
            DomainOffPeakWindowOptions,
            Map<String, dynamic>
          >(offPeakWindowOptions, (value) => value.toMap()),
      'region': ?region,
      'snapshotOptions':
          ?pulumi.Input.mapOptionalInputValue<
            DomainSnapshotOptions,
            Map<String, dynamic>
          >(snapshotOptions, (value) => value.toMap()),
      'softwareUpdateOptions':
          ?pulumi.Input.mapOptionalInputValue<
            DomainSoftwareUpdateOptions,
            Map<String, dynamic>
          >(softwareUpdateOptions, (value) => value.toMap()),
      'tags': ?tags,
      'vpcOptions':
          ?pulumi.Input.mapOptionalInputValue<
            DomainVpcOptions,
            Map<String, dynamic>
          >(vpcOptions, (value) => value.toMap()),
    };
  }

  factory DomainArgs.fromMap(Map<String, dynamic> map) {
    return DomainArgs(
      accessPolicies: map['accessPolicies'] == null
          ? null
          : map['accessPolicies'] as String,
      advancedOptions: map['advancedOptions'] == null
          ? null
          : (map['advancedOptions'] as Map).cast<String, String>(),
      advancedSecurityOptions: map['advancedSecurityOptions'] == null
          ? null
          : DomainAdvancedSecurityOptions.fromMap(
              (map['advancedSecurityOptions'] as Map).cast<String, dynamic>(),
            ),
      aimlOptions: map['aimlOptions'] == null
          ? null
          : DomainAimlOptions.fromMap(
              (map['aimlOptions'] as Map).cast<String, dynamic>(),
            ),
      autoTuneOptions: map['autoTuneOptions'] == null
          ? null
          : DomainAutoTuneOptions.fromMap(
              (map['autoTuneOptions'] as Map).cast<String, dynamic>(),
            ),
      clusterConfig: map['clusterConfig'] == null
          ? null
          : DomainClusterConfig.fromMap(
              (map['clusterConfig'] as Map).cast<String, dynamic>(),
            ),
      cognitoOptions: map['cognitoOptions'] == null
          ? null
          : DomainCognitoOptions.fromMap(
              (map['cognitoOptions'] as Map).cast<String, dynamic>(),
            ),
      domainEndpointOptions: map['domainEndpointOptions'] == null
          ? null
          : DomainDomainEndpointOptions.fromMap(
              (map['domainEndpointOptions'] as Map).cast<String, dynamic>(),
            ),
      domainName: map['domainName'] == null
          ? null
          : map['domainName'] as String,
      ebsOptions: map['ebsOptions'] == null
          ? null
          : DomainEbsOptions.fromMap(
              (map['ebsOptions'] as Map).cast<String, dynamic>(),
            ),
      encryptAtRest: map['encryptAtRest'] == null
          ? null
          : DomainEncryptAtRest.fromMap(
              (map['encryptAtRest'] as Map).cast<String, dynamic>(),
            ),
      engineVersion: map['engineVersion'] == null
          ? null
          : map['engineVersion'] as String,
      identityCenterOptions: map['identityCenterOptions'] == null
          ? null
          : DomainIdentityCenterOptions.fromMap(
              (map['identityCenterOptions'] as Map).cast<String, dynamic>(),
            ),
      ipAddressType: map['ipAddressType'] == null
          ? null
          : map['ipAddressType'] as String,
      logPublishingOptions: map['logPublishingOptions'] == null
          ? null
          : pulumi.Input.decodeList<DomainLogPublishingOption>(
              map['logPublishingOptions'],
              (value) => DomainLogPublishingOption.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      nodeToNodeEncryption: map['nodeToNodeEncryption'] == null
          ? null
          : DomainNodeToNodeEncryption.fromMap(
              (map['nodeToNodeEncryption'] as Map).cast<String, dynamic>(),
            ),
      offPeakWindowOptions: map['offPeakWindowOptions'] == null
          ? null
          : DomainOffPeakWindowOptions.fromMap(
              (map['offPeakWindowOptions'] as Map).cast<String, dynamic>(),
            ),
      region: map['region'] == null ? null : map['region'] as String,
      snapshotOptions: map['snapshotOptions'] == null
          ? null
          : DomainSnapshotOptions.fromMap(
              (map['snapshotOptions'] as Map).cast<String, dynamic>(),
            ),
      softwareUpdateOptions: map['softwareUpdateOptions'] == null
          ? null
          : DomainSoftwareUpdateOptions.fromMap(
              (map['softwareUpdateOptions'] as Map).cast<String, dynamic>(),
            ),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      vpcOptions: map['vpcOptions'] == null
          ? null
          : DomainVpcOptions.fromMap(
              (map['vpcOptions'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

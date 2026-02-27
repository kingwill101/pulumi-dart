// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../domain_advanced_security_options/domain_advanced_security_options.dart';
import '../domain_auto_tune_options/domain_auto_tune_options.dart';
import '../domain_cluster_config/domain_cluster_config.dart';
import '../domain_cognito_options/domain_cognito_options.dart';
import '../domain_domain_endpoint_options/domain_domain_endpoint_options.dart';
import '../domain_ebs_options/domain_ebs_options.dart';
import '../domain_encrypt_at_rest/domain_encrypt_at_rest.dart';
import '../domain_log_publishing_option/domain_log_publishing_option.dart';
import '../domain_node_to_node_encryption/domain_node_to_node_encryption.dart';
import '../domain_snapshot_options/domain_snapshot_options.dart';
import '../domain_vpc_options/domain_vpc_options.dart';

/// The set of arguments for Domain.
class DomainArgs5 {
  /// IAM policy document specifying the access policies for the domain.
  final Input<String>? accessPolicies;

  /// Key-value string pairs to specify advanced configuration options. Note that the values for these configuration options must be strings (wrapped in quotes) or they may be wrong and cause a perpetual diff, causing the provider to want to recreate your Elasticsearch domain on every apply.
  final Input<Map<String, String>>? advancedOptions;

  /// Configuration block for [fine-grained access control](https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/fgac.html). Detailed below.
  final Input<DomainAdvancedSecurityOptions>? advancedSecurityOptions;

  /// Configuration block for the Auto-Tune options of the domain. Detailed below.
  final Input<DomainAutoTuneOptions>? autoTuneOptions;

  /// Configuration block for the cluster of the domain. Detailed below.
  final Input<DomainClusterConfig>? clusterConfig;

  /// Configuration block for authenticating Kibana with Cognito. Detailed below.
  final Input<DomainCognitoOptions>? cognitoOptions;

  /// Configuration block for domain endpoint HTTP(S) related options. Detailed below.
  final Input<DomainDomainEndpointOptions>? domainEndpointOptions;

  /// Name of the domain.
  ///
  /// The following arguments are optional:
  final Input<String>? domainName;

  /// Configuration block for EBS related options, may be required based on chosen [instance size](https://aws.amazon.com/elasticsearch-service/pricing/). Detailed below.
  final Input<DomainEbsOptions>? ebsOptions;

  /// Version of Elasticsearch to deploy. Defaults to `1.5`.
  final Input<String>? elasticsearchVersion;

  /// Configuration block for encrypt at rest options. Only available for [certain instance types](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/aes-supported-instance-types.html). Detailed below.
  final Input<DomainEncryptAtRest>? encryptAtRest;

  /// Configuration block for publishing slow and application logs to CloudWatch Logs. This block can be declared multiple times, for each log_type, within the same resource. Detailed below.
  final Input<List<DomainLogPublishingOption>>? logPublishingOptions;

  /// Configuration block for node-to-node encryption options. Detailed below.
  final Input<DomainNodeToNodeEncryption>? nodeToNodeEncryption;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Configuration block for snapshot related options. Detailed below. DEPRECATED. For domains running Elasticsearch 5.3 and later, Amazon ES takes hourly automated snapshots, making this setting irrelevant. For domains running earlier versions of Elasticsearch, Amazon ES takes daily automated snapshots.
  final Input<DomainSnapshotOptions>? snapshotOptions;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Configuration block for VPC related options. Adding or removing this configuration forces a new resource ([documentation](https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-vpc-limitations)). Detailed below.
  final Input<DomainVpcOptions>? vpcOptions;

  DomainArgs5({
    this.accessPolicies,
    this.advancedOptions,
    this.advancedSecurityOptions,
    this.autoTuneOptions,
    this.clusterConfig,
    this.cognitoOptions,
    this.domainEndpointOptions,
    this.domainName,
    this.ebsOptions,
    this.elasticsearchVersion,
    this.encryptAtRest,
    this.logPublishingOptions,
    this.nodeToNodeEncryption,
    this.region,
    this.snapshotOptions,
    this.tags,
    this.vpcOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessPoliciesValue = accessPolicies;
    if (accessPoliciesValue != null) {
      map['accessPolicies'] = accessPoliciesValue;
    }
    final advancedOptionsValue = advancedOptions;
    if (advancedOptionsValue != null) {
      map['advancedOptions'] = advancedOptionsValue;
    }
    final advancedSecurityOptionsValue = advancedSecurityOptions;
    if (advancedSecurityOptionsValue != null) {
      map['advancedSecurityOptions'] = Input.mapOptionalInputValue<
              DomainAdvancedSecurityOptions, Map<String, dynamic>>(
          advancedSecurityOptionsValue, (value) => value.toMap());
    }
    final autoTuneOptionsValue = autoTuneOptions;
    if (autoTuneOptionsValue != null) {
      map['autoTuneOptions'] = Input.mapOptionalInputValue<
          DomainAutoTuneOptions,
          Map<String, dynamic>>(autoTuneOptionsValue, (value) => value.toMap());
    }
    final clusterConfigValue = clusterConfig;
    if (clusterConfigValue != null) {
      map['clusterConfig'] = Input.mapOptionalInputValue<DomainClusterConfig,
          Map<String, dynamic>>(clusterConfigValue, (value) => value.toMap());
    }
    final cognitoOptionsValue = cognitoOptions;
    if (cognitoOptionsValue != null) {
      map['cognitoOptions'] = Input.mapOptionalInputValue<DomainCognitoOptions,
          Map<String, dynamic>>(cognitoOptionsValue, (value) => value.toMap());
    }
    final domainEndpointOptionsValue = domainEndpointOptions;
    if (domainEndpointOptionsValue != null) {
      map['domainEndpointOptions'] = Input.mapOptionalInputValue<
              DomainDomainEndpointOptions, Map<String, dynamic>>(
          domainEndpointOptionsValue, (value) => value.toMap());
    }
    final domainNameValue = domainName;
    if (domainNameValue != null) {
      map['domainName'] = domainNameValue;
    }
    final ebsOptionsValue = ebsOptions;
    if (ebsOptionsValue != null) {
      map['ebsOptions'] =
          Input.mapOptionalInputValue<DomainEbsOptions, Map<String, dynamic>>(
              ebsOptionsValue, (value) => value.toMap());
    }
    final elasticsearchVersionValue = elasticsearchVersion;
    if (elasticsearchVersionValue != null) {
      map['elasticsearchVersion'] = elasticsearchVersionValue;
    }
    final encryptAtRestValue = encryptAtRest;
    if (encryptAtRestValue != null) {
      map['encryptAtRest'] = Input.mapOptionalInputValue<DomainEncryptAtRest,
          Map<String, dynamic>>(encryptAtRestValue, (value) => value.toMap());
    }
    final logPublishingOptionsValue = logPublishingOptions;
    if (logPublishingOptionsValue != null) {
      map['logPublishingOptions'] = Input.mapOptionalInputValue<
              List<DomainLogPublishingOption>, List<Map<String, dynamic>>>(
          logPublishingOptionsValue,
          (value) =>
              Input.encodeList<DomainLogPublishingOption, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final nodeToNodeEncryptionValue = nodeToNodeEncryption;
    if (nodeToNodeEncryptionValue != null) {
      map['nodeToNodeEncryption'] = Input.mapOptionalInputValue<
              DomainNodeToNodeEncryption, Map<String, dynamic>>(
          nodeToNodeEncryptionValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final snapshotOptionsValue = snapshotOptions;
    if (snapshotOptionsValue != null) {
      map['snapshotOptions'] = Input.mapOptionalInputValue<
          DomainSnapshotOptions,
          Map<String, dynamic>>(snapshotOptionsValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final vpcOptionsValue = vpcOptions;
    if (vpcOptionsValue != null) {
      map['vpcOptions'] =
          Input.mapOptionalInputValue<DomainVpcOptions, Map<String, dynamic>>(
              vpcOptionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DomainArgs5.fromMap(Map<String, dynamic> map) {
    return DomainArgs5(
      accessPolicies: Input.asOptionalInput<String>(map['accessPolicies']),
      advancedOptions:
          Input.asOptionalInput<Map<String, String>>(map['advancedOptions']),
      advancedSecurityOptions:
          Input.asOptionalInput<DomainAdvancedSecurityOptions>(
              map['advancedSecurityOptions']),
      autoTuneOptions:
          Input.asOptionalInput<DomainAutoTuneOptions>(map['autoTuneOptions']),
      clusterConfig:
          Input.asOptionalInput<DomainClusterConfig>(map['clusterConfig']),
      cognitoOptions:
          Input.asOptionalInput<DomainCognitoOptions>(map['cognitoOptions']),
      domainEndpointOptions: Input.asOptionalInput<DomainDomainEndpointOptions>(
          map['domainEndpointOptions']),
      domainName: Input.asOptionalInput<String>(map['domainName']),
      ebsOptions: Input.asOptionalInput<DomainEbsOptions>(map['ebsOptions']),
      elasticsearchVersion:
          Input.asOptionalInput<String>(map['elasticsearchVersion']),
      encryptAtRest:
          Input.asOptionalInput<DomainEncryptAtRest>(map['encryptAtRest']),
      logPublishingOptions:
          Input.asOptionalInput<List<DomainLogPublishingOption>>(
              map['logPublishingOptions']),
      nodeToNodeEncryption: Input.asOptionalInput<DomainNodeToNodeEncryption>(
          map['nodeToNodeEncryption']),
      region: Input.asOptionalInput<String>(map['region']),
      snapshotOptions:
          Input.asOptionalInput<DomainSnapshotOptions>(map['snapshotOptions']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcOptions: Input.asOptionalInput<DomainVpcOptions>(map['vpcOptions']),
    );
  }
}

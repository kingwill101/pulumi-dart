// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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
class DomainElasticsearchArgs {
  /// IAM policy document specifying the access policies for the domain.
  final pulumi.Input<String>? accessPolicies;

  /// Key-value string pairs to specify advanced configuration options. Note that the values for these configuration options must be strings (wrapped in quotes) or they may be wrong and cause a perpetual diff, causing the provider to want to recreate your Elasticsearch domain on every apply.
  final pulumi.Input<Map<String, String>>? advancedOptions;

  /// Configuration block for [fine-grained access control](https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/fgac.html). Detailed below.
  final pulumi.Input<DomainAdvancedSecurityOptions>? advancedSecurityOptions;

  /// Configuration block for the Auto-Tune options of the domain. Detailed below.
  final pulumi.Input<DomainAutoTuneOptions>? autoTuneOptions;

  /// Configuration block for the cluster of the domain. Detailed below.
  final pulumi.Input<DomainClusterConfig>? clusterConfig;

  /// Configuration block for authenticating Kibana with Cognito. Detailed below.
  final pulumi.Input<DomainCognitoOptions>? cognitoOptions;

  /// Configuration block for domain endpoint HTTP(S) related options. Detailed below.
  final pulumi.Input<DomainDomainEndpointOptions>? domainEndpointOptions;

  /// Name of the domain.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? domainName;

  /// Configuration block for EBS related options, may be required based on chosen [instance size](https://aws.amazon.com/elasticsearch-service/pricing/). Detailed below.
  final pulumi.Input<DomainEbsOptions>? ebsOptions;

  /// Version of Elasticsearch to deploy. Defaults to `1.5`.
  final pulumi.Input<String>? elasticsearchVersion;

  /// Configuration block for encrypt at rest options. Only available for [certain instance types](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/aes-supported-instance-types.html). Detailed below.
  final pulumi.Input<DomainEncryptAtRest>? encryptAtRest;

  /// Configuration block for publishing slow and application logs to CloudWatch Logs. This block can be declared multiple times, for each log_type, within the same resource. Detailed below.
  final pulumi.Input<List<DomainLogPublishingOption>>? logPublishingOptions;

  /// Configuration block for node-to-node encryption options. Detailed below.
  final pulumi.Input<DomainNodeToNodeEncryption>? nodeToNodeEncryption;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Configuration block for snapshot related options. Detailed below. DEPRECATED. For domains running Elasticsearch 5.3 and later, Amazon ES takes hourly automated snapshots, making this setting irrelevant. For domains running earlier versions of Elasticsearch, Amazon ES takes daily automated snapshots.
  final pulumi.Input<DomainSnapshotOptions>? snapshotOptions;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Configuration block for VPC related options. Adding or removing this configuration forces a new resource ([documentation](https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-vpc-limitations)). Detailed below.
  final pulumi.Input<DomainVpcOptions>? vpcOptions;

  DomainElasticsearchArgs({
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
      map['advancedSecurityOptions'] = pulumi.Input.mapOptionalInputValue<
              DomainAdvancedSecurityOptions, Map<String, dynamic>>(
          advancedSecurityOptionsValue, (value) => value.toMap());
    }
    final autoTuneOptionsValue = autoTuneOptions;
    if (autoTuneOptionsValue != null) {
      map['autoTuneOptions'] = pulumi.Input.mapOptionalInputValue<
          DomainAutoTuneOptions,
          Map<String, dynamic>>(autoTuneOptionsValue, (value) => value.toMap());
    }
    final clusterConfigValue = clusterConfig;
    if (clusterConfigValue != null) {
      map['clusterConfig'] = pulumi.Input.mapOptionalInputValue<
          DomainClusterConfig,
          Map<String, dynamic>>(clusterConfigValue, (value) => value.toMap());
    }
    final cognitoOptionsValue = cognitoOptions;
    if (cognitoOptionsValue != null) {
      map['cognitoOptions'] = pulumi.Input.mapOptionalInputValue<
          DomainCognitoOptions,
          Map<String, dynamic>>(cognitoOptionsValue, (value) => value.toMap());
    }
    final domainEndpointOptionsValue = domainEndpointOptions;
    if (domainEndpointOptionsValue != null) {
      map['domainEndpointOptions'] = pulumi.Input.mapOptionalInputValue<
              DomainDomainEndpointOptions, Map<String, dynamic>>(
          domainEndpointOptionsValue, (value) => value.toMap());
    }
    final domainNameValue = domainName;
    if (domainNameValue != null) {
      map['domainName'] = domainNameValue;
    }
    final ebsOptionsValue = ebsOptions;
    if (ebsOptionsValue != null) {
      map['ebsOptions'] = pulumi.Input.mapOptionalInputValue<DomainEbsOptions,
          Map<String, dynamic>>(ebsOptionsValue, (value) => value.toMap());
    }
    final elasticsearchVersionValue = elasticsearchVersion;
    if (elasticsearchVersionValue != null) {
      map['elasticsearchVersion'] = elasticsearchVersionValue;
    }
    final encryptAtRestValue = encryptAtRest;
    if (encryptAtRestValue != null) {
      map['encryptAtRest'] = pulumi.Input.mapOptionalInputValue<
          DomainEncryptAtRest,
          Map<String, dynamic>>(encryptAtRestValue, (value) => value.toMap());
    }
    final logPublishingOptionsValue = logPublishingOptions;
    if (logPublishingOptionsValue != null) {
      map['logPublishingOptions'] = pulumi.Input.mapOptionalInputValue<
              List<DomainLogPublishingOption>, List<Map<String, dynamic>>>(
          logPublishingOptionsValue,
          (value) => pulumi.Input.encodeList<DomainLogPublishingOption,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nodeToNodeEncryptionValue = nodeToNodeEncryption;
    if (nodeToNodeEncryptionValue != null) {
      map['nodeToNodeEncryption'] = pulumi.Input.mapOptionalInputValue<
              DomainNodeToNodeEncryption, Map<String, dynamic>>(
          nodeToNodeEncryptionValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final snapshotOptionsValue = snapshotOptions;
    if (snapshotOptionsValue != null) {
      map['snapshotOptions'] = pulumi.Input.mapOptionalInputValue<
          DomainSnapshotOptions,
          Map<String, dynamic>>(snapshotOptionsValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final vpcOptionsValue = vpcOptions;
    if (vpcOptionsValue != null) {
      map['vpcOptions'] = pulumi.Input.mapOptionalInputValue<DomainVpcOptions,
          Map<String, dynamic>>(vpcOptionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DomainElasticsearchArgs.fromMap(Map<String, dynamic> map) {
    return DomainElasticsearchArgs(
      accessPolicies:
          pulumi.Input.asOptionalInput<String>(map['accessPolicies']),
      advancedOptions: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['advancedOptions']),
      advancedSecurityOptions:
          pulumi.Input.asOptionalInput<DomainAdvancedSecurityOptions>(
              map['advancedSecurityOptions']),
      autoTuneOptions: pulumi.Input.asOptionalInput<DomainAutoTuneOptions>(
          map['autoTuneOptions']),
      clusterConfig: pulumi.Input.asOptionalInput<DomainClusterConfig>(
          map['clusterConfig']),
      cognitoOptions: pulumi.Input.asOptionalInput<DomainCognitoOptions>(
          map['cognitoOptions']),
      domainEndpointOptions:
          pulumi.Input.asOptionalInput<DomainDomainEndpointOptions>(
              map['domainEndpointOptions']),
      domainName: pulumi.Input.asOptionalInput<String>(map['domainName']),
      ebsOptions:
          pulumi.Input.asOptionalInput<DomainEbsOptions>(map['ebsOptions']),
      elasticsearchVersion:
          pulumi.Input.asOptionalInput<String>(map['elasticsearchVersion']),
      encryptAtRest: pulumi.Input.asOptionalInput<DomainEncryptAtRest>(
          map['encryptAtRest']),
      logPublishingOptions:
          pulumi.Input.asOptionalInput<List<DomainLogPublishingOption>>(
              map['logPublishingOptions']),
      nodeToNodeEncryption:
          pulumi.Input.asOptionalInput<DomainNodeToNodeEncryption>(
              map['nodeToNodeEncryption']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      snapshotOptions: pulumi.Input.asOptionalInput<DomainSnapshotOptions>(
          map['snapshotOptions']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcOptions:
          pulumi.Input.asOptionalInput<DomainVpcOptions>(map['vpcOptions']),
    );
  }
}

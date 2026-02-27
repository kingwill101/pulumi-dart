// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../domain_advanced_security_options/domain_advanced_security_options_opensearch.dart';
import '../domain_aiml_options/domain_aiml_options.dart';
import '../domain_auto_tune_options/domain_auto_tune_options_opensearch.dart';
import '../domain_cluster_config/domain_cluster_config_opensearch.dart';
import '../domain_cognito_options/domain_cognito_options_opensearch.dart';
import '../domain_domain_endpoint_options/domain_domain_endpoint_options_opensearch.dart';
import '../domain_ebs_options/domain_ebs_options_opensearch.dart';
import '../domain_encrypt_at_rest/domain_encrypt_at_rest_opensearch.dart';
import '../domain_identity_center_options/domain_identity_center_options.dart';
import '../domain_log_publishing_option/domain_log_publishing_option_opensearch.dart';
import '../domain_node_to_node_encryption/domain_node_to_node_encryption_opensearch.dart';
import '../domain_off_peak_window_options/domain_off_peak_window_options.dart';
import '../domain_snapshot_options/domain_snapshot_options_opensearch.dart';
import '../domain_software_update_options/domain_software_update_options.dart';
import '../domain_vpc_options/domain_vpc_options_opensearch.dart';

/// The set of arguments for Domain.
class DomainOpensearchArgs {
  /// IAM policy document specifying the access policies for the domain.
  final pulumi.Input<String>? accessPolicies;

  /// Key-value string pairs to specify advanced configuration options. Note that the values for these configuration options must be strings (wrapped in quotes) or they may be wrong and cause a perpetual diff, causing the provider to want to recreate your OpenSearch domain on every apply.
  final pulumi.Input<Map<String, String>>? advancedOptions;

  /// Configuration block for [fine-grained access control](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/fgac.html). Detailed below.
  final pulumi.Input<DomainAdvancedSecurityOptionsOpensearch>?
      advancedSecurityOptions;

  /// Configuration block for parameters required to enable all machine learning features. Detailed below.
  final pulumi.Input<DomainAimlOptions>? aimlOptions;

  /// Configuration block for the Auto-Tune options of the domain. Detailed below.
  final pulumi.Input<DomainAutoTuneOptionsOpensearch>? autoTuneOptions;

  /// Configuration block for the cluster of the domain. Detailed below.
  final pulumi.Input<DomainClusterConfigOpensearch>? clusterConfig;

  /// Configuration block for authenticating dashboard with Cognito. Detailed below.
  final pulumi.Input<DomainCognitoOptionsOpensearch>? cognitoOptions;

  /// Configuration block for domain endpoint HTTP(S) related options. Detailed below.
  final pulumi.Input<DomainDomainEndpointOptionsOpensearch>?
      domainEndpointOptions;

  /// Name of the domain.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? domainName;

  /// Configuration block for EBS related options, may be required based on chosen [instance size](https://aws.amazon.com/opensearch-service/pricing/). Detailed below.
  final pulumi.Input<DomainEbsOptionsOpensearch>? ebsOptions;

  /// Configuration block for encrypt at rest options. Only available for [certain instance types](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/encryption-at-rest.html). Detailed below.
  final pulumi.Input<DomainEncryptAtRestOpensearch>? encryptAtRest;

  /// Either `Elasticsearch_X.Y` or `OpenSearch_X.Y` to specify the engine version for the Amazon OpenSearch Service domain. For example, `OpenSearch_1.0` or `Elasticsearch_7.9`.
  /// See [Creating and managing Amazon OpenSearch Service domains](http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomains).
  /// Defaults to the lastest version of OpenSearch.
  final pulumi.Input<String>? engineVersion;

  /// Configuration block for enabling and managing IAM Identity Center integration within a domain. Detailed below.
  final pulumi.Input<DomainIdentityCenterOptions>? identityCenterOptions;

  /// The IP address type for the endpoint. Valid values are `ipv4` and `dualstack`.
  final pulumi.Input<String>? ipAddressType;

  /// Configuration block for publishing slow and application logs to CloudWatch Logs. This block can be declared multiple times, for each log_type, within the same resource. Detailed below.
  final pulumi.Input<List<DomainLogPublishingOptionOpensearch>>?
      logPublishingOptions;

  /// Configuration block for node-to-node encryption options. Detailed below.
  final pulumi.Input<DomainNodeToNodeEncryptionOpensearch>?
      nodeToNodeEncryption;

  /// Configuration to add Off Peak update options. ([documentation](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/off-peak.html)). Detailed below.
  final pulumi.Input<DomainOffPeakWindowOptions>? offPeakWindowOptions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Configuration block for snapshot related options. Detailed below. DEPRECATED. For domains running OpenSearch 5.3 and later, Amazon OpenSearch takes hourly automated snapshots, making this setting irrelevant. For domains running earlier versions, OpenSearch takes daily automated snapshots.
  final pulumi.Input<DomainSnapshotOptionsOpensearch>? snapshotOptions;

  /// Software update options for the domain. Detailed below.
  final pulumi.Input<DomainSoftwareUpdateOptions>? softwareUpdateOptions;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Configuration block for VPC related options. Adding or removing this configuration forces a new resource ([documentation](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html)). Detailed below.
  final pulumi.Input<DomainVpcOptionsOpensearch>? vpcOptions;

  DomainOpensearchArgs({
    this.accessPolicies,
    this.advancedOptions,
    this.advancedSecurityOptions,
    this.aimlOptions,
    this.autoTuneOptions,
    this.clusterConfig,
    this.cognitoOptions,
    this.domainEndpointOptions,
    this.domainName,
    this.ebsOptions,
    this.encryptAtRest,
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
              DomainAdvancedSecurityOptionsOpensearch, Map<String, dynamic>>(
          advancedSecurityOptionsValue, (value) => value.toMap());
    }
    final aimlOptionsValue = aimlOptions;
    if (aimlOptionsValue != null) {
      map['aimlOptions'] = pulumi.Input.mapOptionalInputValue<DomainAimlOptions,
          Map<String, dynamic>>(aimlOptionsValue, (value) => value.toMap());
    }
    final autoTuneOptionsValue = autoTuneOptions;
    if (autoTuneOptionsValue != null) {
      map['autoTuneOptions'] = pulumi.Input.mapOptionalInputValue<
          DomainAutoTuneOptionsOpensearch,
          Map<String, dynamic>>(autoTuneOptionsValue, (value) => value.toMap());
    }
    final clusterConfigValue = clusterConfig;
    if (clusterConfigValue != null) {
      map['clusterConfig'] = pulumi.Input.mapOptionalInputValue<
          DomainClusterConfigOpensearch,
          Map<String, dynamic>>(clusterConfigValue, (value) => value.toMap());
    }
    final cognitoOptionsValue = cognitoOptions;
    if (cognitoOptionsValue != null) {
      map['cognitoOptions'] = pulumi.Input.mapOptionalInputValue<
          DomainCognitoOptionsOpensearch,
          Map<String, dynamic>>(cognitoOptionsValue, (value) => value.toMap());
    }
    final domainEndpointOptionsValue = domainEndpointOptions;
    if (domainEndpointOptionsValue != null) {
      map['domainEndpointOptions'] = pulumi.Input.mapOptionalInputValue<
              DomainDomainEndpointOptionsOpensearch, Map<String, dynamic>>(
          domainEndpointOptionsValue, (value) => value.toMap());
    }
    final domainNameValue = domainName;
    if (domainNameValue != null) {
      map['domainName'] = domainNameValue;
    }
    final ebsOptionsValue = ebsOptions;
    if (ebsOptionsValue != null) {
      map['ebsOptions'] = pulumi.Input.mapOptionalInputValue<
          DomainEbsOptionsOpensearch,
          Map<String, dynamic>>(ebsOptionsValue, (value) => value.toMap());
    }
    final encryptAtRestValue = encryptAtRest;
    if (encryptAtRestValue != null) {
      map['encryptAtRest'] = pulumi.Input.mapOptionalInputValue<
          DomainEncryptAtRestOpensearch,
          Map<String, dynamic>>(encryptAtRestValue, (value) => value.toMap());
    }
    final engineVersionValue = engineVersion;
    if (engineVersionValue != null) {
      map['engineVersion'] = engineVersionValue;
    }
    final identityCenterOptionsValue = identityCenterOptions;
    if (identityCenterOptionsValue != null) {
      map['identityCenterOptions'] = pulumi.Input.mapOptionalInputValue<
              DomainIdentityCenterOptions, Map<String, dynamic>>(
          identityCenterOptionsValue, (value) => value.toMap());
    }
    final ipAddressTypeValue = ipAddressType;
    if (ipAddressTypeValue != null) {
      map['ipAddressType'] = ipAddressTypeValue;
    }
    final logPublishingOptionsValue = logPublishingOptions;
    if (logPublishingOptionsValue != null) {
      map['logPublishingOptions'] = pulumi.Input.mapOptionalInputValue<
              List<DomainLogPublishingOptionOpensearch>,
              List<Map<String, dynamic>>>(
          logPublishingOptionsValue,
          (value) => pulumi.Input.encodeList<
              DomainLogPublishingOptionOpensearch,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nodeToNodeEncryptionValue = nodeToNodeEncryption;
    if (nodeToNodeEncryptionValue != null) {
      map['nodeToNodeEncryption'] = pulumi.Input.mapOptionalInputValue<
              DomainNodeToNodeEncryptionOpensearch, Map<String, dynamic>>(
          nodeToNodeEncryptionValue, (value) => value.toMap());
    }
    final offPeakWindowOptionsValue = offPeakWindowOptions;
    if (offPeakWindowOptionsValue != null) {
      map['offPeakWindowOptions'] = pulumi.Input.mapOptionalInputValue<
              DomainOffPeakWindowOptions, Map<String, dynamic>>(
          offPeakWindowOptionsValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final snapshotOptionsValue = snapshotOptions;
    if (snapshotOptionsValue != null) {
      map['snapshotOptions'] = pulumi.Input.mapOptionalInputValue<
          DomainSnapshotOptionsOpensearch,
          Map<String, dynamic>>(snapshotOptionsValue, (value) => value.toMap());
    }
    final softwareUpdateOptionsValue = softwareUpdateOptions;
    if (softwareUpdateOptionsValue != null) {
      map['softwareUpdateOptions'] = pulumi.Input.mapOptionalInputValue<
              DomainSoftwareUpdateOptions, Map<String, dynamic>>(
          softwareUpdateOptionsValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final vpcOptionsValue = vpcOptions;
    if (vpcOptionsValue != null) {
      map['vpcOptions'] = pulumi.Input.mapOptionalInputValue<
          DomainVpcOptionsOpensearch,
          Map<String, dynamic>>(vpcOptionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DomainOpensearchArgs.fromMap(Map<String, dynamic> map) {
    return DomainOpensearchArgs(
      accessPolicies:
          pulumi.Input.asOptionalInput<String>(map['accessPolicies']),
      advancedOptions: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['advancedOptions']),
      advancedSecurityOptions:
          pulumi.Input.asOptionalInput<DomainAdvancedSecurityOptionsOpensearch>(
              map['advancedSecurityOptions']),
      aimlOptions:
          pulumi.Input.asOptionalInput<DomainAimlOptions>(map['aimlOptions']),
      autoTuneOptions:
          pulumi.Input.asOptionalInput<DomainAutoTuneOptionsOpensearch>(
              map['autoTuneOptions']),
      clusterConfig:
          pulumi.Input.asOptionalInput<DomainClusterConfigOpensearch>(
              map['clusterConfig']),
      cognitoOptions:
          pulumi.Input.asOptionalInput<DomainCognitoOptionsOpensearch>(
              map['cognitoOptions']),
      domainEndpointOptions:
          pulumi.Input.asOptionalInput<DomainDomainEndpointOptionsOpensearch>(
              map['domainEndpointOptions']),
      domainName: pulumi.Input.asOptionalInput<String>(map['domainName']),
      ebsOptions: pulumi.Input.asOptionalInput<DomainEbsOptionsOpensearch>(
          map['ebsOptions']),
      encryptAtRest:
          pulumi.Input.asOptionalInput<DomainEncryptAtRestOpensearch>(
              map['encryptAtRest']),
      engineVersion: pulumi.Input.asOptionalInput<String>(map['engineVersion']),
      identityCenterOptions:
          pulumi.Input.asOptionalInput<DomainIdentityCenterOptions>(
              map['identityCenterOptions']),
      ipAddressType: pulumi.Input.asOptionalInput<String>(map['ipAddressType']),
      logPublishingOptions: pulumi.Input.asOptionalInput<
              List<DomainLogPublishingOptionOpensearch>>(
          map['logPublishingOptions']),
      nodeToNodeEncryption:
          pulumi.Input.asOptionalInput<DomainNodeToNodeEncryptionOpensearch>(
              map['nodeToNodeEncryption']),
      offPeakWindowOptions:
          pulumi.Input.asOptionalInput<DomainOffPeakWindowOptions>(
              map['offPeakWindowOptions']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      snapshotOptions:
          pulumi.Input.asOptionalInput<DomainSnapshotOptionsOpensearch>(
              map['snapshotOptions']),
      softwareUpdateOptions:
          pulumi.Input.asOptionalInput<DomainSoftwareUpdateOptions>(
              map['softwareUpdateOptions']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcOptions: pulumi.Input.asOptionalInput<DomainVpcOptionsOpensearch>(
          map['vpcOptions']),
    );
  }
}

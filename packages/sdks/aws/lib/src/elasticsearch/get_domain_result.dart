// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_advanced_security_option.dart';
import 'get_domain_auto_tune_option.dart';
import 'get_domain_cluster_config.dart';
import 'get_domain_cognito_option.dart';
import 'get_domain_ebs_option.dart';
import 'get_domain_encryption_at_rest.dart';
import 'get_domain_log_publishing_option.dart';
import 'get_domain_node_to_node_encryption.dart';
import 'get_domain_snapshot_option.dart';
import 'get_domain_vpc_option.dart';

/// Result data returned by getDomain.
class GetDomainResult {
  /// The policy document attached to the domain.
  final String? accessPolicies;
  /// Key-value string pairs to specify advanced configuration options.
  final Map<String, String>? advancedOptions;
  /// Status of the Elasticsearch domain's advanced security options. The block consists of the following attributes:
  final List<GetDomainAdvancedSecurityOption>? advancedSecurityOptions;
  /// The ARN of the domain.
  final String? arn;
  /// Configuration of the Auto-Tune options of the domain.
  final List<GetDomainAutoTuneOption>? autoTuneOptions;
  /// Cluster configuration of the domain.
  final List<GetDomainClusterConfig>? clusterConfigs;
  /// Domain Amazon Cognito Authentication options for Kibana.
  final List<GetDomainCognitoOption>? cognitoOptions;
  /// Status of the creation of the domain.
  final bool? created;
  /// Status of the deletion of the domain.
  final bool? deleted;
  /// Unique identifier for the domain.
  final String? domainId;
  final String? domainName;
  /// EBS Options for the instances in the domain.
  final List<GetDomainEbsOption>? ebsOptions;
  /// Elasticsearch version for the domain.
  final String? elasticsearchVersion;
  /// Domain encryption at rest related options.
  final List<GetDomainEncryptionAtRest>? encryptionAtRests;
  /// Domain-specific endpoint used to submit index, search, and data upload requests.
  final String? endpoint;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Domain-specific endpoint used to access the Kibana application.
  final String? kibanaEndpoint;
  /// Domain log publishing related options.
  final List<GetDomainLogPublishingOption>? logPublishingOptions;
  /// Domain in transit encryption related options.
  final List<GetDomainNodeToNodeEncryption>? nodeToNodeEncryptions;
  /// Status of a configuration change in the domain.
  final bool? processing;
  final String? region;
  /// Domain snapshot related options.
  final List<GetDomainSnapshotOption>? snapshotOptions;
  /// Tags assigned to the domain.
  final Map<String, String>? tags;
  /// VPC Options for private Elasticsearch domains.
  final List<GetDomainVpcOption>? vpcOptions;

  /// Creates a new [GetDomainResult].
  /// [accessPolicies] The policy document attached to the domain.
  /// [advancedOptions] Key-value string pairs to specify advanced configuration options.
  /// [advancedSecurityOptions] Status of the Elasticsearch domain's advanced security options. The block consists of the following attributes:
  /// [arn] The ARN of the domain.
  /// [autoTuneOptions] Configuration of the Auto-Tune options of the domain.
  /// [clusterConfigs] Cluster configuration of the domain.
  /// [cognitoOptions] Domain Amazon Cognito Authentication options for Kibana.
  /// [created] Status of the creation of the domain.
  /// [deleted] Status of the deletion of the domain.
  /// [domainId] Unique identifier for the domain.
  /// [domainName] Optional.
  /// [ebsOptions] EBS Options for the instances in the domain.
  /// [elasticsearchVersion] Elasticsearch version for the domain.
  /// [encryptionAtRests] Domain encryption at rest related options.
  /// [endpoint] Domain-specific endpoint used to submit index, search, and data upload requests.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kibanaEndpoint] Domain-specific endpoint used to access the Kibana application.
  /// [logPublishingOptions] Domain log publishing related options.
  /// [nodeToNodeEncryptions] Domain in transit encryption related options.
  /// [processing] Status of a configuration change in the domain.
  /// [region] Optional.
  /// [snapshotOptions] Domain snapshot related options.
  /// [tags] Tags assigned to the domain.
  /// [vpcOptions] VPC Options for private Elasticsearch domains.
  const GetDomainResult({
    this.accessPolicies,
    this.advancedOptions,
    this.advancedSecurityOptions,
    this.arn,
    this.autoTuneOptions,
    this.clusterConfigs,
    this.cognitoOptions,
    this.created,
    this.deleted,
    this.domainId,
    this.domainName,
    this.ebsOptions,
    this.elasticsearchVersion,
    this.encryptionAtRests,
    this.endpoint,
    this.id,
    this.kibanaEndpoint,
    this.logPublishingOptions,
    this.nodeToNodeEncryptions,
    this.processing,
    this.region,
    this.snapshotOptions,
    this.tags,
    this.vpcOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicies': ?accessPolicies,
      'advancedOptions': ?advancedOptions,
      'advancedSecurityOptions': ?(() { final guardedValue = advancedSecurityOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDomainAdvancedSecurityOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'arn': ?arn,
      'autoTuneOptions': ?(() { final guardedValue = autoTuneOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDomainAutoTuneOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'clusterConfigs': ?(() { final guardedValue = clusterConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDomainClusterConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'cognitoOptions': ?(() { final guardedValue = cognitoOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDomainCognitoOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'created': ?created,
      'deleted': ?deleted,
      'domainId': ?domainId,
      'domainName': ?domainName,
      'ebsOptions': ?(() { final guardedValue = ebsOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDomainEbsOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'elasticsearchVersion': ?elasticsearchVersion,
      'encryptionAtRests': ?(() { final guardedValue = encryptionAtRests; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDomainEncryptionAtRest, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'endpoint': ?endpoint,
      'id': ?id,
      'kibanaEndpoint': ?kibanaEndpoint,
      'logPublishingOptions': ?(() { final guardedValue = logPublishingOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDomainLogPublishingOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'nodeToNodeEncryptions': ?(() { final guardedValue = nodeToNodeEncryptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDomainNodeToNodeEncryption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'processing': ?processing,
      'region': ?region,
      'snapshotOptions': ?(() { final guardedValue = snapshotOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDomainSnapshotOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'vpcOptions': ?(() { final guardedValue = vpcOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDomainVpcOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetDomainResult.fromMap(Map<String, dynamic> map) {
    return GetDomainResult(
      accessPolicies: (() { final guardedValue = map['accessPolicies']; if (guardedValue == null) return null; return guardedValue as String; })(),
      advancedOptions: (() { final guardedValue = map['advancedOptions']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      advancedSecurityOptions: (() { final guardedValue = map['advancedSecurityOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDomainAdvancedSecurityOption>(guardedValue, (value) => GetDomainAdvancedSecurityOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      autoTuneOptions: (() { final guardedValue = map['autoTuneOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDomainAutoTuneOption>(guardedValue, (value) => GetDomainAutoTuneOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      clusterConfigs: (() { final guardedValue = map['clusterConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDomainClusterConfig>(guardedValue, (value) => GetDomainClusterConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      cognitoOptions: (() { final guardedValue = map['cognitoOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDomainCognitoOption>(guardedValue, (value) => GetDomainCognitoOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      deleted: (() { final guardedValue = map['deleted']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      domainId: (() { final guardedValue = map['domainId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ebsOptions: (() { final guardedValue = map['ebsOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDomainEbsOption>(guardedValue, (value) => GetDomainEbsOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      elasticsearchVersion: (() { final guardedValue = map['elasticsearchVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptionAtRests: (() { final guardedValue = map['encryptionAtRests']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDomainEncryptionAtRest>(guardedValue, (value) => GetDomainEncryptionAtRest.fromMap((value as Map).cast<String, dynamic>())); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kibanaEndpoint: (() { final guardedValue = map['kibanaEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logPublishingOptions: (() { final guardedValue = map['logPublishingOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDomainLogPublishingOption>(guardedValue, (value) => GetDomainLogPublishingOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      nodeToNodeEncryptions: (() { final guardedValue = map['nodeToNodeEncryptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDomainNodeToNodeEncryption>(guardedValue, (value) => GetDomainNodeToNodeEncryption.fromMap((value as Map).cast<String, dynamic>())); })(),
      processing: (() { final guardedValue = map['processing']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      snapshotOptions: (() { final guardedValue = map['snapshotOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDomainSnapshotOption>(guardedValue, (value) => GetDomainSnapshotOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      vpcOptions: (() { final guardedValue = map['vpcOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDomainVpcOption>(guardedValue, (value) => GetDomainVpcOption.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

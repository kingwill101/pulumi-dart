// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_advanced_security_options.dart';
import 'domain_auto_tune_options.dart';
import 'domain_cluster_config.dart';
import 'domain_cognito_options.dart';
import 'domain_domain_endpoint_options.dart';
import 'domain_ebs_options.dart';
import 'domain_encrypt_at_rest.dart';
import 'domain_log_publishing_option.dart';
import 'domain_node_to_node_encryption.dart';
import 'domain_snapshot_options.dart';
import 'domain_vpc_options.dart';

/// Input properties used for looking up and filtering Domain resources.
class DomainState {
  /// IAM policy document specifying the access policies for the domain.
  final pulumi.Input<dynamic>? accessPolicies;
  /// Key-value string pairs to specify advanced configuration options. Note that the values for these configuration options must be strings (wrapped in quotes) or they may be wrong and cause a perpetual diff, causing the provider to want to recreate your Elasticsearch domain on every apply.
  final pulumi.Input<Map<String, String>?>? advancedOptions;
  /// Configuration block for [fine-grained access control](https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/fgac.html). Detailed below.
  final pulumi.Input<DomainAdvancedSecurityOptions?>? advancedSecurityOptions;
  /// ARN of the domain.
  final pulumi.Input<String?>? arn;
  /// Configuration block for the Auto-Tune options of the domain. Detailed below.
  final pulumi.Input<DomainAutoTuneOptions?>? autoTuneOptions;
  /// Configuration block for the cluster of the domain. Detailed below.
  final pulumi.Input<DomainClusterConfig?>? clusterConfig;
  /// Configuration block for authenticating Kibana with Cognito. Detailed below.
  final pulumi.Input<DomainCognitoOptions?>? cognitoOptions;
  /// Configuration block for domain endpoint HTTP(S) related options. Detailed below.
  final pulumi.Input<DomainDomainEndpointOptions?>? domainEndpointOptions;
  /// Unique identifier for the domain.
  final pulumi.Input<String?>? domainId;
  /// Name of the domain.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? domainName;
  /// Configuration block for EBS related options, may be required based on chosen [instance size](https://aws.amazon.com/elasticsearch-service/pricing/). Detailed below.
  final pulumi.Input<DomainEbsOptions?>? ebsOptions;
  /// Version of Elasticsearch to deploy. Defaults to `1.5`.
  final pulumi.Input<String?>? elasticsearchVersion;
  /// Configuration block for encrypt at rest options. Only available for [certain instance types](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/aes-supported-instance-types.html). Detailed below.
  final pulumi.Input<DomainEncryptAtRest?>? encryptAtRest;
  /// Domain-specific endpoint used to submit index, search, and data upload requests.
  final pulumi.Input<String?>? endpoint;
  /// Domain-specific endpoint for kibana without https scheme.
  final pulumi.Input<String?>? kibanaEndpoint;
  /// Configuration block for publishing slow and application logs to CloudWatch Logs. This block can be declared multiple times, for each log_type, within the same resource. Detailed below.
  final pulumi.Input<List<DomainLogPublishingOption>?>? logPublishingOptions;
  /// Configuration block for node-to-node encryption options. Detailed below.
  final pulumi.Input<DomainNodeToNodeEncryption?>? nodeToNodeEncryption;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Configuration block for snapshot related options. Detailed below. DEPRECATED. For domains running Elasticsearch 5.3 and later, Amazon ES takes hourly automated snapshots, making this setting irrelevant. For domains running earlier versions of Elasticsearch, Amazon ES takes daily automated snapshots.
  final pulumi.Input<DomainSnapshotOptions?>? snapshotOptions;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Configuration block for VPC related options. Adding or removing this configuration forces a new resource ([documentation](https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-vpc-limitations)). Detailed below.
  final pulumi.Input<DomainVpcOptions?>? vpcOptions;

  /// Creates a new [DomainState].
  /// [accessPolicies] IAM policy document specifying the access policies for the domain.
  /// [advancedOptions] Key-value string pairs to specify advanced configuration options. Note that the values for these configuration options must be strings (wrapped in quotes) or they may be wrong and cause a perpetual diff, causing the provider to want to recreate your Elasticsearch domain on every apply.
  /// [advancedSecurityOptions] Configuration block for [fine-grained access control](https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/fgac.html). Detailed below.
  /// [arn] ARN of the domain.
  /// [autoTuneOptions] Configuration block for the Auto-Tune options of the domain. Detailed below.
  /// [clusterConfig] Configuration block for the cluster of the domain. Detailed below.
  /// [cognitoOptions] Configuration block for authenticating Kibana with Cognito. Detailed below.
  /// [domainEndpointOptions] Configuration block for domain endpoint HTTP(S) related options. Detailed below.
  /// [domainId] Unique identifier for the domain.
  /// [domainName] Name of the domain.
  /// [ebsOptions] Configuration block for EBS related options, may be required based on chosen [instance size](https://aws.amazon.com/elasticsearch-service/pricing/). Detailed below.
  /// [elasticsearchVersion] Version of Elasticsearch to deploy. Defaults to `1.5`.
  /// [encryptAtRest] Configuration block for encrypt at rest options. Only available for [certain instance types](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/aes-supported-instance-types.html). Detailed below.
  /// [endpoint] Domain-specific endpoint used to submit index, search, and data upload requests.
  /// [kibanaEndpoint] Domain-specific endpoint for kibana without https scheme.
  /// [logPublishingOptions] Configuration block for publishing slow and application logs to CloudWatch Logs. This block can be declared multiple times, for each log_type, within the same resource. Detailed below.
  /// [nodeToNodeEncryption] Configuration block for node-to-node encryption options. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [snapshotOptions] Configuration block for snapshot related options. Detailed below. DEPRECATED. For domains running Elasticsearch 5.3 and later, Amazon ES takes hourly automated snapshots, making this setting irrelevant. For domains running earlier versions of Elasticsearch, Amazon ES takes daily automated snapshots.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [vpcOptions] Configuration block for VPC related options. Adding or removing this configuration forces a new resource ([documentation](https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-vpc-limitations)). Detailed below.
  const DomainState({
    this.accessPolicies,
    this.advancedOptions,
    this.advancedSecurityOptions,
    this.arn,
    this.autoTuneOptions,
    this.clusterConfig,
    this.cognitoOptions,
    this.domainEndpointOptions,
    this.domainId,
    this.domainName,
    this.ebsOptions,
    this.elasticsearchVersion,
    this.encryptAtRest,
    this.endpoint,
    this.kibanaEndpoint,
    this.logPublishingOptions,
    this.nodeToNodeEncryption,
    this.region,
    this.snapshotOptions,
    this.tags,
    this.tagsAll,
    this.vpcOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicies': ?accessPolicies,
      'advancedOptions': ?advancedOptions,
      'advancedSecurityOptions': ?pulumi.Input.mapOptionalInputValue<DomainAdvancedSecurityOptions, Map<String, dynamic>>(advancedSecurityOptions, (value) => value.toMap()),
      'arn': ?arn,
      'autoTuneOptions': ?pulumi.Input.mapOptionalInputValue<DomainAutoTuneOptions, Map<String, dynamic>>(autoTuneOptions, (value) => value.toMap()),
      'clusterConfig': ?pulumi.Input.mapOptionalInputValue<DomainClusterConfig, Map<String, dynamic>>(clusterConfig, (value) => value.toMap()),
      'cognitoOptions': ?pulumi.Input.mapOptionalInputValue<DomainCognitoOptions, Map<String, dynamic>>(cognitoOptions, (value) => value.toMap()),
      'domainEndpointOptions': ?pulumi.Input.mapOptionalInputValue<DomainDomainEndpointOptions, Map<String, dynamic>>(domainEndpointOptions, (value) => value.toMap()),
      'domainId': ?domainId,
      'domainName': ?domainName,
      'ebsOptions': ?pulumi.Input.mapOptionalInputValue<DomainEbsOptions, Map<String, dynamic>>(ebsOptions, (value) => value.toMap()),
      'elasticsearchVersion': ?elasticsearchVersion,
      'encryptAtRest': ?pulumi.Input.mapOptionalInputValue<DomainEncryptAtRest, Map<String, dynamic>>(encryptAtRest, (value) => value.toMap()),
      'endpoint': ?endpoint,
      'kibanaEndpoint': ?kibanaEndpoint,
      'logPublishingOptions': ?pulumi.Input.mapOptionalInputValue<List<DomainLogPublishingOption>, List<Map<String, dynamic>>>(logPublishingOptions, (value) => pulumi.Input.encodeList<DomainLogPublishingOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeToNodeEncryption': ?pulumi.Input.mapOptionalInputValue<DomainNodeToNodeEncryption, Map<String, dynamic>>(nodeToNodeEncryption, (value) => value.toMap()),
      'region': ?region,
      'snapshotOptions': ?pulumi.Input.mapOptionalInputValue<DomainSnapshotOptions, Map<String, dynamic>>(snapshotOptions, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcOptions': ?pulumi.Input.mapOptionalInputValue<DomainVpcOptions, Map<String, dynamic>>(vpcOptions, (value) => value.toMap()),
    };
  }

  factory DomainState.fromMap(Map<String, dynamic> map) {
    return DomainState(
      accessPolicies: (() { final guardedValue = map['accessPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      advancedOptions: (() { final guardedValue = map['advancedOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      advancedSecurityOptions: (() { final guardedValue = map['advancedSecurityOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainAdvancedSecurityOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoTuneOptions: (() { final guardedValue = map['autoTuneOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainAutoTuneOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clusterConfig: (() { final guardedValue = map['clusterConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainClusterConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cognitoOptions: (() { final guardedValue = map['cognitoOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainCognitoOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      domainEndpointOptions: (() { final guardedValue = map['domainEndpointOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDomainEndpointOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      domainId: (() { final guardedValue = map['domainId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ebsOptions: (() { final guardedValue = map['ebsOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainEbsOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      elasticsearchVersion: (() { final guardedValue = map['elasticsearchVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptAtRest: (() { final guardedValue = map['encryptAtRest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainEncryptAtRest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kibanaEndpoint: (() { final guardedValue = map['kibanaEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logPublishingOptions: (() { final guardedValue = map['logPublishingOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainLogPublishingOption>(guardedValue, (value) => DomainLogPublishingOption.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nodeToNodeEncryption: (() { final guardedValue = map['nodeToNodeEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainNodeToNodeEncryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotOptions: (() { final guardedValue = map['snapshotOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainSnapshotOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcOptions: (() { final guardedValue = map['vpcOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainVpcOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

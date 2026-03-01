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
  final pulumi.Input<String>? accessPolicies;
  /// Key-value string pairs to specify advanced configuration options. Note that the values for these configuration options must be strings (wrapped in quotes) or they may be wrong and cause a perpetual diff, causing the provider to want to recreate your Elasticsearch domain on every apply.
  final pulumi.Input<Map<String, String>>? advancedOptions;
  /// Configuration block for [fine-grained access control](https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/fgac.html). Detailed below.
  final pulumi.Input<DomainAdvancedSecurityOptions>? advancedSecurityOptions;
  /// ARN of the domain.
  final pulumi.Input<String>? arn;
  /// Configuration block for the Auto-Tune options of the domain. Detailed below.
  final pulumi.Input<DomainAutoTuneOptions>? autoTuneOptions;
  /// Configuration block for the cluster of the domain. Detailed below.
  final pulumi.Input<DomainClusterConfig>? clusterConfig;
  /// Configuration block for authenticating Kibana with Cognito. Detailed below.
  final pulumi.Input<DomainCognitoOptions>? cognitoOptions;
  /// Configuration block for domain endpoint HTTP(S) related options. Detailed below.
  final pulumi.Input<DomainDomainEndpointOptions>? domainEndpointOptions;
  /// Unique identifier for the domain.
  final pulumi.Input<String>? domainId;
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
  /// Domain-specific endpoint used to submit index, search, and data upload requests.
  final pulumi.Input<String>? endpoint;
  /// Domain-specific endpoint for kibana without https scheme.
  final pulumi.Input<String>? kibanaEndpoint;
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
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Configuration block for VPC related options. Adding or removing this configuration forces a new resource ([documentation](https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-vpc-limitations)). Detailed below.
  final pulumi.Input<DomainVpcOptions>? vpcOptions;

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
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcOptions] Configuration block for VPC related options. Adding or removing this configuration forces a new resource ([documentation](https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-vpc-limitations)). Detailed below.
  DomainState({
    pulumi.Output<String>? accessPolicies,
    pulumi.Output<Map<String, String>>? advancedOptions,
    pulumi.Output<DomainAdvancedSecurityOptions>? advancedSecurityOptions,
    pulumi.Output<String>? arn,
    pulumi.Output<DomainAutoTuneOptions>? autoTuneOptions,
    pulumi.Output<DomainClusterConfig>? clusterConfig,
    pulumi.Output<DomainCognitoOptions>? cognitoOptions,
    pulumi.Output<DomainDomainEndpointOptions>? domainEndpointOptions,
    pulumi.Output<String>? domainId,
    pulumi.Output<String>? domainName,
    pulumi.Output<DomainEbsOptions>? ebsOptions,
    pulumi.Output<String>? elasticsearchVersion,
    pulumi.Output<DomainEncryptAtRest>? encryptAtRest,
    pulumi.Output<String>? endpoint,
    pulumi.Output<String>? kibanaEndpoint,
    pulumi.Output<List<DomainLogPublishingOption>>? logPublishingOptions,
    pulumi.Output<DomainNodeToNodeEncryption>? nodeToNodeEncryption,
    pulumi.Output<String>? region,
    pulumi.Output<DomainSnapshotOptions>? snapshotOptions,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<DomainVpcOptions>? vpcOptions,
  }) :
      accessPolicies = pulumi.Input.asOptionalInput<String>(accessPolicies),
      advancedOptions = pulumi.Input.asOptionalInput<Map<String, String>>(advancedOptions),
      advancedSecurityOptions = pulumi.Input.asOptionalInput<DomainAdvancedSecurityOptions>(advancedSecurityOptions),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      autoTuneOptions = pulumi.Input.asOptionalInput<DomainAutoTuneOptions>(autoTuneOptions),
      clusterConfig = pulumi.Input.asOptionalInput<DomainClusterConfig>(clusterConfig),
      cognitoOptions = pulumi.Input.asOptionalInput<DomainCognitoOptions>(cognitoOptions),
      domainEndpointOptions = pulumi.Input.asOptionalInput<DomainDomainEndpointOptions>(domainEndpointOptions),
      domainId = pulumi.Input.asOptionalInput<String>(domainId),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      ebsOptions = pulumi.Input.asOptionalInput<DomainEbsOptions>(ebsOptions),
      elasticsearchVersion = pulumi.Input.asOptionalInput<String>(elasticsearchVersion),
      encryptAtRest = pulumi.Input.asOptionalInput<DomainEncryptAtRest>(encryptAtRest),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      kibanaEndpoint = pulumi.Input.asOptionalInput<String>(kibanaEndpoint),
      logPublishingOptions = pulumi.Input.asOptionalInput<List<DomainLogPublishingOption>>(logPublishingOptions),
      nodeToNodeEncryption = pulumi.Input.asOptionalInput<DomainNodeToNodeEncryption>(nodeToNodeEncryption),
      region = pulumi.Input.asOptionalInput<String>(region),
      snapshotOptions = pulumi.Input.asOptionalInput<DomainSnapshotOptions>(snapshotOptions),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vpcOptions = pulumi.Input.asOptionalInput<DomainVpcOptions>(vpcOptions);

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
      accessPolicies: map['accessPolicies'] == null ? null : pulumi.Output.create<String>(map['accessPolicies'] as String),
      advancedOptions: map['advancedOptions'] == null ? null : pulumi.Output.create<Map<String, String>>((map['advancedOptions'] as Map).cast<String, String>()),
      advancedSecurityOptions: map['advancedSecurityOptions'] == null ? null : pulumi.Output.create<DomainAdvancedSecurityOptions>(DomainAdvancedSecurityOptions.fromMap((map['advancedSecurityOptions'] as Map).cast<String, dynamic>())),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      autoTuneOptions: map['autoTuneOptions'] == null ? null : pulumi.Output.create<DomainAutoTuneOptions>(DomainAutoTuneOptions.fromMap((map['autoTuneOptions'] as Map).cast<String, dynamic>())),
      clusterConfig: map['clusterConfig'] == null ? null : pulumi.Output.create<DomainClusterConfig>(DomainClusterConfig.fromMap((map['clusterConfig'] as Map).cast<String, dynamic>())),
      cognitoOptions: map['cognitoOptions'] == null ? null : pulumi.Output.create<DomainCognitoOptions>(DomainCognitoOptions.fromMap((map['cognitoOptions'] as Map).cast<String, dynamic>())),
      domainEndpointOptions: map['domainEndpointOptions'] == null ? null : pulumi.Output.create<DomainDomainEndpointOptions>(DomainDomainEndpointOptions.fromMap((map['domainEndpointOptions'] as Map).cast<String, dynamic>())),
      domainId: map['domainId'] == null ? null : pulumi.Output.create<String>(map['domainId'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      ebsOptions: map['ebsOptions'] == null ? null : pulumi.Output.create<DomainEbsOptions>(DomainEbsOptions.fromMap((map['ebsOptions'] as Map).cast<String, dynamic>())),
      elasticsearchVersion: map['elasticsearchVersion'] == null ? null : pulumi.Output.create<String>(map['elasticsearchVersion'] as String),
      encryptAtRest: map['encryptAtRest'] == null ? null : pulumi.Output.create<DomainEncryptAtRest>(DomainEncryptAtRest.fromMap((map['encryptAtRest'] as Map).cast<String, dynamic>())),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      kibanaEndpoint: map['kibanaEndpoint'] == null ? null : pulumi.Output.create<String>(map['kibanaEndpoint'] as String),
      logPublishingOptions: map['logPublishingOptions'] == null ? null : pulumi.Output.create<List<DomainLogPublishingOption>>(pulumi.Input.decodeList<DomainLogPublishingOption>(map['logPublishingOptions'], (value) => DomainLogPublishingOption.fromMap((value as Map).cast<String, dynamic>()))),
      nodeToNodeEncryption: map['nodeToNodeEncryption'] == null ? null : pulumi.Output.create<DomainNodeToNodeEncryption>(DomainNodeToNodeEncryption.fromMap((map['nodeToNodeEncryption'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      snapshotOptions: map['snapshotOptions'] == null ? null : pulumi.Output.create<DomainSnapshotOptions>(DomainSnapshotOptions.fromMap((map['snapshotOptions'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vpcOptions: map['vpcOptions'] == null ? null : pulumi.Output.create<DomainVpcOptions>(DomainVpcOptions.fromMap((map['vpcOptions'] as Map).cast<String, dynamic>())),
    );
  }
}


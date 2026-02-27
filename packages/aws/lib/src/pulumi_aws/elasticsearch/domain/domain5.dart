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
import 'domain_args5.dart';

/// Manages an AWS Elasticsearch Domain.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Access Policy
///
/// > See also: `aws.elasticsearch.DomainPolicy` resource
///
///
///
/// ### Log Publishing to CloudWatch Logs
///
///
///
/// ### VPC based ES
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Elasticsearch domains using the `domain_name`. For example:
///
/// ```sh
/// $ pulumi import aws:elasticsearch/domain:Domain example domain_name
/// ```
class Domain5 extends CustomResource {
  /// IAM policy document specifying the access policies for the domain.
  late final Output<String> accessPolicies;

  /// Key-value string pairs to specify advanced configuration options. Note that the values for these configuration options must be strings (wrapped in quotes) or they may be wrong and cause a perpetual diff, causing the provider to want to recreate your Elasticsearch domain on every apply.
  late final Output<Map<String, String>> advancedOptions;

  /// Configuration block for [fine-grained access control](https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/fgac.html). Detailed below.
  late final Output<DomainAdvancedSecurityOptions> advancedSecurityOptions;

  /// ARN of the domain.
  late final Output<String> arn;

  /// Configuration block for the Auto-Tune options of the domain. Detailed below.
  late final Output<DomainAutoTuneOptions> autoTuneOptions;

  /// Configuration block for the cluster of the domain. Detailed below.
  late final Output<DomainClusterConfig> clusterConfig;

  /// Configuration block for authenticating Kibana with Cognito. Detailed below.
  late final Output<DomainCognitoOptions?> cognitoOptions;

  /// Configuration block for domain endpoint HTTP(S) related options. Detailed below.
  late final Output<DomainDomainEndpointOptions> domainEndpointOptions;

  /// Unique identifier for the domain.
  late final Output<String> domainId;

  /// Name of the domain.
  ///
  /// The following arguments are optional:
  late final Output<String> domainName;

  /// Configuration block for EBS related options, may be required based on chosen [instance size](https://aws.amazon.com/elasticsearch-service/pricing/). Detailed below.
  late final Output<DomainEbsOptions> ebsOptions;

  /// Version of Elasticsearch to deploy. Defaults to `1.5`.
  late final Output<String?> elasticsearchVersion;

  /// Configuration block for encrypt at rest options. Only available for [certain instance types](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/aes-supported-instance-types.html). Detailed below.
  late final Output<DomainEncryptAtRest> encryptAtRest;

  /// Domain-specific endpoint used to submit index, search, and data upload requests.
  late final Output<String> endpoint;

  /// Domain-specific endpoint for kibana without https scheme.
  late final Output<String> kibanaEndpoint;

  /// Configuration block for publishing slow and application logs to CloudWatch Logs. This block can be declared multiple times, for each log_type, within the same resource. Detailed below.
  late final Output<List<DomainLogPublishingOption>?> logPublishingOptions;

  /// Configuration block for node-to-node encryption options. Detailed below.
  late final Output<DomainNodeToNodeEncryption> nodeToNodeEncryption;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Configuration block for snapshot related options. Detailed below. DEPRECATED. For domains running Elasticsearch 5.3 and later, Amazon ES takes hourly automated snapshots, making this setting irrelevant. For domains running earlier versions of Elasticsearch, Amazon ES takes daily automated snapshots.
  late final Output<DomainSnapshotOptions?> snapshotOptions;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Configuration block for VPC related options. Adding or removing this configuration forces a new resource ([documentation](https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-vpc-limitations)). Detailed below.
  late final Output<DomainVpcOptions?> vpcOptions;

  Domain5(
    String name, {
    DomainArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:elasticsearch/domain:Domain',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessPolicies = registerOutput<String>('accessPolicies');
    this.advancedOptions =
        registerOutput<Map<String, String>>('advancedOptions');
    this.advancedSecurityOptions =
        registerOutput<DomainAdvancedSecurityOptions>(
            'advancedSecurityOptions');
    this.arn = registerOutput<String>('arn');
    this.autoTuneOptions =
        registerOutput<DomainAutoTuneOptions>('autoTuneOptions');
    this.clusterConfig = registerOutput<DomainClusterConfig>('clusterConfig');
    this.cognitoOptions =
        registerOutput<DomainCognitoOptions?>('cognitoOptions');
    this.domainEndpointOptions =
        registerOutput<DomainDomainEndpointOptions>('domainEndpointOptions');
    this.domainId = registerOutput<String>('domainId');
    this.domainName = registerOutput<String>('domainName');
    this.ebsOptions = registerOutput<DomainEbsOptions>('ebsOptions');
    this.elasticsearchVersion = registerOutput<String?>('elasticsearchVersion');
    this.encryptAtRest = registerOutput<DomainEncryptAtRest>('encryptAtRest');
    this.endpoint = registerOutput<String>('endpoint');
    this.kibanaEndpoint = registerOutput<String>('kibanaEndpoint');
    this.logPublishingOptions =
        registerOutput<List<DomainLogPublishingOption>?>(
            'logPublishingOptions');
    this.nodeToNodeEncryption =
        registerOutput<DomainNodeToNodeEncryption>('nodeToNodeEncryption');
    this.region = registerOutput<String>('region');
    this.snapshotOptions =
        registerOutput<DomainSnapshotOptions?>('snapshotOptions');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcOptions = registerOutput<DomainVpcOptions?>('vpcOptions');
  }
}

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
import 'domain_opensearch_args.dart';

/// Manages an Amazon OpenSearch Domain.
///
/// ## Elasticsearch vs. OpenSearch
///
/// Amazon OpenSearch Service is the successor to Amazon Elasticsearch Service and supports OpenSearch and legacy Elasticsearch OSS (up to 7.10, the final open source version of the software).
///
/// OpenSearch Domain configurations are similar in many ways to Elasticsearch Domain configurations. However, there are important differences including these:
///
/// * OpenSearch has `engine_version` while Elasticsearch has `elasticsearch_version`
/// * Versions are specified differently - _e.g._, `Elasticsearch_7.10` with OpenSearch vs. `7.10` for Elasticsearch.
/// * `instance_type` argument values end in `search` for OpenSearch vs. `elasticsearch` for Elasticsearch (_e.g._, `t2.micro.search` vs. `t2.micro.elasticsearch`).
/// * The AWS-managed service-linked role for OpenSearch is called `AWSServiceRoleForAmazonOpenSearchService` instead of `AWSServiceRoleForAmazonElasticsearchService` for Elasticsearch.
///
/// There are also some potentially unexpected similarities in configurations:
///
/// * ARNs for both are prefaced with `arn:aws:es:`.
/// * Both OpenSearch and Elasticsearch use assume role policies that refer to the `Principal` `Service` as `es.amazonaws.com`.
/// * IAM policy actions, such as those you will find in `access_policies`, are prefaced with `es:` for both.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Access Policy
///
/// > See also: `aws.opensearch.DomainPolicy` resource
///
///
///
/// ### Log publishing to CloudWatch Logs
///
///
///
/// ### VPC based OpenSearch
///
///
///
/// ### Enabling fine-grained access control on an existing domain
///
/// This example shows two configurations: one to create a domain without fine-grained access control and the second to modify the domain to enable fine-grained access control. For more information, see [Enabling fine-grained access control](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/fgac.html).
///
/// ### First apply
///
///
///
/// ### Second apply
///
/// Notice that the only change is `advanced_security_options.0.enabled` is now set to `true`.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import OpenSearch domains using the `domain_name`. For example:
///
/// ```sh
/// $ pulumi import aws:opensearch/domain:Domain example domain_name
/// ```
class DomainOpensearch extends pulumi.CustomResource {
  /// IAM policy document specifying the access policies for the domain.
  late final pulumi.Output<String> accessPolicies;

  /// Key-value string pairs to specify advanced configuration options. Note that the values for these configuration options must be strings (wrapped in quotes) or they may be wrong and cause a perpetual diff, causing the provider to want to recreate your OpenSearch domain on every apply.
  late final pulumi.Output<Map<String, String>> advancedOptions;

  /// Configuration block for [fine-grained access control](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/fgac.html). Detailed below.
  late final pulumi.Output<DomainAdvancedSecurityOptionsOpensearch>
      advancedSecurityOptions;

  /// Configuration block for parameters required to enable all machine learning features. Detailed below.
  late final pulumi.Output<DomainAimlOptions> aimlOptions;

  /// ARN of the domain.
  late final pulumi.Output<String> arn;

  /// Configuration block for the Auto-Tune options of the domain. Detailed below.
  late final pulumi.Output<DomainAutoTuneOptionsOpensearch> autoTuneOptions;

  /// Configuration block for the cluster of the domain. Detailed below.
  late final pulumi.Output<DomainClusterConfigOpensearch> clusterConfig;

  /// Configuration block for authenticating dashboard with Cognito. Detailed below.
  late final pulumi.Output<DomainCognitoOptionsOpensearch?> cognitoOptions;

  /// Domain-specific endpoint for Dashboard without https scheme.
  late final pulumi.Output<String> dashboardEndpoint;

  /// V2 domain endpoint for Dashboard that works with both IPv4 and IPv6 addresses, without https scheme.
  late final pulumi.Output<String> dashboardEndpointV2;

  /// Configuration block for domain endpoint HTTP(S) related options. Detailed below.
  late final pulumi.Output<DomainDomainEndpointOptionsOpensearch>
      domainEndpointOptions;

  /// Dual stack hosted zone ID for the domain.
  late final pulumi.Output<String> domainEndpointV2HostedZoneId;

  /// Unique identifier for the domain.
  late final pulumi.Output<String> domainId;

  /// Name of the domain.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> domainName;

  /// Configuration block for EBS related options, may be required based on chosen [instance size](https://aws.amazon.com/opensearch-service/pricing/). Detailed below.
  late final pulumi.Output<DomainEbsOptionsOpensearch> ebsOptions;

  /// Configuration block for encrypt at rest options. Only available for [certain instance types](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/encryption-at-rest.html). Detailed below.
  late final pulumi.Output<DomainEncryptAtRestOpensearch> encryptAtRest;

  /// Domain-specific endpoint used to submit index, search, and data upload requests.
  late final pulumi.Output<String> endpoint;

  /// V2 domain endpoint that works with both IPv4 and IPv6 addresses, used to submit index, search, and data upload requests.
  late final pulumi.Output<String> endpointV2;

  /// Either `Elasticsearch_X.Y` or `OpenSearch_X.Y` to specify the engine version for the Amazon OpenSearch Service domain. For example, `OpenSearch_1.0` or `Elasticsearch_7.9`.
  /// See [Creating and managing Amazon OpenSearch Service domains](http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomains).
  /// Defaults to the lastest version of OpenSearch.
  late final pulumi.Output<String> engineVersion;

  /// Configuration block for enabling and managing IAM Identity Center integration within a domain. Detailed below.
  late final pulumi.Output<DomainIdentityCenterOptions?> identityCenterOptions;

  /// The IP address type for the endpoint. Valid values are `ipv4` and `dualstack`.
  late final pulumi.Output<String> ipAddressType;

  /// Configuration block for publishing slow and application logs to CloudWatch Logs. This block can be declared multiple times, for each log_type, within the same resource. Detailed below.
  late final pulumi.Output<List<DomainLogPublishingOptionOpensearch>?>
      logPublishingOptions;

  /// Configuration block for node-to-node encryption options. Detailed below.
  late final pulumi.Output<DomainNodeToNodeEncryptionOpensearch>
      nodeToNodeEncryption;

  /// Configuration to add Off Peak update options. ([documentation](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/off-peak.html)). Detailed below.
  late final pulumi.Output<DomainOffPeakWindowOptions> offPeakWindowOptions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Configuration block for snapshot related options. Detailed below. DEPRECATED. For domains running OpenSearch 5.3 and later, Amazon OpenSearch takes hourly automated snapshots, making this setting irrelevant. For domains running earlier versions, OpenSearch takes daily automated snapshots.
  late final pulumi.Output<DomainSnapshotOptionsOpensearch?> snapshotOptions;

  /// Software update options for the domain. Detailed below.
  late final pulumi.Output<DomainSoftwareUpdateOptions> softwareUpdateOptions;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Configuration block for VPC related options. Adding or removing this configuration forces a new resource ([documentation](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html)). Detailed below.
  late final pulumi.Output<DomainVpcOptionsOpensearch?> vpcOptions;

  DomainOpensearch(
    String name, {
    DomainOpensearchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/domain:Domain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessPolicies = registerOutput<String>('accessPolicies');
    this.advancedOptions =
        registerOutput<Map<String, String>>('advancedOptions');
    this.advancedSecurityOptions =
        registerOutput<DomainAdvancedSecurityOptionsOpensearch>(
            'advancedSecurityOptions');
    this.aimlOptions = registerOutput<DomainAimlOptions>('aimlOptions');
    this.arn = registerOutput<String>('arn');
    this.autoTuneOptions =
        registerOutput<DomainAutoTuneOptionsOpensearch>('autoTuneOptions');
    this.clusterConfig =
        registerOutput<DomainClusterConfigOpensearch>('clusterConfig');
    this.cognitoOptions =
        registerOutput<DomainCognitoOptionsOpensearch?>('cognitoOptions');
    this.dashboardEndpoint = registerOutput<String>('dashboardEndpoint');
    this.dashboardEndpointV2 = registerOutput<String>('dashboardEndpointV2');
    this.domainEndpointOptions =
        registerOutput<DomainDomainEndpointOptionsOpensearch>(
            'domainEndpointOptions');
    this.domainEndpointV2HostedZoneId =
        registerOutput<String>('domainEndpointV2HostedZoneId');
    this.domainId = registerOutput<String>('domainId');
    this.domainName = registerOutput<String>('domainName');
    this.ebsOptions = registerOutput<DomainEbsOptionsOpensearch>('ebsOptions');
    this.encryptAtRest =
        registerOutput<DomainEncryptAtRestOpensearch>('encryptAtRest');
    this.endpoint = registerOutput<String>('endpoint');
    this.endpointV2 = registerOutput<String>('endpointV2');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.identityCenterOptions =
        registerOutput<DomainIdentityCenterOptions?>('identityCenterOptions');
    this.ipAddressType = registerOutput<String>('ipAddressType');
    this.logPublishingOptions =
        registerOutput<List<DomainLogPublishingOptionOpensearch>?>(
            'logPublishingOptions');
    this.nodeToNodeEncryption =
        registerOutput<DomainNodeToNodeEncryptionOpensearch>(
            'nodeToNodeEncryption');
    this.offPeakWindowOptions =
        registerOutput<DomainOffPeakWindowOptions>('offPeakWindowOptions');
    this.region = registerOutput<String>('region');
    this.snapshotOptions =
        registerOutput<DomainSnapshotOptionsOpensearch?>('snapshotOptions');
    this.softwareUpdateOptions =
        registerOutput<DomainSoftwareUpdateOptions>('softwareUpdateOptions');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcOptions = registerOutput<DomainVpcOptionsOpensearch?>('vpcOptions');
  }
}

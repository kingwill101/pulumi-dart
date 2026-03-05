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
  final String accessPolicies;

  /// Key-value string pairs to specify advanced configuration options.
  final Map<String, String> advancedOptions;

  /// Status of the Elasticsearch domain's advanced security options. The block consists of the following attributes:
  final List<GetDomainAdvancedSecurityOption> advancedSecurityOptions;

  /// The ARN of the domain.
  final String arn;

  /// Configuration of the Auto-Tune options of the domain.
  final List<GetDomainAutoTuneOption> autoTuneOptions;

  /// Cluster configuration of the domain.
  final List<GetDomainClusterConfig> clusterConfigs;

  /// Domain Amazon Cognito Authentication options for Kibana.
  final List<GetDomainCognitoOption> cognitoOptions;

  /// Status of the creation of the domain.
  final bool created;

  /// Status of the deletion of the domain.
  final bool deleted;

  /// Unique identifier for the domain.
  final String domainId;
  final String domainName;

  /// EBS Options for the instances in the domain.
  final List<GetDomainEbsOption> ebsOptions;

  /// Elasticsearch version for the domain.
  final String elasticsearchVersion;

  /// Domain encryption at rest related options.
  final List<GetDomainEncryptionAtRest> encryptionAtRests;

  /// Domain-specific endpoint used to submit index, search, and data upload requests.
  final String endpoint;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Domain-specific endpoint used to access the Kibana application.
  final String kibanaEndpoint;

  /// Domain log publishing related options.
  final List<GetDomainLogPublishingOption> logPublishingOptions;

  /// Domain in transit encryption related options.
  final List<GetDomainNodeToNodeEncryption> nodeToNodeEncryptions;

  /// Status of a configuration change in the domain.
  final bool processing;
  final String region;

  /// Domain snapshot related options.
  final List<GetDomainSnapshotOption> snapshotOptions;

  /// Tags assigned to the domain.
  final Map<String, String> tags;

  /// VPC Options for private Elasticsearch domains.
  final List<GetDomainVpcOption> vpcOptions;

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
  /// [domainName] Required.
  /// [ebsOptions] EBS Options for the instances in the domain.
  /// [elasticsearchVersion] Elasticsearch version for the domain.
  /// [encryptionAtRests] Domain encryption at rest related options.
  /// [endpoint] Domain-specific endpoint used to submit index, search, and data upload requests.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kibanaEndpoint] Domain-specific endpoint used to access the Kibana application.
  /// [logPublishingOptions] Domain log publishing related options.
  /// [nodeToNodeEncryptions] Domain in transit encryption related options.
  /// [processing] Status of a configuration change in the domain.
  /// [region] Required.
  /// [snapshotOptions] Domain snapshot related options.
  /// [tags] Tags assigned to the domain.
  /// [vpcOptions] VPC Options for private Elasticsearch domains.
  GetDomainResult({
    required this.accessPolicies,
    required this.advancedOptions,
    required this.advancedSecurityOptions,
    required this.arn,
    required this.autoTuneOptions,
    required this.clusterConfigs,
    required this.cognitoOptions,
    required this.created,
    required this.deleted,
    required this.domainId,
    required this.domainName,
    required this.ebsOptions,
    required this.elasticsearchVersion,
    required this.encryptionAtRests,
    required this.endpoint,
    required this.id,
    required this.kibanaEndpoint,
    required this.logPublishingOptions,
    required this.nodeToNodeEncryptions,
    required this.processing,
    required this.region,
    required this.snapshotOptions,
    required this.tags,
    required this.vpcOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicies': accessPolicies,
      'advancedOptions': advancedOptions,
      'advancedSecurityOptions':
          pulumi.Input.encodeList<
            GetDomainAdvancedSecurityOption,
            Map<String, dynamic>
          >(advancedSecurityOptions, (value) => value.toMap()),
      'arn': arn,
      'autoTuneOptions':
          pulumi.Input.encodeList<
            GetDomainAutoTuneOption,
            Map<String, dynamic>
          >(autoTuneOptions, (value) => value.toMap()),
      'clusterConfigs':
          pulumi.Input.encodeList<GetDomainClusterConfig, Map<String, dynamic>>(
            clusterConfigs,
            (value) => value.toMap(),
          ),
      'cognitoOptions':
          pulumi.Input.encodeList<GetDomainCognitoOption, Map<String, dynamic>>(
            cognitoOptions,
            (value) => value.toMap(),
          ),
      'created': created,
      'deleted': deleted,
      'domainId': domainId,
      'domainName': domainName,
      'ebsOptions':
          pulumi.Input.encodeList<GetDomainEbsOption, Map<String, dynamic>>(
            ebsOptions,
            (value) => value.toMap(),
          ),
      'elasticsearchVersion': elasticsearchVersion,
      'encryptionAtRests':
          pulumi.Input.encodeList<
            GetDomainEncryptionAtRest,
            Map<String, dynamic>
          >(encryptionAtRests, (value) => value.toMap()),
      'endpoint': endpoint,
      'id': id,
      'kibanaEndpoint': kibanaEndpoint,
      'logPublishingOptions':
          pulumi.Input.encodeList<
            GetDomainLogPublishingOption,
            Map<String, dynamic>
          >(logPublishingOptions, (value) => value.toMap()),
      'nodeToNodeEncryptions':
          pulumi.Input.encodeList<
            GetDomainNodeToNodeEncryption,
            Map<String, dynamic>
          >(nodeToNodeEncryptions, (value) => value.toMap()),
      'processing': processing,
      'region': region,
      'snapshotOptions':
          pulumi.Input.encodeList<
            GetDomainSnapshotOption,
            Map<String, dynamic>
          >(snapshotOptions, (value) => value.toMap()),
      'tags': tags,
      'vpcOptions':
          pulumi.Input.encodeList<GetDomainVpcOption, Map<String, dynamic>>(
            vpcOptions,
            (value) => value.toMap(),
          ),
    };
  }

  factory GetDomainResult.fromMap(Map<String, dynamic> map) {
    return GetDomainResult(
      accessPolicies: map['accessPolicies'] as String,
      advancedOptions: (map['advancedOptions'] as Map).cast<String, String>(),
      advancedSecurityOptions:
          pulumi.Input.decodeList<GetDomainAdvancedSecurityOption>(
            map['advancedSecurityOptions']!,
            (value) => GetDomainAdvancedSecurityOption.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      arn: map['arn'] as String,
      autoTuneOptions: pulumi.Input.decodeList<GetDomainAutoTuneOption>(
        map['autoTuneOptions']!,
        (value) => GetDomainAutoTuneOption.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      clusterConfigs: pulumi.Input.decodeList<GetDomainClusterConfig>(
        map['clusterConfigs']!,
        (value) => GetDomainClusterConfig.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      cognitoOptions: pulumi.Input.decodeList<GetDomainCognitoOption>(
        map['cognitoOptions']!,
        (value) => GetDomainCognitoOption.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      created: map['created'] as bool,
      deleted: map['deleted'] as bool,
      domainId: map['domainId'] as String,
      domainName: map['domainName'] as String,
      ebsOptions: pulumi.Input.decodeList<GetDomainEbsOption>(
        map['ebsOptions']!,
        (value) =>
            GetDomainEbsOption.fromMap((value as Map).cast<String, dynamic>()),
      ),
      elasticsearchVersion: map['elasticsearchVersion'] as String,
      encryptionAtRests: pulumi.Input.decodeList<GetDomainEncryptionAtRest>(
        map['encryptionAtRests']!,
        (value) => GetDomainEncryptionAtRest.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      endpoint: map['endpoint'] as String,
      id: map['id'] as String,
      kibanaEndpoint: map['kibanaEndpoint'] as String,
      logPublishingOptions:
          pulumi.Input.decodeList<GetDomainLogPublishingOption>(
            map['logPublishingOptions']!,
            (value) => GetDomainLogPublishingOption.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      nodeToNodeEncryptions:
          pulumi.Input.decodeList<GetDomainNodeToNodeEncryption>(
            map['nodeToNodeEncryptions']!,
            (value) => GetDomainNodeToNodeEncryption.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      processing: map['processing'] as bool,
      region: map['region'] as String,
      snapshotOptions: pulumi.Input.decodeList<GetDomainSnapshotOption>(
        map['snapshotOptions']!,
        (value) => GetDomainSnapshotOption.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcOptions: pulumi.Input.decodeList<GetDomainVpcOption>(
        map['vpcOptions']!,
        (value) =>
            GetDomainVpcOption.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}

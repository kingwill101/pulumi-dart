// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_advanced_security_option.dart';
import 'get_domain_auto_tune_option.dart';
import 'get_domain_cluster_config.dart';
import 'get_domain_cognito_option.dart';
import 'get_domain_deployment_strategy_option.dart';
import 'get_domain_ebs_option.dart';
import 'get_domain_encryption_at_rest.dart';
import 'get_domain_identity_center_option.dart';
import 'get_domain_log_publishing_option.dart';
import 'get_domain_node_to_node_encryption.dart';
import 'get_domain_off_peak_window_options.dart';
import 'get_domain_snapshot_option.dart';
import 'get_domain_software_update_option.dart';
import 'get_domain_vpc_option.dart';

/// Result data returned by getDomain.
class GetDomainResult {
  /// Policy document attached to the domain.
  final String? accessPolicies;
  /// Key-value string pairs to specify advanced configuration options.
  final Map<String, String>? advancedOptions;
  /// Status of the OpenSearch domain's advanced security options. The block consists of the following attributes:
  final List<GetDomainAdvancedSecurityOption>? advancedSecurityOptions;
  /// ARN of the domain.
  final String? arn;
  /// Configuration of the Auto-Tune options of the domain.
  final List<GetDomainAutoTuneOption>? autoTuneOptions;
  /// Cluster configuration of the domain.
  final List<GetDomainClusterConfig>? clusterConfigs;
  /// Domain Amazon Cognito Authentication options for Dashboard.
  final List<GetDomainCognitoOption>? cognitoOptions;
  /// Status of the creation of the domain.
  final bool? created;
  /// Domain-specific endpoint used to access the [Dashboard application](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/dashboards.html).
  final String? dashboardEndpoint;
  /// V2 domain-specific endpoint used to access the [Dashboard application](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/dashboards.html)
  final String? dashboardEndpointV2;
  /// Status of the deletion of the domain.
  final bool? deleted;
  /// Deployment strategy options for the domain.
  final List<GetDomainDeploymentStrategyOption>? deploymentStrategyOptions;
  /// Dual stack hosted zone ID for the domain.
  final String? domainEndpointV2HostedZoneId;
  /// Unique identifier for the domain.
  final String? domainId;
  final String? domainName;
  /// EBS Options for the instances in the domain.
  final List<GetDomainEbsOption>? ebsOptions;
  /// Domain encryption at rest related options.
  final List<GetDomainEncryptionAtRest>? encryptionAtRests;
  /// Domain-specific endpoint used to submit index, search, and data upload requests.
  final String? endpoint;
  /// V2 domain-specific endpoint that works with both IPv4 and IPv6 addresses, used to submit index, search, and data upload requests.
  final String? endpointV2;
  /// OpenSearch version for the domain.
  final String? engineVersion;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Configuration for enabling and managing IAM Identity Center integration within a domain.
  final List<GetDomainIdentityCenterOption>? identityCenterOptions;
  /// Type of IP addresses supported by the endpoint for the domain.
  final String? ipAddressType;
  /// Domain log publishing related options.
  final List<GetDomainLogPublishingOption>? logPublishingOptions;
  /// Domain in transit encryption related options.
  final List<GetDomainNodeToNodeEncryption>? nodeToNodeEncryptions;
  /// Off Peak update options
  final GetDomainOffPeakWindowOptions? offPeakWindowOptions;
  /// Status of a configuration change in the domain.
  final bool? processing;
  final String? region;
  /// Domain snapshot related options.
  final List<GetDomainSnapshotOption>? snapshotOptions;
  /// Software update options for the domain
  final List<GetDomainSoftwareUpdateOption>? softwareUpdateOptions;
  /// Tags assigned to the domain.
  final Map<String, String>? tags;
  /// VPC Options for private OpenSearch domains.
  final List<GetDomainVpcOption>? vpcOptions;

  /// Creates a new [GetDomainResult].
  /// [accessPolicies] Policy document attached to the domain.
  /// [advancedOptions] Key-value string pairs to specify advanced configuration options.
  /// [advancedSecurityOptions] Status of the OpenSearch domain's advanced security options. The block consists of the following attributes:
  /// [arn] ARN of the domain.
  /// [autoTuneOptions] Configuration of the Auto-Tune options of the domain.
  /// [clusterConfigs] Cluster configuration of the domain.
  /// [cognitoOptions] Domain Amazon Cognito Authentication options for Dashboard.
  /// [created] Status of the creation of the domain.
  /// [dashboardEndpoint] Domain-specific endpoint used to access the [Dashboard application](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/dashboards.html).
  /// [dashboardEndpointV2] V2 domain-specific endpoint used to access the [Dashboard application](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/dashboards.html)
  /// [deleted] Status of the deletion of the domain.
  /// [deploymentStrategyOptions] Deployment strategy options for the domain.
  /// [domainEndpointV2HostedZoneId] Dual stack hosted zone ID for the domain.
  /// [domainId] Unique identifier for the domain.
  /// [domainName] Optional.
  /// [ebsOptions] EBS Options for the instances in the domain.
  /// [encryptionAtRests] Domain encryption at rest related options.
  /// [endpoint] Domain-specific endpoint used to submit index, search, and data upload requests.
  /// [endpointV2] V2 domain-specific endpoint that works with both IPv4 and IPv6 addresses, used to submit index, search, and data upload requests.
  /// [engineVersion] OpenSearch version for the domain.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identityCenterOptions] Configuration for enabling and managing IAM Identity Center integration within a domain.
  /// [ipAddressType] Type of IP addresses supported by the endpoint for the domain.
  /// [logPublishingOptions] Domain log publishing related options.
  /// [nodeToNodeEncryptions] Domain in transit encryption related options.
  /// [offPeakWindowOptions] Off Peak update options
  /// [processing] Status of a configuration change in the domain.
  /// [region] Optional.
  /// [snapshotOptions] Domain snapshot related options.
  /// [softwareUpdateOptions] Software update options for the domain
  /// [tags] Tags assigned to the domain.
  /// [vpcOptions] VPC Options for private OpenSearch domains.
  const GetDomainResult({
    this.accessPolicies,
    this.advancedOptions,
    this.advancedSecurityOptions,
    this.arn,
    this.autoTuneOptions,
    this.clusterConfigs,
    this.cognitoOptions,
    this.created,
    this.dashboardEndpoint,
    this.dashboardEndpointV2,
    this.deleted,
    this.deploymentStrategyOptions,
    this.domainEndpointV2HostedZoneId,
    this.domainId,
    this.domainName,
    this.ebsOptions,
    this.encryptionAtRests,
    this.endpoint,
    this.endpointV2,
    this.engineVersion,
    this.id,
    this.identityCenterOptions,
    this.ipAddressType,
    this.logPublishingOptions,
    this.nodeToNodeEncryptions,
    this.offPeakWindowOptions,
    this.processing,
    this.region,
    this.snapshotOptions,
    this.softwareUpdateOptions,
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
      'dashboardEndpoint': ?dashboardEndpoint,
      'dashboardEndpointV2': ?dashboardEndpointV2,
      'deleted': ?deleted,
      'deploymentStrategyOptions': ?(() { final guardedValue = deploymentStrategyOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDomainDeploymentStrategyOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'domainEndpointV2HostedZoneId': ?domainEndpointV2HostedZoneId,
      'domainId': ?domainId,
      'domainName': ?domainName,
      'ebsOptions': ?(() { final guardedValue = ebsOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDomainEbsOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'encryptionAtRests': ?(() { final guardedValue = encryptionAtRests; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDomainEncryptionAtRest, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'endpoint': ?endpoint,
      'endpointV2': ?endpointV2,
      'engineVersion': ?engineVersion,
      'id': ?id,
      'identityCenterOptions': ?(() { final guardedValue = identityCenterOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDomainIdentityCenterOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ipAddressType': ?ipAddressType,
      'logPublishingOptions': ?(() { final guardedValue = logPublishingOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDomainLogPublishingOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'nodeToNodeEncryptions': ?(() { final guardedValue = nodeToNodeEncryptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDomainNodeToNodeEncryption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'offPeakWindowOptions': ?offPeakWindowOptions?.toMap(),
      'processing': ?processing,
      'region': ?region,
      'snapshotOptions': ?(() { final guardedValue = snapshotOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDomainSnapshotOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'softwareUpdateOptions': ?(() { final guardedValue = softwareUpdateOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDomainSoftwareUpdateOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
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
      dashboardEndpoint: (() { final guardedValue = map['dashboardEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dashboardEndpointV2: (() { final guardedValue = map['dashboardEndpointV2']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleted: (() { final guardedValue = map['deleted']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      deploymentStrategyOptions: (() { final guardedValue = map['deploymentStrategyOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDomainDeploymentStrategyOption>(guardedValue, (value) => GetDomainDeploymentStrategyOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      domainEndpointV2HostedZoneId: (() { final guardedValue = map['domainEndpointV2HostedZoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainId: (() { final guardedValue = map['domainId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ebsOptions: (() { final guardedValue = map['ebsOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDomainEbsOption>(guardedValue, (value) => GetDomainEbsOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      encryptionAtRests: (() { final guardedValue = map['encryptionAtRests']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDomainEncryptionAtRest>(guardedValue, (value) => GetDomainEncryptionAtRest.fromMap((value as Map).cast<String, dynamic>())); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpointV2: (() { final guardedValue = map['endpointV2']; if (guardedValue == null) return null; return guardedValue as String; })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identityCenterOptions: (() { final guardedValue = map['identityCenterOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDomainIdentityCenterOption>(guardedValue, (value) => GetDomainIdentityCenterOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      ipAddressType: (() { final guardedValue = map['ipAddressType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logPublishingOptions: (() { final guardedValue = map['logPublishingOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDomainLogPublishingOption>(guardedValue, (value) => GetDomainLogPublishingOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      nodeToNodeEncryptions: (() { final guardedValue = map['nodeToNodeEncryptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDomainNodeToNodeEncryption>(guardedValue, (value) => GetDomainNodeToNodeEncryption.fromMap((value as Map).cast<String, dynamic>())); })(),
      offPeakWindowOptions: (() { final guardedValue = map['offPeakWindowOptions']; if (guardedValue == null) return null; return GetDomainOffPeakWindowOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      processing: (() { final guardedValue = map['processing']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      snapshotOptions: (() { final guardedValue = map['snapshotOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDomainSnapshotOption>(guardedValue, (value) => GetDomainSnapshotOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      softwareUpdateOptions: (() { final guardedValue = map['softwareUpdateOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDomainSoftwareUpdateOption>(guardedValue, (value) => GetDomainSoftwareUpdateOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      vpcOptions: (() { final guardedValue = map['vpcOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDomainVpcOption>(guardedValue, (value) => GetDomainVpcOption.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

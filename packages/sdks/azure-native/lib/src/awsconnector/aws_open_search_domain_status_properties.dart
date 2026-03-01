// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'advanced_security_options.dart';
import 'auto_tune_options_output.dart';
import 'change_progress_details.dart';
import 'cluster_config.dart';
import 'cognito_options.dart';
import 'domain_endpoint_options.dart';
import 'domain_processing_status_type_enum_value.dart';
import 'ebsoptions.dart';
import 'encryption_at_rest_options.dart';
import 'ipaddress_type_enum_value.dart';
import 'log_publishing_option.dart';
import 'modifying_properties.dart';
import 'node_to_node_encryption_options.dart';
import 'off_peak_window_options.dart';
import 'service_software_options.dart';
import 'snapshot_options.dart';
import 'software_update_options.dart';
import 'vpcderived_info.dart';

/// Definition of awsOpenSearchDomainStatus
class AwsOpenSearchDomainStatusProperties {
  /// <p>Identity and Access Management (IAM) policy document specifying the access policies for the domain.</p>
  final String? accessPolicies;
  /// <p>Key-value pairs that specify advanced configuration options.</p>
  final Map<String, String>? advancedOptions;
  /// <p>Settings for fine-grained access control.</p>
  final AdvancedSecurityOptions? advancedSecurityOptions;
  /// <p>The Amazon Resource Name (ARN) of the domain. For more information, see <a href='https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html'>IAM identifiers </a> in the <i>AWS Identity and Access Management User Guide</i>.</p>
  final String? arn;
  /// <p>Auto-Tune settings for the domain.</p>
  final AutoTuneOptionsOutput? autoTuneOptions;
  /// <p>Information about a configuration change happening on the domain.</p>
  final ChangeProgressDetails? changeProgressDetails;
  /// <p>Container for the cluster configuration of the domain.</p>
  final ClusterConfig? clusterConfig;
  /// <p>Key-value pairs to configure Amazon Cognito authentication for OpenSearch Dashboards.</p>
  final CognitoOptions? cognitoOptions;
  /// <p>Creation status of an OpenSearch Service domain. True if domain creation is complete. False if domain creation is still in progress.</p>
  final bool? created;
  /// <p>Deletion status of an OpenSearch Service domain. True if domain deletion is complete. False if domain deletion is still in progress. Once deletion is complete, the status of the domain is no longer returned.</p>
  final bool? deleted;
  /// <p>Additional options for the domain endpoint, such as whether to require HTTPS for all traffic.</p>
  final DomainEndpointOptions? domainEndpointOptions;
  /// <p>Unique identifier for the domain.</p>
  final String? domainId;
  /// <p>Name of the domain. Domain names are unique across all domains owned by the same account within an Amazon Web Services Region.</p>
  final String? domainName;
  /// <p>The status of any changes that are currently in progress for the domain.</p>
  final DomainProcessingStatusTypeEnumValue? domainProcessingStatus;
  /// <p>Container for EBS-based storage settings for the domain.</p>
  final EBSOptions? ebsOptions;
  /// <p>Encryption at rest settings for the domain.</p>
  final EncryptionAtRestOptions? encryptionAtRestOptions;
  /// <p>Domain-specific endpoint used to submit index, search, and data upload requests to the domain.</p>
  final String? endpoint;
  /// <p>If <code>IPAddressType</code> to set to <code>dualstack</code>, a version 2 domain endpoint is provisioned. This endpoint functions like a normal endpoint, except that it works with both IPv4 and IPv6 IP addresses. Normal endpoints work only with IPv4 IP addresses. </p>
  final String? endpointV2;
  /// <p>The key-value pair that exists if the OpenSearch Service domain uses VPC endpoints. Example <code>key, value</code>: <code>'vpc','vpc-endpoint-h2dsd34efgyghrtguk5gt6j2foh4.us-east-1.es.amazonaws.com'</code>.</p>
  final Map<String, String>? endpoints;
  /// <p>Version of OpenSearch or Elasticsearch that the domain is running, in the format <code>Elasticsearch_X.Y</code> or <code>OpenSearch_X.Y</code>.</p>
  final String? engineVersion;
  /// <p>The type of IP addresses supported by the endpoint for the domain.</p>
  final IPAddressTypeEnumValue? ipAddressType;
  /// <p>Log publishing options for the domain.</p>
  final Map<String, LogPublishingOption>? logPublishingOptions;
  /// <p>Information about the domain properties that are currently being modified.</p>
  final List<ModifyingProperties>? modifyingProperties;
  /// <p>Whether node-to-node encryption is enabled or disabled.</p>
  final NodeToNodeEncryptionOptions? nodeToNodeEncryptionOptions;
  /// <p>Options that specify a custom 10-hour window during which OpenSearch Service can perform configuration changes on the domain.</p>
  final OffPeakWindowOptions? offPeakWindowOptions;
  /// <p>The status of the domain configuration. True if OpenSearch Service is processing configuration changes. False if the configuration is active.</p>
  final bool? processing;
  /// <p>The current status of the domain's service software.</p>
  final ServiceSoftwareOptions? serviceSoftwareOptions;
  /// <p>DEPRECATED. Container for parameters required to configure automated snapshots of domain indexes.</p>
  final SnapshotOptions? snapshotOptions;
  /// <p>Service software update options for the domain.</p>
  final SoftwareUpdateOptions? softwareUpdateOptions;
  /// <p>The status of a domain version upgrade to a new version of OpenSearch or Elasticsearch. True if OpenSearch Service is in the process of a version upgrade. False if the configuration is active.</p>
  final bool? upgradeProcessing;
  /// <p>The VPC configuration for the domain.</p>
  final VPCDerivedInfo? vpcOptions;

  /// Creates a new [AwsOpenSearchDomainStatusProperties].
  /// [accessPolicies] <p>Identity and Access Management (IAM) policy document specifying the access policies for the domain.</p>
  /// [advancedOptions] <p>Key-value pairs that specify advanced configuration options.</p>
  /// [advancedSecurityOptions] <p>Settings for fine-grained access control.</p>
  /// [arn] <p>The Amazon Resource Name (ARN) of the domain. For more information, see <a href='https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html'>IAM identifiers </a> in the <i>AWS Identity and Access Management User Guide</i>.</p>
  /// [autoTuneOptions] <p>Auto-Tune settings for the domain.</p>
  /// [changeProgressDetails] <p>Information about a configuration change happening on the domain.</p>
  /// [clusterConfig] <p>Container for the cluster configuration of the domain.</p>
  /// [cognitoOptions] <p>Key-value pairs to configure Amazon Cognito authentication for OpenSearch Dashboards.</p>
  /// [created] <p>Creation status of an OpenSearch Service domain. True if domain creation is complete. False if domain creation is still in progress.</p>
  /// [deleted] <p>Deletion status of an OpenSearch Service domain. True if domain deletion is complete. False if domain deletion is still in progress. Once deletion is complete, the status of the domain is no longer returned.</p>
  /// [domainEndpointOptions] <p>Additional options for the domain endpoint, such as whether to require HTTPS for all traffic.</p>
  /// [domainId] <p>Unique identifier for the domain.</p>
  /// [domainName] <p>Name of the domain. Domain names are unique across all domains owned by the same account within an Amazon Web Services Region.</p>
  /// [domainProcessingStatus] <p>The status of any changes that are currently in progress for the domain.</p>
  /// [ebsOptions] <p>Container for EBS-based storage settings for the domain.</p>
  /// [encryptionAtRestOptions] <p>Encryption at rest settings for the domain.</p>
  /// [endpoint] <p>Domain-specific endpoint used to submit index, search, and data upload requests to the domain.</p>
  /// [endpointV2] <p>If <code>IPAddressType</code> to set to <code>dualstack</code>, a version 2 domain endpoint is provisioned. This endpoint functions like a normal endpoint, except that it works with both IPv4 and IPv6 IP addresses. Normal endpoints work only with IPv4 IP addresses. </p>
  /// [endpoints] <p>The key-value pair that exists if the OpenSearch Service domain uses VPC endpoints. Example <code>key, value</code>: <code>'vpc','vpc-endpoint-h2dsd34efgyghrtguk5gt6j2foh4.us-east-1.es.amazonaws.com'</code>.</p>
  /// [engineVersion] <p>Version of OpenSearch or Elasticsearch that the domain is running, in the format <code>Elasticsearch_X.Y</code> or <code>OpenSearch_X.Y</code>.</p>
  /// [ipAddressType] <p>The type of IP addresses supported by the endpoint for the domain.</p>
  /// [logPublishingOptions] <p>Log publishing options for the domain.</p>
  /// [modifyingProperties] <p>Information about the domain properties that are currently being modified.</p>
  /// [nodeToNodeEncryptionOptions] <p>Whether node-to-node encryption is enabled or disabled.</p>
  /// [offPeakWindowOptions] <p>Options that specify a custom 10-hour window during which OpenSearch Service can perform configuration changes on the domain.</p>
  /// [processing] <p>The status of the domain configuration. True if OpenSearch Service is processing configuration changes. False if the configuration is active.</p>
  /// [serviceSoftwareOptions] <p>The current status of the domain's service software.</p>
  /// [snapshotOptions] <p>DEPRECATED. Container for parameters required to configure automated snapshots of domain indexes.</p>
  /// [softwareUpdateOptions] <p>Service software update options for the domain.</p>
  /// [upgradeProcessing] <p>The status of a domain version upgrade to a new version of OpenSearch or Elasticsearch. True if OpenSearch Service is in the process of a version upgrade. False if the configuration is active.</p>
  /// [vpcOptions] <p>The VPC configuration for the domain.</p>
  AwsOpenSearchDomainStatusProperties({
    this.accessPolicies,
    this.advancedOptions,
    this.advancedSecurityOptions,
    this.arn,
    this.autoTuneOptions,
    this.changeProgressDetails,
    this.clusterConfig,
    this.cognitoOptions,
    this.created,
    this.deleted,
    this.domainEndpointOptions,
    this.domainId,
    this.domainName,
    this.domainProcessingStatus,
    this.ebsOptions,
    this.encryptionAtRestOptions,
    this.endpoint,
    this.endpointV2,
    this.endpoints,
    this.engineVersion,
    this.ipAddressType,
    this.logPublishingOptions,
    this.modifyingProperties,
    this.nodeToNodeEncryptionOptions,
    this.offPeakWindowOptions,
    this.processing,
    this.serviceSoftwareOptions,
    this.snapshotOptions,
    this.softwareUpdateOptions,
    this.upgradeProcessing,
    this.vpcOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicies': ?accessPolicies,
      'advancedOptions': ?advancedOptions,
      'advancedSecurityOptions': ?advancedSecurityOptions == null ? null : advancedSecurityOptions!.toMap(),
      'arn': ?arn,
      'autoTuneOptions': ?autoTuneOptions == null ? null : autoTuneOptions!.toMap(),
      'changeProgressDetails': ?changeProgressDetails == null ? null : changeProgressDetails!.toMap(),
      'clusterConfig': ?clusterConfig == null ? null : clusterConfig!.toMap(),
      'cognitoOptions': ?cognitoOptions == null ? null : cognitoOptions!.toMap(),
      'created': ?created,
      'deleted': ?deleted,
      'domainEndpointOptions': ?domainEndpointOptions == null ? null : domainEndpointOptions!.toMap(),
      'domainId': ?domainId,
      'domainName': ?domainName,
      'domainProcessingStatus': ?domainProcessingStatus == null ? null : domainProcessingStatus!.toMap(),
      'ebsOptions': ?ebsOptions == null ? null : ebsOptions!.toMap(),
      'encryptionAtRestOptions': ?encryptionAtRestOptions == null ? null : encryptionAtRestOptions!.toMap(),
      'endpoint': ?endpoint,
      'endpointV2': ?endpointV2,
      'endpoints': ?endpoints,
      'engineVersion': ?engineVersion,
      'ipAddressType': ?ipAddressType == null ? null : ipAddressType!.toMap(),
      'logPublishingOptions': ?logPublishingOptions == null ? null : pulumi.Input.encodeMapValues<LogPublishingOption, Map<String, dynamic>>(logPublishingOptions!, (value) => value.toMap()),
      'modifyingProperties': ?modifyingProperties == null ? null : pulumi.Input.encodeList<ModifyingProperties, Map<String, dynamic>>(modifyingProperties!, (value) => value.toMap()),
      'nodeToNodeEncryptionOptions': ?nodeToNodeEncryptionOptions == null ? null : nodeToNodeEncryptionOptions!.toMap(),
      'offPeakWindowOptions': ?offPeakWindowOptions == null ? null : offPeakWindowOptions!.toMap(),
      'processing': ?processing,
      'serviceSoftwareOptions': ?serviceSoftwareOptions == null ? null : serviceSoftwareOptions!.toMap(),
      'snapshotOptions': ?snapshotOptions == null ? null : snapshotOptions!.toMap(),
      'softwareUpdateOptions': ?softwareUpdateOptions == null ? null : softwareUpdateOptions!.toMap(),
      'upgradeProcessing': ?upgradeProcessing,
      'vpcOptions': ?vpcOptions == null ? null : vpcOptions!.toMap(),
    };
  }

  factory AwsOpenSearchDomainStatusProperties.fromMap(Map<String, dynamic> map) {
    return AwsOpenSearchDomainStatusProperties(
      accessPolicies: map['accessPolicies'] == null ? null : map['accessPolicies'] as String,
      advancedOptions: map['advancedOptions'] == null ? null : (map['advancedOptions'] as Map).cast<String, String>(),
      advancedSecurityOptions: map['advancedSecurityOptions'] == null ? null : AdvancedSecurityOptions.fromMap((map['advancedSecurityOptions'] as Map).cast<String, dynamic>()),
      arn: map['arn'] == null ? null : map['arn'] as String,
      autoTuneOptions: map['autoTuneOptions'] == null ? null : AutoTuneOptionsOutput.fromMap((map['autoTuneOptions'] as Map).cast<String, dynamic>()),
      changeProgressDetails: map['changeProgressDetails'] == null ? null : ChangeProgressDetails.fromMap((map['changeProgressDetails'] as Map).cast<String, dynamic>()),
      clusterConfig: map['clusterConfig'] == null ? null : ClusterConfig.fromMap((map['clusterConfig'] as Map).cast<String, dynamic>()),
      cognitoOptions: map['cognitoOptions'] == null ? null : CognitoOptions.fromMap((map['cognitoOptions'] as Map).cast<String, dynamic>()),
      created: map['created'] == null ? null : map['created'] as bool,
      deleted: map['deleted'] == null ? null : map['deleted'] as bool,
      domainEndpointOptions: map['domainEndpointOptions'] == null ? null : DomainEndpointOptions.fromMap((map['domainEndpointOptions'] as Map).cast<String, dynamic>()),
      domainId: map['domainId'] == null ? null : map['domainId'] as String,
      domainName: map['domainName'] == null ? null : map['domainName'] as String,
      domainProcessingStatus: map['domainProcessingStatus'] == null ? null : DomainProcessingStatusTypeEnumValue.fromMap((map['domainProcessingStatus'] as Map).cast<String, dynamic>()),
      ebsOptions: map['ebsOptions'] == null ? null : EBSOptions.fromMap((map['ebsOptions'] as Map).cast<String, dynamic>()),
      encryptionAtRestOptions: map['encryptionAtRestOptions'] == null ? null : EncryptionAtRestOptions.fromMap((map['encryptionAtRestOptions'] as Map).cast<String, dynamic>()),
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      endpointV2: map['endpointV2'] == null ? null : map['endpointV2'] as String,
      endpoints: map['endpoints'] == null ? null : (map['endpoints'] as Map).cast<String, String>(),
      engineVersion: map['engineVersion'] == null ? null : map['engineVersion'] as String,
      ipAddressType: map['ipAddressType'] == null ? null : IPAddressTypeEnumValue.fromMap((map['ipAddressType'] as Map).cast<String, dynamic>()),
      logPublishingOptions: map['logPublishingOptions'] == null ? null : pulumi.Input.decodeMapValues<LogPublishingOption>(map['logPublishingOptions'], (value) => LogPublishingOption.fromMap((value as Map).cast<String, dynamic>())),
      modifyingProperties: map['modifyingProperties'] == null ? null : pulumi.Input.decodeList<ModifyingProperties>(map['modifyingProperties'], (value) => ModifyingProperties.fromMap((value as Map).cast<String, dynamic>())),
      nodeToNodeEncryptionOptions: map['nodeToNodeEncryptionOptions'] == null ? null : NodeToNodeEncryptionOptions.fromMap((map['nodeToNodeEncryptionOptions'] as Map).cast<String, dynamic>()),
      offPeakWindowOptions: map['offPeakWindowOptions'] == null ? null : OffPeakWindowOptions.fromMap((map['offPeakWindowOptions'] as Map).cast<String, dynamic>()),
      processing: map['processing'] == null ? null : map['processing'] as bool,
      serviceSoftwareOptions: map['serviceSoftwareOptions'] == null ? null : ServiceSoftwareOptions.fromMap((map['serviceSoftwareOptions'] as Map).cast<String, dynamic>()),
      snapshotOptions: map['snapshotOptions'] == null ? null : SnapshotOptions.fromMap((map['snapshotOptions'] as Map).cast<String, dynamic>()),
      softwareUpdateOptions: map['softwareUpdateOptions'] == null ? null : SoftwareUpdateOptions.fromMap((map['softwareUpdateOptions'] as Map).cast<String, dynamic>()),
      upgradeProcessing: map['upgradeProcessing'] == null ? null : map['upgradeProcessing'] as bool,
      vpcOptions: map['vpcOptions'] == null ? null : VPCDerivedInfo.fromMap((map['vpcOptions'] as Map).cast<String, dynamic>()),
    );
  }
}


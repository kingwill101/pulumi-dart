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
  final pulumi.Input<String>? accessPolicies;
  /// <p>Key-value pairs that specify advanced configuration options.</p>
  final pulumi.Input<Map<String, String>>? advancedOptions;
  /// <p>Settings for fine-grained access control.</p>
  final pulumi.Input<AdvancedSecurityOptions>? advancedSecurityOptions;
  /// <p>The Amazon Resource Name (ARN) of the domain. For more information, see <a href='https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html'>IAM identifiers </a> in the <i>AWS Identity and Access Management User Guide</i>.</p>
  final pulumi.Input<String>? arn;
  /// <p>Auto-Tune settings for the domain.</p>
  final pulumi.Input<AutoTuneOptionsOutput>? autoTuneOptions;
  /// <p>Information about a configuration change happening on the domain.</p>
  final pulumi.Input<ChangeProgressDetails>? changeProgressDetails;
  /// <p>Container for the cluster configuration of the domain.</p>
  final pulumi.Input<ClusterConfig>? clusterConfig;
  /// <p>Key-value pairs to configure Amazon Cognito authentication for OpenSearch Dashboards.</p>
  final pulumi.Input<CognitoOptions>? cognitoOptions;
  /// <p>Creation status of an OpenSearch Service domain. True if domain creation is complete. False if domain creation is still in progress.</p>
  final pulumi.Input<bool>? created;
  /// <p>Deletion status of an OpenSearch Service domain. True if domain deletion is complete. False if domain deletion is still in progress. Once deletion is complete, the status of the domain is no longer returned.</p>
  final pulumi.Input<bool>? deleted;
  /// <p>Additional options for the domain endpoint, such as whether to require HTTPS for all traffic.</p>
  final pulumi.Input<DomainEndpointOptions>? domainEndpointOptions;
  /// <p>Unique identifier for the domain.</p>
  final pulumi.Input<String>? domainId;
  /// <p>Name of the domain. Domain names are unique across all domains owned by the same account within an Amazon Web Services Region.</p>
  final pulumi.Input<String>? domainName;
  /// <p>The status of any changes that are currently in progress for the domain.</p>
  final pulumi.Input<DomainProcessingStatusTypeEnumValue>? domainProcessingStatus;
  /// <p>Container for EBS-based storage settings for the domain.</p>
  final pulumi.Input<EBSOptions>? ebsOptions;
  /// <p>Encryption at rest settings for the domain.</p>
  final pulumi.Input<EncryptionAtRestOptions>? encryptionAtRestOptions;
  /// <p>Domain-specific endpoint used to submit index, search, and data upload requests to the domain.</p>
  final pulumi.Input<String>? endpoint;
  /// <p>If <code>IPAddressType</code> to set to <code>dualstack</code>, a version 2 domain endpoint is provisioned. This endpoint functions like a normal endpoint, except that it works with both IPv4 and IPv6 IP addresses. Normal endpoints work only with IPv4 IP addresses. </p>
  final pulumi.Input<String>? endpointV2;
  /// <p>The key-value pair that exists if the OpenSearch Service domain uses VPC endpoints. Example <code>key, value</code>: <code>'vpc','vpc-endpoint-h2dsd34efgyghrtguk5gt6j2foh4.us-east-1.es.amazonaws.com'</code>.</p>
  final pulumi.Input<Map<String, String>>? endpoints;
  /// <p>Version of OpenSearch or Elasticsearch that the domain is running, in the format <code>Elasticsearch_X.Y</code> or <code>OpenSearch_X.Y</code>.</p>
  final pulumi.Input<String>? engineVersion;
  /// <p>The type of IP addresses supported by the endpoint for the domain.</p>
  final pulumi.Input<IPAddressTypeEnumValue>? ipAddressType;
  /// <p>Log publishing options for the domain.</p>
  final pulumi.Input<Map<String, LogPublishingOption>>? logPublishingOptions;
  /// <p>Information about the domain properties that are currently being modified.</p>
  final pulumi.Input<List<ModifyingProperties>>? modifyingProperties;
  /// <p>Whether node-to-node encryption is enabled or disabled.</p>
  final pulumi.Input<NodeToNodeEncryptionOptions>? nodeToNodeEncryptionOptions;
  /// <p>Options that specify a custom 10-hour window during which OpenSearch Service can perform configuration changes on the domain.</p>
  final pulumi.Input<OffPeakWindowOptions>? offPeakWindowOptions;
  /// <p>The status of the domain configuration. True if OpenSearch Service is processing configuration changes. False if the configuration is active.</p>
  final pulumi.Input<bool>? processing;
  /// <p>The current status of the domain's service software.</p>
  final pulumi.Input<ServiceSoftwareOptions>? serviceSoftwareOptions;
  /// <p>DEPRECATED. Container for parameters required to configure automated snapshots of domain indexes.</p>
  final pulumi.Input<SnapshotOptions>? snapshotOptions;
  /// <p>Service software update options for the domain.</p>
  final pulumi.Input<SoftwareUpdateOptions>? softwareUpdateOptions;
  /// <p>The status of a domain version upgrade to a new version of OpenSearch or Elasticsearch. True if OpenSearch Service is in the process of a version upgrade. False if the configuration is active.</p>
  final pulumi.Input<bool>? upgradeProcessing;
  /// <p>The VPC configuration for the domain.</p>
  final pulumi.Input<VPCDerivedInfo>? vpcOptions;

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
      'advancedSecurityOptions': ?pulumi.Input.mapOptionalInputValue<AdvancedSecurityOptions, Map<String, dynamic>>(advancedSecurityOptions, (value) => value.toMap()),
      'arn': ?arn,
      'autoTuneOptions': ?pulumi.Input.mapOptionalInputValue<AutoTuneOptionsOutput, Map<String, dynamic>>(autoTuneOptions, (value) => value.toMap()),
      'changeProgressDetails': ?pulumi.Input.mapOptionalInputValue<ChangeProgressDetails, Map<String, dynamic>>(changeProgressDetails, (value) => value.toMap()),
      'clusterConfig': ?pulumi.Input.mapOptionalInputValue<ClusterConfig, Map<String, dynamic>>(clusterConfig, (value) => value.toMap()),
      'cognitoOptions': ?pulumi.Input.mapOptionalInputValue<CognitoOptions, Map<String, dynamic>>(cognitoOptions, (value) => value.toMap()),
      'created': ?created,
      'deleted': ?deleted,
      'domainEndpointOptions': ?pulumi.Input.mapOptionalInputValue<DomainEndpointOptions, Map<String, dynamic>>(domainEndpointOptions, (value) => value.toMap()),
      'domainId': ?domainId,
      'domainName': ?domainName,
      'domainProcessingStatus': ?pulumi.Input.mapOptionalInputValue<DomainProcessingStatusTypeEnumValue, Map<String, dynamic>>(domainProcessingStatus, (value) => value.toMap()),
      'ebsOptions': ?pulumi.Input.mapOptionalInputValue<EBSOptions, Map<String, dynamic>>(ebsOptions, (value) => value.toMap()),
      'encryptionAtRestOptions': ?pulumi.Input.mapOptionalInputValue<EncryptionAtRestOptions, Map<String, dynamic>>(encryptionAtRestOptions, (value) => value.toMap()),
      'endpoint': ?endpoint,
      'endpointV2': ?endpointV2,
      'endpoints': ?endpoints,
      'engineVersion': ?engineVersion,
      'ipAddressType': ?pulumi.Input.mapOptionalInputValue<IPAddressTypeEnumValue, Map<String, dynamic>>(ipAddressType, (value) => value.toMap()),
      'logPublishingOptions': ?pulumi.Input.mapOptionalInputValue<Map<String, LogPublishingOption>, Map<String, Map<String, dynamic>>>(logPublishingOptions, (value) => pulumi.Input.encodeMapValues<LogPublishingOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'modifyingProperties': ?pulumi.Input.mapOptionalInputValue<List<ModifyingProperties>, List<Map<String, dynamic>>>(modifyingProperties, (value) => pulumi.Input.encodeList<ModifyingProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeToNodeEncryptionOptions': ?pulumi.Input.mapOptionalInputValue<NodeToNodeEncryptionOptions, Map<String, dynamic>>(nodeToNodeEncryptionOptions, (value) => value.toMap()),
      'offPeakWindowOptions': ?pulumi.Input.mapOptionalInputValue<OffPeakWindowOptions, Map<String, dynamic>>(offPeakWindowOptions, (value) => value.toMap()),
      'processing': ?processing,
      'serviceSoftwareOptions': ?pulumi.Input.mapOptionalInputValue<ServiceSoftwareOptions, Map<String, dynamic>>(serviceSoftwareOptions, (value) => value.toMap()),
      'snapshotOptions': ?pulumi.Input.mapOptionalInputValue<SnapshotOptions, Map<String, dynamic>>(snapshotOptions, (value) => value.toMap()),
      'softwareUpdateOptions': ?pulumi.Input.mapOptionalInputValue<SoftwareUpdateOptions, Map<String, dynamic>>(softwareUpdateOptions, (value) => value.toMap()),
      'upgradeProcessing': ?upgradeProcessing,
      'vpcOptions': ?pulumi.Input.mapOptionalInputValue<VPCDerivedInfo, Map<String, dynamic>>(vpcOptions, (value) => value.toMap()),
    };
  }

  factory AwsOpenSearchDomainStatusProperties.fromMap(Map<String, dynamic> map) {
    return AwsOpenSearchDomainStatusProperties(
      accessPolicies: map['accessPolicies'] == null ? null : (map['accessPolicies']! as String).input(),
      advancedOptions: map['advancedOptions'] == null ? null : ((map['advancedOptions']! as Map).cast<String, String>()).input(),
      advancedSecurityOptions: map['advancedSecurityOptions'] == null ? null : (AdvancedSecurityOptions.fromMap((map['advancedSecurityOptions']! as Map).cast<String, dynamic>())).input(),
      arn: map['arn'] == null ? null : (map['arn']! as String).input(),
      autoTuneOptions: map['autoTuneOptions'] == null ? null : (AutoTuneOptionsOutput.fromMap((map['autoTuneOptions']! as Map).cast<String, dynamic>())).input(),
      changeProgressDetails: map['changeProgressDetails'] == null ? null : (ChangeProgressDetails.fromMap((map['changeProgressDetails']! as Map).cast<String, dynamic>())).input(),
      clusterConfig: map['clusterConfig'] == null ? null : (ClusterConfig.fromMap((map['clusterConfig']! as Map).cast<String, dynamic>())).input(),
      cognitoOptions: map['cognitoOptions'] == null ? null : (CognitoOptions.fromMap((map['cognitoOptions']! as Map).cast<String, dynamic>())).input(),
      created: map['created'] == null ? null : (map['created']! as bool).input(),
      deleted: map['deleted'] == null ? null : (map['deleted']! as bool).input(),
      domainEndpointOptions: map['domainEndpointOptions'] == null ? null : (DomainEndpointOptions.fromMap((map['domainEndpointOptions']! as Map).cast<String, dynamic>())).input(),
      domainId: map['domainId'] == null ? null : (map['domainId']! as String).input(),
      domainName: map['domainName'] == null ? null : (map['domainName']! as String).input(),
      domainProcessingStatus: map['domainProcessingStatus'] == null ? null : (DomainProcessingStatusTypeEnumValue.fromMap((map['domainProcessingStatus']! as Map).cast<String, dynamic>())).input(),
      ebsOptions: map['ebsOptions'] == null ? null : (EBSOptions.fromMap((map['ebsOptions']! as Map).cast<String, dynamic>())).input(),
      encryptionAtRestOptions: map['encryptionAtRestOptions'] == null ? null : (EncryptionAtRestOptions.fromMap((map['encryptionAtRestOptions']! as Map).cast<String, dynamic>())).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint']! as String).input(),
      endpointV2: map['endpointV2'] == null ? null : (map['endpointV2']! as String).input(),
      endpoints: map['endpoints'] == null ? null : ((map['endpoints']! as Map).cast<String, String>()).input(),
      engineVersion: map['engineVersion'] == null ? null : (map['engineVersion']! as String).input(),
      ipAddressType: map['ipAddressType'] == null ? null : (IPAddressTypeEnumValue.fromMap((map['ipAddressType']! as Map).cast<String, dynamic>())).input(),
      logPublishingOptions: map['logPublishingOptions'] == null ? null : (pulumi.Input.decodeMapValues<LogPublishingOption>(map['logPublishingOptions']!, (value) => LogPublishingOption.fromMap((value as Map).cast<String, dynamic>()))).input(),
      modifyingProperties: map['modifyingProperties'] == null ? null : (pulumi.Input.decodeList<ModifyingProperties>(map['modifyingProperties']!, (value) => ModifyingProperties.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nodeToNodeEncryptionOptions: map['nodeToNodeEncryptionOptions'] == null ? null : (NodeToNodeEncryptionOptions.fromMap((map['nodeToNodeEncryptionOptions']! as Map).cast<String, dynamic>())).input(),
      offPeakWindowOptions: map['offPeakWindowOptions'] == null ? null : (OffPeakWindowOptions.fromMap((map['offPeakWindowOptions']! as Map).cast<String, dynamic>())).input(),
      processing: map['processing'] == null ? null : (map['processing']! as bool).input(),
      serviceSoftwareOptions: map['serviceSoftwareOptions'] == null ? null : (ServiceSoftwareOptions.fromMap((map['serviceSoftwareOptions']! as Map).cast<String, dynamic>())).input(),
      snapshotOptions: map['snapshotOptions'] == null ? null : (SnapshotOptions.fromMap((map['snapshotOptions']! as Map).cast<String, dynamic>())).input(),
      softwareUpdateOptions: map['softwareUpdateOptions'] == null ? null : (SoftwareUpdateOptions.fromMap((map['softwareUpdateOptions']! as Map).cast<String, dynamic>())).input(),
      upgradeProcessing: map['upgradeProcessing'] == null ? null : (map['upgradeProcessing']! as bool).input(),
      vpcOptions: map['vpcOptions'] == null ? null : (VPCDerivedInfo.fromMap((map['vpcOptions']! as Map).cast<String, dynamic>())).input(),
    );
  }
}


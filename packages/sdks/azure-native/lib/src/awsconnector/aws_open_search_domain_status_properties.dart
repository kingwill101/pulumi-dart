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
  /// &lt;p&gt;Identity and Access Management (IAM) policy document specifying the access policies for the domain.&lt;/p&gt;
  final pulumi.Input<String>? accessPolicies;
  /// &lt;p&gt;Key-value pairs that specify advanced configuration options.&lt;/p&gt;
  final pulumi.Input<Map<String, String>>? advancedOptions;
  /// &lt;p&gt;Settings for fine-grained access control.&lt;/p&gt;
  final pulumi.Input<AdvancedSecurityOptions>? advancedSecurityOptions;
  /// &lt;p&gt;The Amazon Resource Name (ARN) of the domain. For more information, see &lt;a href='https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html'&gt;IAM identifiers &lt;/a&gt; in the &lt;i&gt;AWS Identity and Access Management User Guide&lt;/i&gt;.&lt;/p&gt;
  final pulumi.Input<String>? arn;
  /// &lt;p&gt;Auto-Tune settings for the domain.&lt;/p&gt;
  final pulumi.Input<AutoTuneOptionsOutput>? autoTuneOptions;
  /// &lt;p&gt;Information about a configuration change happening on the domain.&lt;/p&gt;
  final pulumi.Input<ChangeProgressDetails>? changeProgressDetails;
  /// &lt;p&gt;Container for the cluster configuration of the domain.&lt;/p&gt;
  final pulumi.Input<ClusterConfig>? clusterConfig;
  /// &lt;p&gt;Key-value pairs to configure Amazon Cognito authentication for OpenSearch Dashboards.&lt;/p&gt;
  final pulumi.Input<CognitoOptions>? cognitoOptions;
  /// &lt;p&gt;Creation status of an OpenSearch Service domain. True if domain creation is complete. False if domain creation is still in progress.&lt;/p&gt;
  final pulumi.Input<bool>? created;
  /// &lt;p&gt;Deletion status of an OpenSearch Service domain. True if domain deletion is complete. False if domain deletion is still in progress. Once deletion is complete, the status of the domain is no longer returned.&lt;/p&gt;
  final pulumi.Input<bool>? deleted;
  /// &lt;p&gt;Additional options for the domain endpoint, such as whether to require HTTPS for all traffic.&lt;/p&gt;
  final pulumi.Input<DomainEndpointOptions>? domainEndpointOptions;
  /// &lt;p&gt;Unique identifier for the domain.&lt;/p&gt;
  final pulumi.Input<String>? domainId;
  /// &lt;p&gt;Name of the domain. Domain names are unique across all domains owned by the same account within an Amazon Web Services Region.&lt;/p&gt;
  final pulumi.Input<String>? domainName;
  /// &lt;p&gt;The status of any changes that are currently in progress for the domain.&lt;/p&gt;
  final pulumi.Input<DomainProcessingStatusTypeEnumValue>? domainProcessingStatus;
  /// &lt;p&gt;Container for EBS-based storage settings for the domain.&lt;/p&gt;
  final pulumi.Input<EBSOptions>? ebsOptions;
  /// &lt;p&gt;Encryption at rest settings for the domain.&lt;/p&gt;
  final pulumi.Input<EncryptionAtRestOptions>? encryptionAtRestOptions;
  /// &lt;p&gt;Domain-specific endpoint used to submit index, search, and data upload requests to the domain.&lt;/p&gt;
  final pulumi.Input<String>? endpoint;
  /// &lt;p&gt;If &lt;code&gt;IPAddressType&lt;/code&gt; to set to &lt;code&gt;dualstack&lt;/code&gt;, a version 2 domain endpoint is provisioned. This endpoint functions like a normal endpoint, except that it works with both IPv4 and IPv6 IP addresses. Normal endpoints work only with IPv4 IP addresses. &lt;/p&gt;
  final pulumi.Input<String>? endpointV2;
  /// &lt;p&gt;The key-value pair that exists if the OpenSearch Service domain uses VPC endpoints. Example &lt;code&gt;key, value&lt;/code&gt;: &lt;code&gt;'vpc','vpc-endpoint-h2dsd34efgyghrtguk5gt6j2foh4.us-east-1.es.amazonaws.com'&lt;/code&gt;.&lt;/p&gt;
  final pulumi.Input<Map<String, String>>? endpoints;
  /// &lt;p&gt;Version of OpenSearch or Elasticsearch that the domain is running, in the format &lt;code&gt;Elasticsearch_X.Y&lt;/code&gt; or &lt;code&gt;OpenSearch_X.Y&lt;/code&gt;.&lt;/p&gt;
  final pulumi.Input<String>? engineVersion;
  /// &lt;p&gt;The type of IP addresses supported by the endpoint for the domain.&lt;/p&gt;
  final pulumi.Input<IPAddressTypeEnumValue>? ipAddressType;
  /// &lt;p&gt;Log publishing options for the domain.&lt;/p&gt;
  final pulumi.Input<Map<String, LogPublishingOption>>? logPublishingOptions;
  /// &lt;p&gt;Information about the domain properties that are currently being modified.&lt;/p&gt;
  final pulumi.Input<List<ModifyingProperties>>? modifyingProperties;
  /// &lt;p&gt;Whether node-to-node encryption is enabled or disabled.&lt;/p&gt;
  final pulumi.Input<NodeToNodeEncryptionOptions>? nodeToNodeEncryptionOptions;
  /// &lt;p&gt;Options that specify a custom 10-hour window during which OpenSearch Service can perform configuration changes on the domain.&lt;/p&gt;
  final pulumi.Input<OffPeakWindowOptions>? offPeakWindowOptions;
  /// &lt;p&gt;The status of the domain configuration. True if OpenSearch Service is processing configuration changes. False if the configuration is active.&lt;/p&gt;
  final pulumi.Input<bool>? processing;
  /// &lt;p&gt;The current status of the domain's service software.&lt;/p&gt;
  final pulumi.Input<ServiceSoftwareOptions>? serviceSoftwareOptions;
  /// &lt;p&gt;DEPRECATED. Container for parameters required to configure automated snapshots of domain indexes.&lt;/p&gt;
  final pulumi.Input<SnapshotOptions>? snapshotOptions;
  /// &lt;p&gt;Service software update options for the domain.&lt;/p&gt;
  final pulumi.Input<SoftwareUpdateOptions>? softwareUpdateOptions;
  /// &lt;p&gt;The status of a domain version upgrade to a new version of OpenSearch or Elasticsearch. True if OpenSearch Service is in the process of a version upgrade. False if the configuration is active.&lt;/p&gt;
  final pulumi.Input<bool>? upgradeProcessing;
  /// &lt;p&gt;The VPC configuration for the domain.&lt;/p&gt;
  final pulumi.Input<VPCDerivedInfo>? vpcOptions;

  /// Creates a new [AwsOpenSearchDomainStatusProperties].
  /// [accessPolicies] &lt;p&gt;Identity and Access Management (IAM) policy document specifying the access policies for the domain.&lt;/p&gt;
  /// [advancedOptions] &lt;p&gt;Key-value pairs that specify advanced configuration options.&lt;/p&gt;
  /// [advancedSecurityOptions] &lt;p&gt;Settings for fine-grained access control.&lt;/p&gt;
  /// [arn] &lt;p&gt;The Amazon Resource Name (ARN) of the domain. For more information, see &lt;a href='https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html'&gt;IAM identifiers &lt;/a&gt; in the &lt;i&gt;AWS Identity and Access Management User Guide&lt;/i&gt;.&lt;/p&gt;
  /// [autoTuneOptions] &lt;p&gt;Auto-Tune settings for the domain.&lt;/p&gt;
  /// [changeProgressDetails] &lt;p&gt;Information about a configuration change happening on the domain.&lt;/p&gt;
  /// [clusterConfig] &lt;p&gt;Container for the cluster configuration of the domain.&lt;/p&gt;
  /// [cognitoOptions] &lt;p&gt;Key-value pairs to configure Amazon Cognito authentication for OpenSearch Dashboards.&lt;/p&gt;
  /// [created] &lt;p&gt;Creation status of an OpenSearch Service domain. True if domain creation is complete. False if domain creation is still in progress.&lt;/p&gt;
  /// [deleted] &lt;p&gt;Deletion status of an OpenSearch Service domain. True if domain deletion is complete. False if domain deletion is still in progress. Once deletion is complete, the status of the domain is no longer returned.&lt;/p&gt;
  /// [domainEndpointOptions] &lt;p&gt;Additional options for the domain endpoint, such as whether to require HTTPS for all traffic.&lt;/p&gt;
  /// [domainId] &lt;p&gt;Unique identifier for the domain.&lt;/p&gt;
  /// [domainName] &lt;p&gt;Name of the domain. Domain names are unique across all domains owned by the same account within an Amazon Web Services Region.&lt;/p&gt;
  /// [domainProcessingStatus] &lt;p&gt;The status of any changes that are currently in progress for the domain.&lt;/p&gt;
  /// [ebsOptions] &lt;p&gt;Container for EBS-based storage settings for the domain.&lt;/p&gt;
  /// [encryptionAtRestOptions] &lt;p&gt;Encryption at rest settings for the domain.&lt;/p&gt;
  /// [endpoint] &lt;p&gt;Domain-specific endpoint used to submit index, search, and data upload requests to the domain.&lt;/p&gt;
  /// [endpointV2] &lt;p&gt;If &lt;code&gt;IPAddressType&lt;/code&gt; to set to &lt;code&gt;dualstack&lt;/code&gt;, a version 2 domain endpoint is provisioned. This endpoint functions like a normal endpoint, except that it works with both IPv4 and IPv6 IP addresses. Normal endpoints work only with IPv4 IP addresses. &lt;/p&gt;
  /// [endpoints] &lt;p&gt;The key-value pair that exists if the OpenSearch Service domain uses VPC endpoints. Example &lt;code&gt;key, value&lt;/code&gt;: &lt;code&gt;'vpc','vpc-endpoint-h2dsd34efgyghrtguk5gt6j2foh4.us-east-1.es.amazonaws.com'&lt;/code&gt;.&lt;/p&gt;
  /// [engineVersion] &lt;p&gt;Version of OpenSearch or Elasticsearch that the domain is running, in the format &lt;code&gt;Elasticsearch_X.Y&lt;/code&gt; or &lt;code&gt;OpenSearch_X.Y&lt;/code&gt;.&lt;/p&gt;
  /// [ipAddressType] &lt;p&gt;The type of IP addresses supported by the endpoint for the domain.&lt;/p&gt;
  /// [logPublishingOptions] &lt;p&gt;Log publishing options for the domain.&lt;/p&gt;
  /// [modifyingProperties] &lt;p&gt;Information about the domain properties that are currently being modified.&lt;/p&gt;
  /// [nodeToNodeEncryptionOptions] &lt;p&gt;Whether node-to-node encryption is enabled or disabled.&lt;/p&gt;
  /// [offPeakWindowOptions] &lt;p&gt;Options that specify a custom 10-hour window during which OpenSearch Service can perform configuration changes on the domain.&lt;/p&gt;
  /// [processing] &lt;p&gt;The status of the domain configuration. True if OpenSearch Service is processing configuration changes. False if the configuration is active.&lt;/p&gt;
  /// [serviceSoftwareOptions] &lt;p&gt;The current status of the domain's service software.&lt;/p&gt;
  /// [snapshotOptions] &lt;p&gt;DEPRECATED. Container for parameters required to configure automated snapshots of domain indexes.&lt;/p&gt;
  /// [softwareUpdateOptions] &lt;p&gt;Service software update options for the domain.&lt;/p&gt;
  /// [upgradeProcessing] &lt;p&gt;The status of a domain version upgrade to a new version of OpenSearch or Elasticsearch. True if OpenSearch Service is in the process of a version upgrade. False if the configuration is active.&lt;/p&gt;
  /// [vpcOptions] &lt;p&gt;The VPC configuration for the domain.&lt;/p&gt;
  const AwsOpenSearchDomainStatusProperties({
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
      accessPolicies: (() { final guardedValue = map['accessPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      advancedOptions: (() { final guardedValue = map['advancedOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      advancedSecurityOptions: (() { final guardedValue = map['advancedSecurityOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AdvancedSecurityOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoTuneOptions: (() { final guardedValue = map['autoTuneOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoTuneOptionsOutput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      changeProgressDetails: (() { final guardedValue = map['changeProgressDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChangeProgressDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clusterConfig: (() { final guardedValue = map['clusterConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cognitoOptions: (() { final guardedValue = map['cognitoOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CognitoOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deleted: (() { final guardedValue = map['deleted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      domainEndpointOptions: (() { final guardedValue = map['domainEndpointOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainEndpointOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      domainId: (() { final guardedValue = map['domainId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainProcessingStatus: (() { final guardedValue = map['domainProcessingStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainProcessingStatusTypeEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ebsOptions: (() { final guardedValue = map['ebsOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EBSOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      encryptionAtRestOptions: (() { final guardedValue = map['encryptionAtRestOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionAtRestOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointV2: (() { final guardedValue = map['endpointV2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddressType: (() { final guardedValue = map['ipAddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IPAddressTypeEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logPublishingOptions: (() { final guardedValue = map['logPublishingOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<LogPublishingOption>(guardedValue, (value) => LogPublishingOption.fromMap((value as Map).cast<String, dynamic>()))); })(),
      modifyingProperties: (() { final guardedValue = map['modifyingProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ModifyingProperties>(guardedValue, (value) => ModifyingProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nodeToNodeEncryptionOptions: (() { final guardedValue = map['nodeToNodeEncryptionOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeToNodeEncryptionOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      offPeakWindowOptions: (() { final guardedValue = map['offPeakWindowOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OffPeakWindowOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      processing: (() { final guardedValue = map['processing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serviceSoftwareOptions: (() { final guardedValue = map['serviceSoftwareOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceSoftwareOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      snapshotOptions: (() { final guardedValue = map['snapshotOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SnapshotOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      softwareUpdateOptions: (() { final guardedValue = map['softwareUpdateOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SoftwareUpdateOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      upgradeProcessing: (() { final guardedValue = map['upgradeProcessing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      vpcOptions: (() { final guardedValue = map['vpcOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VPCDerivedInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


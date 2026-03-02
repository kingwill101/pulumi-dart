// ignore_for_file: unused_element, unnecessary_cast

import 'compliance_status_response.dart';
import 'helm_operator_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSourceControlConfiguration.
class GetSourceControlConfigurationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Compliance Status of the Configuration
  final ComplianceStatusResponse complianceStatus;
  /// Name-value pairs of protected configuration settings for the configuration
  final Map<String, String>? configurationProtectedSettings;
  /// Option to enable Helm Operator for this git configuration.
  final bool? enableHelmOperator;
  /// Properties for Helm operator.
  final HelmOperatorPropertiesResponse? helmOperatorProperties;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// Instance name of the operator - identifying the specific configuration.
  final String? operatorInstanceName;
  /// The namespace to which this operator is installed to. Maximum of 253 lower case alphanumeric characters, hyphen and period only.
  final String? operatorNamespace;
  /// Any Parameters for the Operator instance in string format.
  final String? operatorParams;
  /// Scope at which the operator will be installed.
  final String? operatorScope;
  /// Type of the operator
  final String? operatorType;
  /// The provisioning state of the resource provider.
  final String provisioningState;
  /// Public Key associated with this SourceControl configuration (either generated within the cluster or provided by the user).
  final String repositoryPublicKey;
  /// Url of the SourceControl Repository.
  final String? repositoryUrl;
  /// Base64-encoded known_hosts contents containing public SSH keys required to access private Git instances
  final String? sshKnownHostsContents;
  /// Top level metadata https://github.com/Azure/azure-resource-manager-rpc/blob/master/v1.0/common-api-contracts.md#system-metadata-for-all-azure-resources
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetSourceControlConfigurationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [complianceStatus] Compliance Status of the Configuration
  /// [configurationProtectedSettings] Name-value pairs of protected configuration settings for the configuration
  /// [enableHelmOperator] Option to enable Helm Operator for this git configuration.
  /// [helmOperatorProperties] Properties for Helm operator.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [operatorInstanceName] Instance name of the operator - identifying the specific configuration.
  /// [operatorNamespace] The namespace to which this operator is installed to. Maximum of 253 lower case alphanumeric characters, hyphen and period only.
  /// [operatorParams] Any Parameters for the Operator instance in string format.
  /// [operatorScope] Scope at which the operator will be installed.
  /// [operatorType] Type of the operator
  /// [provisioningState] The provisioning state of the resource provider.
  /// [repositoryPublicKey] Public Key associated with this SourceControl configuration (either generated within the cluster or provided by the user).
  /// [repositoryUrl] Url of the SourceControl Repository.
  /// [sshKnownHostsContents] Base64-encoded known_hosts contents containing public SSH keys required to access private Git instances
  /// [systemData] Top level metadata https://github.com/Azure/azure-resource-manager-rpc/blob/master/v1.0/common-api-contracts.md#system-metadata-for-all-azure-resources
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetSourceControlConfigurationResult({
    required this.azureApiVersion,
    required this.complianceStatus,
    this.configurationProtectedSettings,
    this.enableHelmOperator,
    this.helmOperatorProperties,
    required this.id,
    required this.name,
    this.operatorInstanceName,
    this.operatorNamespace,
    this.operatorParams,
    this.operatorScope,
    this.operatorType,
    required this.provisioningState,
    required this.repositoryPublicKey,
    this.repositoryUrl,
    this.sshKnownHostsContents,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'complianceStatus': complianceStatus.toMap(),
      'configurationProtectedSettings': ?configurationProtectedSettings,
      'enableHelmOperator': ?enableHelmOperator,
      'helmOperatorProperties': ?helmOperatorProperties == null ? null : helmOperatorProperties!.toMap(),
      'id': id,
      'name': name,
      'operatorInstanceName': ?operatorInstanceName,
      'operatorNamespace': ?operatorNamespace,
      'operatorParams': ?operatorParams,
      'operatorScope': ?operatorScope,
      'operatorType': ?operatorType,
      'provisioningState': provisioningState,
      'repositoryPublicKey': repositoryPublicKey,
      'repositoryUrl': ?repositoryUrl,
      'sshKnownHostsContents': ?sshKnownHostsContents,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetSourceControlConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetSourceControlConfigurationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      complianceStatus: ComplianceStatusResponse.fromMap((map['complianceStatus'] as Map).cast<String, dynamic>()),
      configurationProtectedSettings: map['configurationProtectedSettings'] == null ? null : (map['configurationProtectedSettings']! as Map).cast<String, String>(),
      enableHelmOperator: map['enableHelmOperator'] == null ? null : map['enableHelmOperator']! as bool,
      helmOperatorProperties: map['helmOperatorProperties'] == null ? null : HelmOperatorPropertiesResponse.fromMap((map['helmOperatorProperties']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      name: map['name'] as String,
      operatorInstanceName: map['operatorInstanceName'] == null ? null : map['operatorInstanceName']! as String,
      operatorNamespace: map['operatorNamespace'] == null ? null : map['operatorNamespace']! as String,
      operatorParams: map['operatorParams'] == null ? null : map['operatorParams']! as String,
      operatorScope: map['operatorScope'] == null ? null : map['operatorScope']! as String,
      operatorType: map['operatorType'] == null ? null : map['operatorType']! as String,
      provisioningState: map['provisioningState'] as String,
      repositoryPublicKey: map['repositoryPublicKey'] as String,
      repositoryUrl: map['repositoryUrl'] == null ? null : map['repositoryUrl']! as String,
      sshKnownHostsContents: map['sshKnownHostsContents'] == null ? null : map['sshKnownHostsContents']! as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}


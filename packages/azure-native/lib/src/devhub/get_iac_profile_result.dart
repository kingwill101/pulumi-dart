// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iac_template_properties_response.dart';
import 'stage_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getIacProfile.
class GetIacProfileResult {
  /// Determines the authorization status of requests.
  final String authStatus;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Repository Branch Name
  final String? branchName;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The status of the Pull Request submitted against the users repository.
  final String prStatus;
  /// The number associated with the submitted pull request.
  final int pullNumber;
  /// Repository Main Branch
  final String? repositoryMainBranch;
  /// Repository Name
  final String? repositoryName;
  /// Repository Owner
  final String? repositoryOwner;
  final List<StagePropertiesResponse>? stages;
  /// Terraform Storage Account Name
  final String? storageAccountName;
  /// Terraform Storage Account Resource Group
  final String? storageAccountResourceGroup;
  /// Terraform Storage Account Subscription
  final String? storageAccountSubscription;
  /// Terraform Container Name
  final String? storageContainerName;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  final List<IacTemplatePropertiesResponse>? templates;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetIacProfileResult].
  /// [authStatus] Determines the authorization status of requests.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [branchName] Repository Branch Name
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [prStatus] The status of the Pull Request submitted against the users repository.
  /// [pullNumber] The number associated with the submitted pull request.
  /// [repositoryMainBranch] Repository Main Branch
  /// [repositoryName] Repository Name
  /// [repositoryOwner] Repository Owner
  /// [stages] Optional.
  /// [storageAccountName] Terraform Storage Account Name
  /// [storageAccountResourceGroup] Terraform Storage Account Resource Group
  /// [storageAccountSubscription] Terraform Storage Account Subscription
  /// [storageContainerName] Terraform Container Name
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [templates] Optional.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetIacProfileResult({
    required this.authStatus,
    required this.azureApiVersion,
    this.branchName,
    required this.etag,
    required this.id,
    required this.location,
    required this.name,
    required this.prStatus,
    required this.pullNumber,
    this.repositoryMainBranch,
    this.repositoryName,
    this.repositoryOwner,
    this.stages,
    this.storageAccountName,
    this.storageAccountResourceGroup,
    this.storageAccountSubscription,
    this.storageContainerName,
    required this.systemData,
    this.tags,
    this.templates,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authStatus': authStatus,
      'azureApiVersion': azureApiVersion,
      'branchName': ?branchName,
      'etag': etag,
      'id': id,
      'location': location,
      'name': name,
      'prStatus': prStatus,
      'pullNumber': pullNumber,
      'repositoryMainBranch': ?repositoryMainBranch,
      'repositoryName': ?repositoryName,
      'repositoryOwner': ?repositoryOwner,
      'stages': ?stages == null ? null : pulumi.Input.encodeList<StagePropertiesResponse, Map<String, dynamic>>(stages!, (value) => value.toMap()),
      'storageAccountName': ?storageAccountName,
      'storageAccountResourceGroup': ?storageAccountResourceGroup,
      'storageAccountSubscription': ?storageAccountSubscription,
      'storageContainerName': ?storageContainerName,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'templates': ?templates == null ? null : pulumi.Input.encodeList<IacTemplatePropertiesResponse, Map<String, dynamic>>(templates!, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetIacProfileResult.fromMap(Map<String, dynamic> map) {
    return GetIacProfileResult(
      authStatus: map['authStatus'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      branchName: map['branchName'] == null ? null : map['branchName'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      prStatus: map['prStatus'] as String,
      pullNumber: map['pullNumber'] as int,
      repositoryMainBranch: map['repositoryMainBranch'] == null ? null : map['repositoryMainBranch'] as String,
      repositoryName: map['repositoryName'] == null ? null : map['repositoryName'] as String,
      repositoryOwner: map['repositoryOwner'] == null ? null : map['repositoryOwner'] as String,
      stages: map['stages'] == null ? null : pulumi.Input.decodeList<StagePropertiesResponse>(map['stages'], (value) => StagePropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      storageAccountName: map['storageAccountName'] == null ? null : map['storageAccountName'] as String,
      storageAccountResourceGroup: map['storageAccountResourceGroup'] == null ? null : map['storageAccountResourceGroup'] as String,
      storageAccountSubscription: map['storageAccountSubscription'] == null ? null : map['storageAccountSubscription'] as String,
      storageContainerName: map['storageContainerName'] == null ? null : map['storageContainerName'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      templates: map['templates'] == null ? null : pulumi.Input.decodeList<IacTemplatePropertiesResponse>(map['templates'], (value) => IacTemplatePropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iac_template_properties_response.dart';
import 'stage_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getIacProfile.
class GetIacProfileResult {
  /// Determines the authorization status of requests.
  final String? authStatus;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Repository Branch Name
  final String? branchName;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// The status of the Pull Request submitted against the users repository.
  final String? prStatus;
  /// The number associated with the submitted pull request.
  final int? pullNumber;
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
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  final List<IacTemplatePropertiesResponse>? templates;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetIacProfileResult({
    this.authStatus,
    this.azureApiVersion,
    this.branchName,
    this.etag,
    this.id,
    this.location,
    this.name,
    this.prStatus,
    this.pullNumber,
    this.repositoryMainBranch,
    this.repositoryName,
    this.repositoryOwner,
    this.stages,
    this.storageAccountName,
    this.storageAccountResourceGroup,
    this.storageAccountSubscription,
    this.storageContainerName,
    this.systemData,
    this.tags,
    this.templates,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authStatus': ?authStatus,
      'azureApiVersion': ?azureApiVersion,
      'branchName': ?branchName,
      'etag': ?etag,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'prStatus': ?prStatus,
      'pullNumber': ?pullNumber,
      'repositoryMainBranch': ?repositoryMainBranch,
      'repositoryName': ?repositoryName,
      'repositoryOwner': ?repositoryOwner,
      'stages': ?(() { final guardedValue = stages; if (guardedValue == null) return null; return pulumi.Input.encodeList<StagePropertiesResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'storageAccountName': ?storageAccountName,
      'storageAccountResourceGroup': ?storageAccountResourceGroup,
      'storageAccountSubscription': ?storageAccountSubscription,
      'storageContainerName': ?storageContainerName,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'templates': ?(() { final guardedValue = templates; if (guardedValue == null) return null; return pulumi.Input.encodeList<IacTemplatePropertiesResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': ?type,
    };
  }

  factory GetIacProfileResult.fromMap(Map<String, dynamic> map) {
    return GetIacProfileResult(
      authStatus: (() { final guardedValue = map['authStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      branchName: (() { final guardedValue = map['branchName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      prStatus: (() { final guardedValue = map['prStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pullNumber: (() { final guardedValue = map['pullNumber']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      repositoryMainBranch: (() { final guardedValue = map['repositoryMainBranch']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repositoryName: (() { final guardedValue = map['repositoryName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repositoryOwner: (() { final guardedValue = map['repositoryOwner']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stages: (() { final guardedValue = map['stages']; if (guardedValue == null) return null; return pulumi.Input.decodeList<StagePropertiesResponse>(guardedValue, (value) => StagePropertiesResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      storageAccountName: (() { final guardedValue = map['storageAccountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountResourceGroup: (() { final guardedValue = map['storageAccountResourceGroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountSubscription: (() { final guardedValue = map['storageAccountSubscription']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageContainerName: (() { final guardedValue = map['storageContainerName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      templates: (() { final guardedValue = map['templates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<IacTemplatePropertiesResponse>(guardedValue, (value) => IacTemplatePropertiesResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iac_template_properties.dart';
import 'stage_properties.dart';

/// {@template pulumi_devhub_iac_profile_args_doc}
/// The set of arguments for IacProfile.
/// {@endtemplate}
/// {@macro pulumi_devhub_iac_profile_args_doc}
class IacProfileArgs {
  /// Repository Branch Name
  final pulumi.Input<String>? branchName;
  /// The name of the IacProfile.
  final pulumi.Input<String>? iacProfileName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Repository Main Branch
  final pulumi.Input<String>? repositoryMainBranch;
  /// Repository Name
  final pulumi.Input<String>? repositoryName;
  /// Repository Owner
  final pulumi.Input<String>? repositoryOwner;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<List<StageProperties>>? stages;
  /// Terraform Storage Account Name
  final pulumi.Input<String>? storageAccountName;
  /// Terraform Storage Account Resource Group
  final pulumi.Input<String>? storageAccountResourceGroup;
  /// Terraform Storage Account Subscription
  final pulumi.Input<String>? storageAccountSubscription;
  /// Terraform Container Name
  final pulumi.Input<String>? storageContainerName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<List<IacTemplateProperties>>? templates;

  /// Creates a new [IacProfileArgs].
  /// [branchName] Repository Branch Name
  /// [iacProfileName] The name of the IacProfile.
  /// [location] The geo-location where the resource lives
  /// [repositoryMainBranch] Repository Main Branch
  /// [repositoryName] Repository Name
  /// [repositoryOwner] Repository Owner
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [stages] Optional.
  /// [storageAccountName] Terraform Storage Account Name
  /// [storageAccountResourceGroup] Terraform Storage Account Resource Group
  /// [storageAccountSubscription] Terraform Storage Account Subscription
  /// [storageContainerName] Terraform Container Name
  /// [tags] Resource tags.
  /// [templates] Optional.
  IacProfileArgs({
    this.branchName,
    this.iacProfileName,
    this.location,
    this.repositoryMainBranch,
    this.repositoryName,
    this.repositoryOwner,
    required this.resourceGroupName,
    this.stages,
    this.storageAccountName,
    this.storageAccountResourceGroup,
    this.storageAccountSubscription,
    this.storageContainerName,
    this.tags,
    this.templates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branchName': ?branchName,
      'iacProfileName': ?iacProfileName,
      'location': ?location,
      'repositoryMainBranch': ?repositoryMainBranch,
      'repositoryName': ?repositoryName,
      'repositoryOwner': ?repositoryOwner,
      'resourceGroupName': resourceGroupName,
      'stages': ?pulumi.Input.mapOptionalInputValue<List<StageProperties>, List<Map<String, dynamic>>>(stages, (value) => pulumi.Input.encodeList<StageProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageAccountName': ?storageAccountName,
      'storageAccountResourceGroup': ?storageAccountResourceGroup,
      'storageAccountSubscription': ?storageAccountSubscription,
      'storageContainerName': ?storageContainerName,
      'tags': ?tags,
      'templates': ?pulumi.Input.mapOptionalInputValue<List<IacTemplateProperties>, List<Map<String, dynamic>>>(templates, (value) => pulumi.Input.encodeList<IacTemplateProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IacProfileArgs.fromMap(Map<String, dynamic> map) {
    return IacProfileArgs(
      branchName: (() { final guardedValue = map['branchName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iacProfileName: (() { final guardedValue = map['iacProfileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryMainBranch: (() { final guardedValue = map['repositoryMainBranch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryName: (() { final guardedValue = map['repositoryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryOwner: (() { final guardedValue = map['repositoryOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      stages: (() { final guardedValue = map['stages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StageProperties>(guardedValue, (value) => StageProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
      storageAccountName: (() { final guardedValue = map['storageAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountResourceGroup: (() { final guardedValue = map['storageAccountResourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountSubscription: (() { final guardedValue = map['storageAccountSubscription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageContainerName: (() { final guardedValue = map['storageContainerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      templates: (() { final guardedValue = map['templates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IacTemplateProperties>(guardedValue, (value) => IacTemplateProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}


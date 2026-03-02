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
      branchName: map['branchName'] == null ? null : (map['branchName'] as String).input(),
      iacProfileName: map['iacProfileName'] == null ? null : (map['iacProfileName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      repositoryMainBranch: map['repositoryMainBranch'] == null ? null : (map['repositoryMainBranch'] as String).input(),
      repositoryName: map['repositoryName'] == null ? null : (map['repositoryName'] as String).input(),
      repositoryOwner: map['repositoryOwner'] == null ? null : (map['repositoryOwner'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      stages: map['stages'] == null ? null : (pulumi.Input.decodeList<StageProperties>(map['stages'], (value) => StageProperties.fromMap((value as Map).cast<String, dynamic>()))).input(),
      storageAccountName: map['storageAccountName'] == null ? null : (map['storageAccountName'] as String).input(),
      storageAccountResourceGroup: map['storageAccountResourceGroup'] == null ? null : (map['storageAccountResourceGroup'] as String).input(),
      storageAccountSubscription: map['storageAccountSubscription'] == null ? null : (map['storageAccountSubscription'] as String).input(),
      storageContainerName: map['storageContainerName'] == null ? null : (map['storageContainerName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      templates: map['templates'] == null ? null : (pulumi.Input.decodeList<IacTemplateProperties>(map['templates'], (value) => IacTemplateProperties.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


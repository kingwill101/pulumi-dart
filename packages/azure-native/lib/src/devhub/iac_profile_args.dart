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
    String? branchName,
    String? iacProfileName,
    String? location,
    String? repositoryMainBranch,
    String? repositoryName,
    String? repositoryOwner,
    required String resourceGroupName,
    List<StageProperties>? stages,
    String? storageAccountName,
    String? storageAccountResourceGroup,
    String? storageAccountSubscription,
    String? storageContainerName,
    Map<String, String>? tags,
    List<IacTemplateProperties>? templates,
  }) :
      branchName = pulumi.Input.asOptionalInput<String>(branchName),
      iacProfileName = pulumi.Input.asOptionalInput<String>(iacProfileName),
      location = pulumi.Input.asOptionalInput<String>(location),
      repositoryMainBranch = pulumi.Input.asOptionalInput<String>(repositoryMainBranch),
      repositoryName = pulumi.Input.asOptionalInput<String>(repositoryName),
      repositoryOwner = pulumi.Input.asOptionalInput<String>(repositoryOwner),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      stages = pulumi.Input.asOptionalInput<List<StageProperties>>(stages),
      storageAccountName = pulumi.Input.asOptionalInput<String>(storageAccountName),
      storageAccountResourceGroup = pulumi.Input.asOptionalInput<String>(storageAccountResourceGroup),
      storageAccountSubscription = pulumi.Input.asOptionalInput<String>(storageAccountSubscription),
      storageContainerName = pulumi.Input.asOptionalInput<String>(storageContainerName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      templates = pulumi.Input.asOptionalInput<List<IacTemplateProperties>>(templates);

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
      branchName: map['branchName'] == null ? null : map['branchName'] as String,
      iacProfileName: map['iacProfileName'] == null ? null : map['iacProfileName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      repositoryMainBranch: map['repositoryMainBranch'] == null ? null : map['repositoryMainBranch'] as String,
      repositoryName: map['repositoryName'] == null ? null : map['repositoryName'] as String,
      repositoryOwner: map['repositoryOwner'] == null ? null : map['repositoryOwner'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      stages: map['stages'] == null ? null : pulumi.Input.decodeList<StageProperties>(map['stages'], (value) => StageProperties.fromMap((value as Map).cast<String, dynamic>())),
      storageAccountName: map['storageAccountName'] == null ? null : map['storageAccountName'] as String,
      storageAccountResourceGroup: map['storageAccountResourceGroup'] == null ? null : map['storageAccountResourceGroup'] as String,
      storageAccountSubscription: map['storageAccountSubscription'] == null ? null : map['storageAccountSubscription'] as String,
      storageContainerName: map['storageContainerName'] == null ? null : map['storageContainerName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      templates: map['templates'] == null ? null : pulumi.Input.decodeList<IacTemplateProperties>(map['templates'], (value) => IacTemplateProperties.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'addon_pod_identity_association.dart';

/// Input properties used for looking up and filtering Addon resources.
class AddonState {
  /// Name of the EKS add-on. The name must match one of
  /// the names returned by [describe-addon-versions](https://docs.aws.amazon.com/cli/latest/reference/eks/describe-addon-versions.html).
  final pulumi.Input<String>? addonName;
  /// The version of the EKS add-on. The version must
  /// match one of the versions returned by [describe-addon-versions](https://docs.aws.amazon.com/cli/latest/reference/eks/describe-addon-versions.html).
  final pulumi.Input<String>? addonVersion;
  /// Amazon Resource Name (ARN) of the EKS add-on.
  final pulumi.Input<String>? arn;
  /// Name of the EKS Cluster.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? clusterName;
  /// custom configuration values for addons with single JSON string. This JSON string value must match the JSON schema derived from [describe-addon-configuration](https://docs.aws.amazon.com/cli/latest/reference/eks/describe-addon-configuration.html).
  final pulumi.Input<String>? configurationValues;
  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the EKS add-on was created.
  final pulumi.Input<String>? createdAt;
  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the EKS add-on was updated.
  final pulumi.Input<String>? modifiedAt;
  /// Configuration block with EKS Pod Identity association settings. See `pod_identity_association` below for details.
  final pulumi.Input<List<AddonPodIdentityAssociation>>? podIdentityAssociations;
  /// Indicates if you want to preserve the created resources when deleting the EKS add-on.
  final pulumi.Input<bool>? preserve;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// How to resolve field value conflicts when migrating a self-managed add-on to an Amazon EKS add-on. Valid values are `NONE` and `OVERWRITE`. For more details see the [CreateAddon](https://docs.aws.amazon.com/eks/latest/APIReference/API_CreateAddon.html) API Documentation.
  final pulumi.Input<String>? resolveConflictsOnCreate;
  /// How to resolve field value conflicts for an Amazon EKS add-on if you've changed a value from the Amazon EKS default value. Valid values are `NONE`, `OVERWRITE`, and `PRESERVE`. For more details see the [UpdateAddon](https://docs.aws.amazon.com/eks/latest/APIReference/API_UpdateAddon.html) API Documentation.
  final pulumi.Input<String>? resolveConflictsOnUpdate;
  /// The Amazon Resource Name (ARN) of an
  /// existing IAM role to bind to the add-on's service account. The role must be
  /// assigned the IAM permissions required by the add-on. If you don't specify
  /// an existing IAM role, then the add-on uses the permissions assigned to the node
  /// IAM role. For more information, see [Amazon EKS node IAM role](https://docs.aws.amazon.com/eks/latest/userguide/create-node-role.html)
  /// in the Amazon EKS User Guide.
  ///
  /// > **Note:** To specify an existing IAM role, you must have an IAM OpenID Connect (OIDC)
  /// provider created for your cluster. For more information, [see Enabling IAM roles
  /// for service accounts on your cluster](https://docs.aws.amazon.com/eks/latest/userguide/enable-iam-roles-for-service-accounts.html)
  /// in the Amazon EKS User Guide.
  final pulumi.Input<String>? serviceAccountRoleArn;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// (Optional) Key-value map of resource tags, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [AddonState].
  /// [addonName] Name of the EKS add-on. The name must match one of
  /// [addonVersion] The version of the EKS add-on. The version must
  /// [arn] Amazon Resource Name (ARN) of the EKS add-on.
  /// [clusterName] Name of the EKS Cluster.
  /// [configurationValues] custom configuration values for addons with single JSON string. This JSON string value must match the JSON schema derived from [describe-addon-configuration](https://docs.aws.amazon.com/cli/latest/reference/eks/describe-addon-configuration.html).
  /// [createdAt] Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the EKS add-on was created.
  /// [modifiedAt] Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the EKS add-on was updated.
  /// [podIdentityAssociations] Configuration block with EKS Pod Identity association settings. See `pod_identity_association` below for details.
  /// [preserve] Indicates if you want to preserve the created resources when deleting the EKS add-on.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resolveConflictsOnCreate] How to resolve field value conflicts when migrating a self-managed add-on to an Amazon EKS add-on. Valid values are `NONE` and `OVERWRITE`. For more details see the [CreateAddon](https://docs.aws.amazon.com/eks/latest/APIReference/API_CreateAddon.html) API Documentation.
  /// [resolveConflictsOnUpdate] How to resolve field value conflicts for an Amazon EKS add-on if you've changed a value from the Amazon EKS default value. Valid values are `NONE`, `OVERWRITE`, and `PRESERVE`. For more details see the [UpdateAddon](https://docs.aws.amazon.com/eks/latest/APIReference/API_UpdateAddon.html) API Documentation.
  /// [serviceAccountRoleArn] The Amazon Resource Name (ARN) of an
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] (Optional) Key-value map of resource tags, including those inherited from the provider `default_tags` configuration block.
  AddonState({
    this.addonName,
    this.addonVersion,
    this.arn,
    this.clusterName,
    this.configurationValues,
    this.createdAt,
    this.modifiedAt,
    this.podIdentityAssociations,
    this.preserve,
    this.region,
    this.resolveConflictsOnCreate,
    this.resolveConflictsOnUpdate,
    this.serviceAccountRoleArn,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonName': ?addonName,
      'addonVersion': ?addonVersion,
      'arn': ?arn,
      'clusterName': ?clusterName,
      'configurationValues': ?configurationValues,
      'createdAt': ?createdAt,
      'modifiedAt': ?modifiedAt,
      'podIdentityAssociations': ?pulumi.Input.mapOptionalInputValue<List<AddonPodIdentityAssociation>, List<Map<String, dynamic>>>(podIdentityAssociations, (value) => pulumi.Input.encodeList<AddonPodIdentityAssociation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'preserve': ?preserve,
      'region': ?region,
      'resolveConflictsOnCreate': ?resolveConflictsOnCreate,
      'resolveConflictsOnUpdate': ?resolveConflictsOnUpdate,
      'serviceAccountRoleArn': ?serviceAccountRoleArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory AddonState.fromMap(Map<String, dynamic> map) {
    return AddonState(
      addonName: map['addonName'] == null ? null : ((map['addonName'] as String).input()).input(),
      addonVersion: map['addonVersion'] == null ? null : ((map['addonVersion'] as String).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      clusterName: map['clusterName'] == null ? null : ((map['clusterName'] as String).input()).input(),
      configurationValues: map['configurationValues'] == null ? null : ((map['configurationValues'] as String).input()).input(),
      createdAt: map['createdAt'] == null ? null : ((map['createdAt'] as String).input()).input(),
      modifiedAt: map['modifiedAt'] == null ? null : ((map['modifiedAt'] as String).input()).input(),
      podIdentityAssociations: map['podIdentityAssociations'] == null ? null : ((pulumi.Input.decodeList<AddonPodIdentityAssociation>(map['podIdentityAssociations']!, (value) => AddonPodIdentityAssociation.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      preserve: map['preserve'] == null ? null : ((map['preserve'] as bool).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      resolveConflictsOnCreate: map['resolveConflictsOnCreate'] == null ? null : ((map['resolveConflictsOnCreate'] as String).input()).input(),
      resolveConflictsOnUpdate: map['resolveConflictsOnUpdate'] == null ? null : ((map['resolveConflictsOnUpdate'] as String).input()).input(),
      serviceAccountRoleArn: map['serviceAccountRoleArn'] == null ? null : ((map['serviceAccountRoleArn'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}


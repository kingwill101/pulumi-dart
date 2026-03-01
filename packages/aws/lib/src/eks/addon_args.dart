// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'addon_pod_identity_association.dart';

/// {@template pulumi_eks_addon_addon_args_doc}
/// The set of arguments for Addon.
/// {@endtemplate}
/// {@macro pulumi_eks_addon_addon_args_doc}
class AddonArgs {
  /// Name of the EKS add-on. The name must match one of
  /// the names returned by [describe-addon-versions](https://docs.aws.amazon.com/cli/latest/reference/eks/describe-addon-versions.html).
  final pulumi.Input<String> addonName;
  /// The version of the EKS add-on. The version must
  /// match one of the versions returned by [describe-addon-versions](https://docs.aws.amazon.com/cli/latest/reference/eks/describe-addon-versions.html).
  final pulumi.Input<String>? addonVersion;
  /// Name of the EKS Cluster.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> clusterName;
  /// custom configuration values for addons with single JSON string. This JSON string value must match the JSON schema derived from [describe-addon-configuration](https://docs.aws.amazon.com/cli/latest/reference/eks/describe-addon-configuration.html).
  final pulumi.Input<String>? configurationValues;
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

  /// Creates a new [AddonArgs].
  /// [addonName] Name of the EKS add-on. The name must match one of
  /// [addonVersion] The version of the EKS add-on. The version must
  /// [clusterName] Name of the EKS Cluster.
  /// [configurationValues] custom configuration values for addons with single JSON string. This JSON string value must match the JSON schema derived from [describe-addon-configuration](https://docs.aws.amazon.com/cli/latest/reference/eks/describe-addon-configuration.html).
  /// [podIdentityAssociations] Configuration block with EKS Pod Identity association settings. See `pod_identity_association` below for details.
  /// [preserve] Indicates if you want to preserve the created resources when deleting the EKS add-on.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resolveConflictsOnCreate] How to resolve field value conflicts when migrating a self-managed add-on to an Amazon EKS add-on. Valid values are `NONE` and `OVERWRITE`. For more details see the [CreateAddon](https://docs.aws.amazon.com/eks/latest/APIReference/API_CreateAddon.html) API Documentation.
  /// [resolveConflictsOnUpdate] How to resolve field value conflicts for an Amazon EKS add-on if you've changed a value from the Amazon EKS default value. Valid values are `NONE`, `OVERWRITE`, and `PRESERVE`. For more details see the [UpdateAddon](https://docs.aws.amazon.com/eks/latest/APIReference/API_UpdateAddon.html) API Documentation.
  /// [serviceAccountRoleArn] The Amazon Resource Name (ARN) of an
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  AddonArgs({
    required String addonName,
    String? addonVersion,
    required String clusterName,
    String? configurationValues,
    List<AddonPodIdentityAssociation>? podIdentityAssociations,
    bool? preserve,
    String? region,
    String? resolveConflictsOnCreate,
    String? resolveConflictsOnUpdate,
    String? serviceAccountRoleArn,
    Map<String, String>? tags,
  }) :
      addonName = pulumi.Input.asInput<String>(addonName),
      addonVersion = pulumi.Input.asOptionalInput<String>(addonVersion),
      clusterName = pulumi.Input.asInput<String>(clusterName),
      configurationValues = pulumi.Input.asOptionalInput<String>(configurationValues),
      podIdentityAssociations = pulumi.Input.asOptionalInput<List<AddonPodIdentityAssociation>>(podIdentityAssociations),
      preserve = pulumi.Input.asOptionalInput<bool>(preserve),
      region = pulumi.Input.asOptionalInput<String>(region),
      resolveConflictsOnCreate = pulumi.Input.asOptionalInput<String>(resolveConflictsOnCreate),
      resolveConflictsOnUpdate = pulumi.Input.asOptionalInput<String>(resolveConflictsOnUpdate),
      serviceAccountRoleArn = pulumi.Input.asOptionalInput<String>(serviceAccountRoleArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonName': addonName,
      'addonVersion': ?addonVersion,
      'clusterName': clusterName,
      'configurationValues': ?configurationValues,
      'podIdentityAssociations': ?pulumi.Input.mapOptionalInputValue<List<AddonPodIdentityAssociation>, List<Map<String, dynamic>>>(podIdentityAssociations, (value) => pulumi.Input.encodeList<AddonPodIdentityAssociation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'preserve': ?preserve,
      'region': ?region,
      'resolveConflictsOnCreate': ?resolveConflictsOnCreate,
      'resolveConflictsOnUpdate': ?resolveConflictsOnUpdate,
      'serviceAccountRoleArn': ?serviceAccountRoleArn,
      'tags': ?tags,
    };
  }

  factory AddonArgs.fromMap(Map<String, dynamic> map) {
    return AddonArgs(
      addonName: map['addonName'] as String,
      addonVersion: map['addonVersion'] == null ? null : map['addonVersion'] as String,
      clusterName: map['clusterName'] as String,
      configurationValues: map['configurationValues'] == null ? null : map['configurationValues'] as String,
      podIdentityAssociations: map['podIdentityAssociations'] == null ? null : pulumi.Input.decodeList<AddonPodIdentityAssociation>(map['podIdentityAssociations'], (value) => AddonPodIdentityAssociation.fromMap((value as Map).cast<String, dynamic>())),
      preserve: map['preserve'] == null ? null : map['preserve'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
      resolveConflictsOnCreate: map['resolveConflictsOnCreate'] == null ? null : map['resolveConflictsOnCreate'] as String,
      resolveConflictsOnUpdate: map['resolveConflictsOnUpdate'] == null ? null : map['resolveConflictsOnUpdate'] as String,
      serviceAccountRoleArn: map['serviceAccountRoleArn'] == null ? null : map['serviceAccountRoleArn'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}


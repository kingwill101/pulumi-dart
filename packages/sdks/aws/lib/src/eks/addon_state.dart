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
    pulumi.Output<String>? addonName,
    pulumi.Output<String>? addonVersion,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? clusterName,
    pulumi.Output<String>? configurationValues,
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? modifiedAt,
    pulumi.Output<List<AddonPodIdentityAssociation>>? podIdentityAssociations,
    pulumi.Output<bool>? preserve,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resolveConflictsOnCreate,
    pulumi.Output<String>? resolveConflictsOnUpdate,
    pulumi.Output<String>? serviceAccountRoleArn,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      addonName = pulumi.Input.asOptionalInput<String>(addonName),
      addonVersion = pulumi.Input.asOptionalInput<String>(addonVersion),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      configurationValues = pulumi.Input.asOptionalInput<String>(configurationValues),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      modifiedAt = pulumi.Input.asOptionalInput<String>(modifiedAt),
      podIdentityAssociations = pulumi.Input.asOptionalInput<List<AddonPodIdentityAssociation>>(podIdentityAssociations),
      preserve = pulumi.Input.asOptionalInput<bool>(preserve),
      region = pulumi.Input.asOptionalInput<String>(region),
      resolveConflictsOnCreate = pulumi.Input.asOptionalInput<String>(resolveConflictsOnCreate),
      resolveConflictsOnUpdate = pulumi.Input.asOptionalInput<String>(resolveConflictsOnUpdate),
      serviceAccountRoleArn = pulumi.Input.asOptionalInput<String>(serviceAccountRoleArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      addonName: map['addonName'] == null ? null : pulumi.Output.create<String>(map['addonName'] as String),
      addonVersion: map['addonVersion'] == null ? null : pulumi.Output.create<String>(map['addonVersion'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      clusterName: map['clusterName'] == null ? null : pulumi.Output.create<String>(map['clusterName'] as String),
      configurationValues: map['configurationValues'] == null ? null : pulumi.Output.create<String>(map['configurationValues'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      modifiedAt: map['modifiedAt'] == null ? null : pulumi.Output.create<String>(map['modifiedAt'] as String),
      podIdentityAssociations: map['podIdentityAssociations'] == null ? null : pulumi.Output.create<List<AddonPodIdentityAssociation>>(pulumi.Input.decodeList<AddonPodIdentityAssociation>(map['podIdentityAssociations'], (value) => AddonPodIdentityAssociation.fromMap((value as Map).cast<String, dynamic>()))),
      preserve: map['preserve'] == null ? null : pulumi.Output.create<bool>(map['preserve'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resolveConflictsOnCreate: map['resolveConflictsOnCreate'] == null ? null : pulumi.Output.create<String>(map['resolveConflictsOnCreate'] as String),
      resolveConflictsOnUpdate: map['resolveConflictsOnUpdate'] == null ? null : pulumi.Output.create<String>(map['resolveConflictsOnUpdate'] as String),
      serviceAccountRoleArn: map['serviceAccountRoleArn'] == null ? null : pulumi.Output.create<String>(map['serviceAccountRoleArn'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}


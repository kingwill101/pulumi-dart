// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../addon_pod_identity_association/addon_pod_identity_association.dart';

/// The set of arguments for Addon.
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
  final pulumi.Input<List<AddonPodIdentityAssociation>>?
      podIdentityAssociations;

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

  AddonArgs({
    required this.addonName,
    this.addonVersion,
    required this.clusterName,
    this.configurationValues,
    this.podIdentityAssociations,
    this.preserve,
    this.region,
    this.resolveConflictsOnCreate,
    this.resolveConflictsOnUpdate,
    this.serviceAccountRoleArn,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['addonName'] = addonName;
    final addonVersionValue = addonVersion;
    if (addonVersionValue != null) {
      map['addonVersion'] = addonVersionValue;
    }
    map['clusterName'] = clusterName;
    final configurationValuesValue = configurationValues;
    if (configurationValuesValue != null) {
      map['configurationValues'] = configurationValuesValue;
    }
    final podIdentityAssociationsValue = podIdentityAssociations;
    if (podIdentityAssociationsValue != null) {
      map['podIdentityAssociations'] = pulumi.Input.mapOptionalInputValue<
              List<AddonPodIdentityAssociation>, List<Map<String, dynamic>>>(
          podIdentityAssociationsValue,
          (value) => pulumi.Input.encodeList<AddonPodIdentityAssociation,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final preserveValue = preserve;
    if (preserveValue != null) {
      map['preserve'] = preserveValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final resolveConflictsOnCreateValue = resolveConflictsOnCreate;
    if (resolveConflictsOnCreateValue != null) {
      map['resolveConflictsOnCreate'] = resolveConflictsOnCreateValue;
    }
    final resolveConflictsOnUpdateValue = resolveConflictsOnUpdate;
    if (resolveConflictsOnUpdateValue != null) {
      map['resolveConflictsOnUpdate'] = resolveConflictsOnUpdateValue;
    }
    final serviceAccountRoleArnValue = serviceAccountRoleArn;
    if (serviceAccountRoleArnValue != null) {
      map['serviceAccountRoleArn'] = serviceAccountRoleArnValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory AddonArgs.fromMap(Map<String, dynamic> map) {
    return AddonArgs(
      addonName: pulumi.Input.asInput<String>(map['addonName']),
      addonVersion: pulumi.Input.asOptionalInput<String>(map['addonVersion']),
      clusterName: pulumi.Input.asInput<String>(map['clusterName']),
      configurationValues:
          pulumi.Input.asOptionalInput<String>(map['configurationValues']),
      podIdentityAssociations:
          pulumi.Input.asOptionalInput<List<AddonPodIdentityAssociation>>(
              map['podIdentityAssociations']),
      preserve: pulumi.Input.asOptionalInput<bool>(map['preserve']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resolveConflictsOnCreate:
          pulumi.Input.asOptionalInput<String>(map['resolveConflictsOnCreate']),
      resolveConflictsOnUpdate:
          pulumi.Input.asOptionalInput<String>(map['resolveConflictsOnUpdate']),
      serviceAccountRoleArn:
          pulumi.Input.asOptionalInput<String>(map['serviceAccountRoleArn']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}

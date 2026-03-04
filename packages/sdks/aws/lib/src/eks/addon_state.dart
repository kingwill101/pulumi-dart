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
  /// &gt; **Note:** To specify an existing IAM role, you must have an IAM OpenID Connect (OIDC)
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
      'podIdentityAssociations':
          ?pulumi.Input.mapOptionalInputValue<
            List<AddonPodIdentityAssociation>,
            List<Map<String, dynamic>>
          >(
            podIdentityAssociations,
            (value) =>
                pulumi.Input.encodeList<
                  AddonPodIdentityAssociation,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      addonName: (() {
        final guardedValue = map['addonName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      addonVersion: (() {
        final guardedValue = map['addonVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterName: (() {
        final guardedValue = map['clusterName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      configurationValues: (() {
        final guardedValue = map['configurationValues'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createdAt: (() {
        final guardedValue = map['createdAt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      modifiedAt: (() {
        final guardedValue = map['modifiedAt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      podIdentityAssociations: (() {
        final guardedValue = map['podIdentityAssociations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AddonPodIdentityAssociation>(
            guardedValue,
            (value) => AddonPodIdentityAssociation.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      preserve: (() {
        final guardedValue = map['preserve'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resolveConflictsOnCreate: (() {
        final guardedValue = map['resolveConflictsOnCreate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resolveConflictsOnUpdate: (() {
        final guardedValue = map['resolveConflictsOnUpdate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceAccountRoleArn: (() {
        final guardedValue = map['serviceAccountRoleArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}

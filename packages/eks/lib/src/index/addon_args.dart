// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster.dart';

/// {@template pulumi_index_addon_args_doc}
/// The set of arguments for Addon.
/// {@endtemplate}
/// {@macro pulumi_index_addon_args_doc}
class AddonArgs {
  /// Name of the EKS add-on. The name must match one of the names returned by describe-addon-versions.
  final pulumi.Input<String> addonName;
  /// The version of the EKS add-on. The version must match one of the versions returned by describe-addon-versions.
  final pulumi.Input<String>? addonVersion;
  /// The target EKS cluster.
  final pulumi.Input<Cluster> cluster;
  /// Custom configuration values for addons specified as an object. This object value must match the JSON schema derived from describe-addon-configuration.
  final pulumi.Input<Map<String, dynamic>>? configurationValues;
  /// Indicates if you want to preserve the created resources when deleting the EKS add-on.
  final pulumi.Input<bool>? preserve;
  /// How to resolve field value conflicts when migrating a self-managed add-on to an Amazon EKS add-on. Valid values are NONE and OVERWRITE. For more details see the CreateAddon API Docs.
  final pulumi.Input<String>? resolveConflictsOnCreate;
  /// How to resolve field value conflicts for an Amazon EKS add-on if you've changed a value from the Amazon EKS default value. Valid values are NONE, OVERWRITE, and PRESERVE. For more details see the UpdateAddon API Docs.
  final pulumi.Input<String>? resolveConflictsOnUpdate;
  /// The Amazon Resource Name (ARN) of an existing IAM role to bind to the add-on's service account. The role must be assigned the IAM permissions required by the add-on. If you don't specify an existing IAM role, then the add-on uses the permissions assigned to the node IAM role. For more information, see Amazon EKS node IAM role in the Amazon EKS User Guide.
  ///
  /// Note: To specify an existing IAM role, you must have an IAM OpenID Connect (OIDC) provider created for your cluster. For more information, see Enabling IAM roles for service accounts on your cluster in the Amazon EKS User Guide.
  final pulumi.Input<String>? serviceAccountRoleArn;
  /// Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<List<Map<String, String>>>? tags;

  /// Creates a new [AddonArgs].
  /// [addonName] Name of the EKS add-on. The name must match one of the names returned by describe-addon-versions.
  /// [addonVersion] The version of the EKS add-on. The version must match one of the versions returned by describe-addon-versions.
  /// [cluster] The target EKS cluster.
  /// [configurationValues] Custom configuration values for addons specified as an object. This object value must match the JSON schema derived from describe-addon-configuration.
  /// [preserve] Indicates if you want to preserve the created resources when deleting the EKS add-on.
  /// [resolveConflictsOnCreate] How to resolve field value conflicts when migrating a self-managed add-on to an Amazon EKS add-on. Valid values are NONE and OVERWRITE. For more details see the CreateAddon API Docs.
  /// [resolveConflictsOnUpdate] How to resolve field value conflicts for an Amazon EKS add-on if you've changed a value from the Amazon EKS default value. Valid values are NONE, OVERWRITE, and PRESERVE. For more details see the UpdateAddon API Docs.
  /// [serviceAccountRoleArn] The Amazon Resource Name (ARN) of an existing IAM role to bind to the add-on's service account. The role must be assigned the IAM permissions required by the add-on. If you don't specify an existing IAM role, then the add-on uses the permissions assigned to the node IAM role. For more information, see Amazon EKS node IAM role in the Amazon EKS User Guide.
  /// [tags] Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  AddonArgs({
    required String addonName,
    String? addonVersion,
    required Cluster cluster,
    Map<String, dynamic>? configurationValues,
    bool? preserve,
    String? resolveConflictsOnCreate,
    String? resolveConflictsOnUpdate,
    String? serviceAccountRoleArn,
    List<Map<String, String>>? tags,
  }) :
      addonName = pulumi.Input.asInput<String>(addonName),
      addonVersion = pulumi.Input.asOptionalInput<String>(addonVersion),
      cluster = pulumi.Input.asInput<Cluster>(cluster),
      configurationValues = pulumi.Input.asOptionalInput<Map<String, dynamic>>(configurationValues),
      preserve = pulumi.Input.asOptionalInput<bool>(preserve),
      resolveConflictsOnCreate = pulumi.Input.asOptionalInput<String>(resolveConflictsOnCreate),
      resolveConflictsOnUpdate = pulumi.Input.asOptionalInput<String>(resolveConflictsOnUpdate),
      serviceAccountRoleArn = pulumi.Input.asOptionalInput<String>(serviceAccountRoleArn),
      tags = pulumi.Input.asOptionalInput<List<Map<String, String>>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonName': addonName,
      'addonVersion': ?addonVersion,
      'cluster': cluster,
      'configurationValues': ?configurationValues,
      'preserve': ?preserve,
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
      cluster: map['cluster'] as Cluster,
      configurationValues: map['configurationValues'] == null ? null : (map['configurationValues'] as Map).cast<String, dynamic>(),
      preserve: map['preserve'] == null ? null : map['preserve'] as bool,
      resolveConflictsOnCreate: map['resolveConflictsOnCreate'] == null ? null : map['resolveConflictsOnCreate'] as String,
      resolveConflictsOnUpdate: map['resolveConflictsOnUpdate'] == null ? null : map['resolveConflictsOnUpdate'] as String,
      serviceAccountRoleArn: map['serviceAccountRoleArn'] == null ? null : map['serviceAccountRoleArn'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<Map<String, String>>(),
    );
  }
}


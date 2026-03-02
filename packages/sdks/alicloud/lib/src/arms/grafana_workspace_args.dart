// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_arms_grafana_workspace_grafana_workspace_args_doc}
/// The set of arguments for GrafanaWorkspace.
/// {@endtemplate}
/// {@macro pulumi_arms_grafana_workspace_grafana_workspace_args_doc}
class GrafanaWorkspaceArgs {
  /// Value Description:
  /// GrafanaWorkspaceEdition is standard, this parameter is invalid.
  /// GrafanaWorkspaceEdition is personal_edition. This parameter is invalid. Default value: 1.
  /// The value of GrafanaWorkspaceEdition is experts_edition. The values are respectively 10, 30, and 50. The default value is 10.
  /// The value of GrafanaWorkspaceEdition is advanced_edition. This parameter is invalid. The default value is 100.
  final pulumi.Input<String>? accountNumber;
  /// Language environment (if not filled in, default is zh):
  /// - zh
  /// - en
  final pulumi.Input<String>? aliyunLang;
  /// Whether to automatically renew. Value range:
  /// - true: Automatic renewal. Default value: true.
  /// - false: Do not renew automatically.
  final pulumi.Input<bool>? autoRenew;
  /// The number of additional user-defined accounts. Value Description:
  /// - GrafanaWorkspaceEdition is standard, this parameter is invalid.
  /// - GrafanaWorkspaceEdition is personal_edition, this parameter is invalid.
  /// - GrafanaWorkspaceEdition is experts_edition, this parameter is invalid.
  /// - GrafanaWorkspaceEdition is advanced_edition. The value range is 0 to 2000 and is a multiple of 10. The default value is 0.
  final pulumi.Input<String>? customAccountNumber;
  /// Description
  final pulumi.Input<String>? description;
  /// The time of the instance package. Valid values:
  /// - PricingCycle is Month, indicating monthly payment. The value range is 1 to 9.
  /// - PricingCycle is set to Year, indicating annual payment. The value range is 1 to 3. Default value: 1.
  final pulumi.Input<String>? duration;
  /// Grafana version
  final pulumi.Input<String>? grafanaVersion;
  /// The edition. **Valid values:**
  /// - standard: `Beta Edition(For internal testing only) `
  /// - personal_edition: Developer Edition
  /// - experts_edition: Pro Edition
  /// - advanced_edition: Advanced Edition
  final pulumi.Input<String>? grafanaWorkspaceEdition;
  /// The name of the resource
  final pulumi.Input<String> grafanaWorkspaceName;
  /// The password of the instance. It is 8 to 30 characters in length and must contain three types of characters: uppercase and lowercase letters, numbers, and special symbols. Special symbols can be:()'~! @#$%^& *-_+ =
  final pulumi.Input<String>? password;
  /// The billing cycle of the package year and Month. Value: Month (default): purchase by Month. Year: Purchased by Year.
  final pulumi.Input<String>? pricingCycle;
  /// The ID of the resource group
  final pulumi.Input<String>? resourceGroupId;
  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GrafanaWorkspaceArgs].
  /// [accountNumber] Value Description:
  /// [aliyunLang] Language environment (if not filled in, default is zh):
  /// [autoRenew] Whether to automatically renew. Value range:
  /// [customAccountNumber] The number of additional user-defined accounts. Value Description:
  /// [description] Description
  /// [duration] The time of the instance package. Valid values:
  /// [grafanaVersion] Grafana version
  /// [grafanaWorkspaceEdition] The edition. **Valid values:**
  /// [grafanaWorkspaceName] The name of the resource
  /// [password] The password of the instance. It is 8 to 30 characters in length and must contain three types of characters: uppercase and lowercase letters, numbers, and special symbols. Special symbols can be:()'~! @#$%^& *-_+ =
  /// [pricingCycle] The billing cycle of the package year and Month. Value: Month (default): purchase by Month. Year: Purchased by Year.
  /// [resourceGroupId] The ID of the resource group
  /// [tags] The tag of the resource
  GrafanaWorkspaceArgs({
    this.accountNumber,
    this.aliyunLang,
    this.autoRenew,
    this.customAccountNumber,
    this.description,
    this.duration,
    this.grafanaVersion,
    this.grafanaWorkspaceEdition,
    required this.grafanaWorkspaceName,
    this.password,
    this.pricingCycle,
    this.resourceGroupId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountNumber': ?accountNumber,
      'aliyunLang': ?aliyunLang,
      'autoRenew': ?autoRenew,
      'customAccountNumber': ?customAccountNumber,
      'description': ?description,
      'duration': ?duration,
      'grafanaVersion': ?grafanaVersion,
      'grafanaWorkspaceEdition': ?grafanaWorkspaceEdition,
      'grafanaWorkspaceName': grafanaWorkspaceName,
      'password': ?password,
      'pricingCycle': ?pricingCycle,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory GrafanaWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return GrafanaWorkspaceArgs(
      accountNumber: map['accountNumber'] == null ? null : (map['accountNumber'] as String).input(),
      aliyunLang: map['aliyunLang'] == null ? null : (map['aliyunLang'] as String).input(),
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew'] as bool).input(),
      customAccountNumber: map['customAccountNumber'] == null ? null : (map['customAccountNumber'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      duration: map['duration'] == null ? null : (map['duration'] as String).input(),
      grafanaVersion: map['grafanaVersion'] == null ? null : (map['grafanaVersion'] as String).input(),
      grafanaWorkspaceEdition: map['grafanaWorkspaceEdition'] == null ? null : (map['grafanaWorkspaceEdition'] as String).input(),
      grafanaWorkspaceName: (map['grafanaWorkspaceName'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      pricingCycle: map['pricingCycle'] == null ? null : (map['pricingCycle'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GrafanaWorkspace resources.
class GrafanaWorkspaceState {
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
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
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
  final pulumi.Input<String>? grafanaWorkspaceName;
  /// The password of the instance. It is 8 to 30 characters in length and must contain three types of characters: uppercase and lowercase letters, numbers, and special symbols. Special symbols can be:()'~! @#$%^& *-_+ =
  final pulumi.Input<String>? password;
  /// The billing cycle of the package year and Month. Value: Month (default): purchase by Month. Year: Purchased by Year.
  final pulumi.Input<String>? pricingCycle;
  /// The region ID of the resource
  final pulumi.Input<String>? regionId;
  /// The ID of the resource group
  final pulumi.Input<String>? resourceGroupId;
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GrafanaWorkspaceState].
  /// [accountNumber] Value Description:
  /// [aliyunLang] Language environment (if not filled in, default is zh):
  /// [autoRenew] Whether to automatically renew. Value range:
  /// [createTime] The creation time of the resource
  /// [customAccountNumber] The number of additional user-defined accounts. Value Description:
  /// [description] Description
  /// [duration] The time of the instance package. Valid values:
  /// [grafanaVersion] Grafana version
  /// [grafanaWorkspaceEdition] The edition. **Valid values:**
  /// [grafanaWorkspaceName] The name of the resource
  /// [password] The password of the instance. It is 8 to 30 characters in length and must contain three types of characters: uppercase and lowercase letters, numbers, and special symbols. Special symbols can be:()'~! @#$%^& *-_+ =
  /// [pricingCycle] The billing cycle of the package year and Month. Value: Month (default): purchase by Month. Year: Purchased by Year.
  /// [regionId] The region ID of the resource
  /// [resourceGroupId] The ID of the resource group
  /// [status] The status of the resource
  /// [tags] The tag of the resource
  GrafanaWorkspaceState({
    pulumi.Output<String>? accountNumber,
    pulumi.Output<String>? aliyunLang,
    pulumi.Output<bool>? autoRenew,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? customAccountNumber,
    pulumi.Output<String>? description,
    pulumi.Output<String>? duration,
    pulumi.Output<String>? grafanaVersion,
    pulumi.Output<String>? grafanaWorkspaceEdition,
    pulumi.Output<String>? grafanaWorkspaceName,
    pulumi.Output<String>? password,
    pulumi.Output<String>? pricingCycle,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accountNumber = pulumi.Input.asOptionalInput<String>(accountNumber),
      aliyunLang = pulumi.Input.asOptionalInput<String>(aliyunLang),
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      customAccountNumber = pulumi.Input.asOptionalInput<String>(customAccountNumber),
      description = pulumi.Input.asOptionalInput<String>(description),
      duration = pulumi.Input.asOptionalInput<String>(duration),
      grafanaVersion = pulumi.Input.asOptionalInput<String>(grafanaVersion),
      grafanaWorkspaceEdition = pulumi.Input.asOptionalInput<String>(grafanaWorkspaceEdition),
      grafanaWorkspaceName = pulumi.Input.asOptionalInput<String>(grafanaWorkspaceName),
      password = pulumi.Input.asOptionalInput<String>(password),
      pricingCycle = pulumi.Input.asOptionalInput<String>(pricingCycle),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountNumber': ?accountNumber,
      'aliyunLang': ?aliyunLang,
      'autoRenew': ?autoRenew,
      'createTime': ?createTime,
      'customAccountNumber': ?customAccountNumber,
      'description': ?description,
      'duration': ?duration,
      'grafanaVersion': ?grafanaVersion,
      'grafanaWorkspaceEdition': ?grafanaWorkspaceEdition,
      'grafanaWorkspaceName': ?grafanaWorkspaceName,
      'password': ?password,
      'pricingCycle': ?pricingCycle,
      'regionId': ?regionId,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GrafanaWorkspaceState.fromMap(Map<String, dynamic> map) {
    return GrafanaWorkspaceState(
      accountNumber: map['accountNumber'] == null ? null : pulumi.Output.create<String>(map['accountNumber'] as String),
      aliyunLang: map['aliyunLang'] == null ? null : pulumi.Output.create<String>(map['aliyunLang'] as String),
      autoRenew: map['autoRenew'] == null ? null : pulumi.Output.create<bool>(map['autoRenew'] as bool),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      customAccountNumber: map['customAccountNumber'] == null ? null : pulumi.Output.create<String>(map['customAccountNumber'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      duration: map['duration'] == null ? null : pulumi.Output.create<String>(map['duration'] as String),
      grafanaVersion: map['grafanaVersion'] == null ? null : pulumi.Output.create<String>(map['grafanaVersion'] as String),
      grafanaWorkspaceEdition: map['grafanaWorkspaceEdition'] == null ? null : pulumi.Output.create<String>(map['grafanaWorkspaceEdition'] as String),
      grafanaWorkspaceName: map['grafanaWorkspaceName'] == null ? null : pulumi.Output.create<String>(map['grafanaWorkspaceName'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      pricingCycle: map['pricingCycle'] == null ? null : pulumi.Output.create<String>(map['pricingCycle'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}


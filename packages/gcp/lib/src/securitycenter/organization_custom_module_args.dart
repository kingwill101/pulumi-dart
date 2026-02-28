// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_custom_module_custom_config.dart';

/// {@template pulumi_securitycenter_organization_custom_module_organization_custom_module_args_doc}
/// The set of arguments for OrganizationCustomModule.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_organization_custom_module_organization_custom_module_args_doc}
class OrganizationCustomModuleArgs {
  /// The user specified custom configuration for the module.
  /// Structure is documented below.
  final pulumi.Input<OrganizationCustomModuleCustomConfig> customConfig;
  /// The display name of the Security Health Analytics custom module. This
  /// display name becomes the finding category for all findings that are
  /// returned by this custom module. The display name must be between 1 and
  /// 128 characters, start with a lowercase letter, and contain alphanumeric
  /// characters or underscores only.
  final pulumi.Input<String> displayName;
  /// The enablement state of the custom module.
  /// Possible values are: `ENABLED`, `DISABLED`.
  final pulumi.Input<String> enablementState;
  /// Numerical ID of the parent organization.
  final pulumi.Input<String> organization;

  /// Creates a new [OrganizationCustomModuleArgs].
  /// [customConfig] The user specified custom configuration for the module.
  /// [displayName] The display name of the Security Health Analytics custom module. This
  /// [enablementState] The enablement state of the custom module.
  /// [organization] Numerical ID of the parent organization.
  OrganizationCustomModuleArgs({
    required OrganizationCustomModuleCustomConfig customConfig,
    required String displayName,
    required String enablementState,
    required String organization,
  }) :
      customConfig = pulumi.Input.asInput<OrganizationCustomModuleCustomConfig>(customConfig),
      displayName = pulumi.Input.asInput<String>(displayName),
      enablementState = pulumi.Input.asInput<String>(enablementState),
      organization = pulumi.Input.asInput<String>(organization);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customConfig': pulumi.Input.mapInputValue<OrganizationCustomModuleCustomConfig, Map<String, dynamic>>(customConfig, (value) => value.toMap()),
      'displayName': displayName,
      'enablementState': enablementState,
      'organization': organization,
    };
  }

  factory OrganizationCustomModuleArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationCustomModuleArgs(
      customConfig: OrganizationCustomModuleCustomConfig.fromMap((map['customConfig'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] as String,
      enablementState: map['enablementState'] as String,
      organization: map['organization'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../organization_custom_module_custom_config/organization_custom_module_custom_config.dart';

/// The set of arguments for OrganizationCustomModule.
class OrganizationCustomModuleArgs {
  /// The user specified custom configuration for the module.
  /// Structure is documented below.
  final Input<OrganizationCustomModuleCustomConfig> customConfig;

  /// The display name of the Security Health Analytics custom module. This
  /// display name becomes the finding category for all findings that are
  /// returned by this custom module. The display name must be between 1 and
  /// 128 characters, start with a lowercase letter, and contain alphanumeric
  /// characters or underscores only.
  final Input<String> displayName;

  /// The enablement state of the custom module.
  /// Possible values are: `ENABLED`, `DISABLED`.
  final Input<String> enablementState;

  /// Numerical ID of the parent organization.
  final Input<String> organization;

  OrganizationCustomModuleArgs({
    required this.customConfig,
    required this.displayName,
    required this.enablementState,
    required this.organization,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customConfig'] = Input.mapInputValue<
        OrganizationCustomModuleCustomConfig,
        Map<String, dynamic>>(customConfig, (value) => value.toMap());
    map['displayName'] = displayName;
    map['enablementState'] = enablementState;
    map['organization'] = organization;
    return map;
  }

  factory OrganizationCustomModuleArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationCustomModuleArgs(
      customConfig: Input.asInput<OrganizationCustomModuleCustomConfig>(
          map['customConfig']),
      displayName: Input.asInput<String>(map['displayName']),
      enablementState: Input.asInput<String>(map['enablementState']),
      organization: Input.asInput<String>(map['organization']),
    );
  }
}

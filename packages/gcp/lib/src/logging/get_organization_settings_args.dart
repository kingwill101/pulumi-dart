// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_get_organization_settings_get_organization_settings_args_doc}
/// Arguments for getOrganizationSettings.
/// {@endtemplate}
/// {@macro pulumi_logging_get_organization_settings_get_organization_settings_args_doc}
class GetOrganizationSettingsArgs {
  /// The ID of the organization for which to retrieve settings.
  final pulumi.Input<String> organization;

  /// Creates a new [GetOrganizationSettingsArgs].
  /// [organization] The ID of the organization for which to retrieve settings.
  GetOrganizationSettingsArgs({
    required String organization,
  }) :
      organization = pulumi.Input.asInput<String>(organization);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organization': organization,
    };
  }

  factory GetOrganizationSettingsArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationSettingsArgs(
      organization: map['organization'] as String,
    );
  }
}


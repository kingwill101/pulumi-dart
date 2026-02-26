// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getOrganizationSettings.
class GetOrganizationSettingsArgs {
  /// The ID of the organization for which to retrieve settings.
  final Input<String> organization;

  GetOrganizationSettingsArgs({
    required this.organization,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['organization'] = organization;
    return map;
  }

  factory GetOrganizationSettingsArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationSettingsArgs(
      organization: Input.asInput<String>(map['organization']),
    );
  }
}

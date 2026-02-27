// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getControlOrganizationIntelligenceConfig.
class GetControlOrganizationIntelligenceConfigArgs {
  /// The id of GCP organization.
  final pulumi.Input<String> name;

  GetControlOrganizationIntelligenceConfigArgs({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GetControlOrganizationIntelligenceConfigArgs.fromMap(
      Map<String, dynamic> map) {
    return GetControlOrganizationIntelligenceConfigArgs(
      name: pulumi.Input.asInput<String>(map['name']),
    );
  }
}

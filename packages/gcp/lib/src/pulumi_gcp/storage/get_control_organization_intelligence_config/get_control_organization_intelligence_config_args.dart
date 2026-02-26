// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getControlOrganizationIntelligenceConfig.
class GetControlOrganizationIntelligenceConfigArgs {
  /// The id of GCP organization.
  final Input<String> name;

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
      name: Input.asInput<String>(map['name']),
    );
  }
}

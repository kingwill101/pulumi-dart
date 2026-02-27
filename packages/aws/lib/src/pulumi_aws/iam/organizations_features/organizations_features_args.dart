// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for OrganizationsFeatures.
class OrganizationsFeaturesArgs {
  /// List of IAM features to enable. Valid values are `RootCredentialsManagement` and `RootSessions`.
  final pulumi.Input<List<String>> enabledFeatures;

  OrganizationsFeaturesArgs({
    required this.enabledFeatures,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabledFeatures'] = enabledFeatures;
    return map;
  }

  factory OrganizationsFeaturesArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationsFeaturesArgs(
      enabledFeatures:
          pulumi.Input.asInput<List<String>>(map['enabledFeatures']),
    );
  }
}

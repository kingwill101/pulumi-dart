// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_organizations_features_organizations_features_args_doc}
/// The set of arguments for OrganizationsFeatures.
/// {@endtemplate}
/// {@macro pulumi_iam_organizations_features_organizations_features_args_doc}
class OrganizationsFeaturesArgs {
  /// List of IAM features to enable. Valid values are `RootCredentialsManagement` and `RootSessions`.
  final pulumi.Input<List<String>> enabledFeatures;

  /// Creates a new [OrganizationsFeaturesArgs].
  /// [enabledFeatures] List of IAM features to enable. Valid values are `RootCredentialsManagement` and `RootSessions`.
  OrganizationsFeaturesArgs({
    required this.enabledFeatures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabledFeatures': enabledFeatures,
    };
  }

  factory OrganizationsFeaturesArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationsFeaturesArgs(
      enabledFeatures: pulumi.Input.fromValue((map['enabledFeatures'] as List).cast<String>()),
    );
  }
}


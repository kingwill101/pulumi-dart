// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OrganizationsFeatures resources.
class OrganizationsFeaturesState {
  /// List of IAM features to enable. Valid values are `RootCredentialsManagement` and `RootSessions`.
  final pulumi.Input<List<String>>? enabledFeatures;

  /// Creates a new [OrganizationsFeaturesState].
  /// [enabledFeatures] List of IAM features to enable. Valid values are `RootCredentialsManagement` and `RootSessions`.
  const OrganizationsFeaturesState({
    this.enabledFeatures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabledFeatures': ?enabledFeatures,
    };
  }

  factory OrganizationsFeaturesState.fromMap(Map<String, dynamic> map) {
    return OrganizationsFeaturesState(
      enabledFeatures: (() { final guardedValue = map['enabledFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}


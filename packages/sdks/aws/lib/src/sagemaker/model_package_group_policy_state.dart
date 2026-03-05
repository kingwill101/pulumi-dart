// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ModelPackageGroupPolicy resources.
class ModelPackageGroupPolicyState {
  /// The name of the model package group.
  final pulumi.Input<String>? modelPackageGroupName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<String>? resourcePolicy;

  /// Creates a new [ModelPackageGroupPolicyState].
  /// [modelPackageGroupName] The name of the model package group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourcePolicy] Optional.
  ModelPackageGroupPolicyState({
    this.modelPackageGroupName,
    this.region,
    this.resourcePolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelPackageGroupName': ?modelPackageGroupName,
      'region': ?region,
      'resourcePolicy': ?resourcePolicy,
    };
  }

  factory ModelPackageGroupPolicyState.fromMap(Map<String, dynamic> map) {
    return ModelPackageGroupPolicyState(
      modelPackageGroupName: (() { final guardedValue = map['modelPackageGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourcePolicy: (() { final guardedValue = map['resourcePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


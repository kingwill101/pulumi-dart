// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ModelPackageGroupPolicy.
class ModelPackageGroupPolicyArgs {
  /// The name of the model package group.
  final pulumi.Input<String> modelPackageGroupName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<String> resourcePolicy;

  ModelPackageGroupPolicyArgs({
    required this.modelPackageGroupName,
    this.region,
    required this.resourcePolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['modelPackageGroupName'] = modelPackageGroupName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourcePolicy'] = resourcePolicy;
    return map;
  }

  factory ModelPackageGroupPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ModelPackageGroupPolicyArgs(
      modelPackageGroupName:
          pulumi.Input.asInput<String>(map['modelPackageGroupName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resourcePolicy: pulumi.Input.asInput<String>(map['resourcePolicy']),
    );
  }
}

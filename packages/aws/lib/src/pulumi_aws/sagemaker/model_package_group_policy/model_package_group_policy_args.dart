// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ModelPackageGroupPolicy.
class ModelPackageGroupPolicyArgs {
  /// The name of the model package group.
  final Input<String> modelPackageGroupName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;
  final Input<String> resourcePolicy;

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
          Input.asInput<String>(map['modelPackageGroupName']),
      region: Input.asOptionalInput<String>(map['region']),
      resourcePolicy: Input.asInput<String>(map['resourcePolicy']),
    );
  }
}

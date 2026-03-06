// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CapacityProviderInstanceRequirement {
  /// List of allowed instance types (e.g., `["m5.xlarge"]`).
  final pulumi.Input<List<String>> allowedInstanceTypes;
  /// List of CPU architectures. Valid values are `["x86_64"]` and `["arm64"]`.
  final pulumi.Input<List<String>> architectures;
  /// List of excluded instance types. You can specify only one of `allowed_instance_types` or `excluded_instance_types`.
  final pulumi.Input<List<String>> excludedInstanceTypes;

  /// Creates a new [CapacityProviderInstanceRequirement].
  /// [allowedInstanceTypes] List of allowed instance types (e.g., `["m5.xlarge"]`).
  /// [architectures] List of CPU architectures. Valid values are `["x86_64"]` and `["arm64"]`.
  /// [excludedInstanceTypes] List of excluded instance types. You can specify only one of `allowed_instance_types` or `excluded_instance_types`.
  const CapacityProviderInstanceRequirement({
    required this.allowedInstanceTypes,
    required this.architectures,
    required this.excludedInstanceTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedInstanceTypes': allowedInstanceTypes,
      'architectures': architectures,
      'excludedInstanceTypes': excludedInstanceTypes,
    };
  }

  factory CapacityProviderInstanceRequirement.fromMap(Map<String, dynamic> map) {
    return CapacityProviderInstanceRequirement(
      allowedInstanceTypes: pulumi.Input.fromValue((map['allowedInstanceTypes'] as List).cast<String>()),
      architectures: pulumi.Input.fromValue((map['architectures'] as List).cast<String>()),
      excludedInstanceTypes: pulumi.Input.fromValue((map['excludedInstanceTypes'] as List).cast<String>()),
    );
  }
}


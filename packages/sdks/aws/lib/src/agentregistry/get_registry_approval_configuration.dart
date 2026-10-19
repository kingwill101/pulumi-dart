// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegistryApprovalConfiguration {
  /// Set of rules that determine which registry records are automatically approved on submission. When empty, submitted records require manual review.
  final pulumi.Input<List<String>> autoApprovalRules;

  /// Creates a new [GetRegistryApprovalConfiguration].
  /// [autoApprovalRules] Set of rules that determine which registry records are automatically approved on submission. When empty, submitted records require manual review.
  const GetRegistryApprovalConfiguration({
    required this.autoApprovalRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoApprovalRules': autoApprovalRules,
    };
  }

  factory GetRegistryApprovalConfiguration.fromMap(Map<String, dynamic> map) {
    return GetRegistryApprovalConfiguration(
      autoApprovalRules: pulumi.Input.fromValue((map['autoApprovalRules'] as List).cast<String>()),
    );
  }
}

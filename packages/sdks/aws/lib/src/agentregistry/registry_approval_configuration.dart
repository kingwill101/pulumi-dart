// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegistryApprovalConfiguration {
  /// Set of rules that determine which registry records are automatically approved on submission. Valid values: `APPROVE_ALL`. When omitted or empty, submitted records require manual review.
  final pulumi.Input<List<String>?>? autoApprovalRules;

  /// Creates a new [RegistryApprovalConfiguration].
  /// [autoApprovalRules] Set of rules that determine which registry records are automatically approved on submission. Valid values: `APPROVE_ALL`. When omitted or empty, submitted records require manual review.
  const RegistryApprovalConfiguration({
    this.autoApprovalRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoApprovalRules': ?autoApprovalRules,
    };
  }

  factory RegistryApprovalConfiguration.fromMap(Map<String, dynamic> map) {
    return RegistryApprovalConfiguration(
      autoApprovalRules: (() { final guardedValue = map['autoApprovalRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

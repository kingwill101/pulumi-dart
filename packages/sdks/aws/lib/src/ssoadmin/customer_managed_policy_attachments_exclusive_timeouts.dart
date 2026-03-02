// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomerManagedPolicyAttachmentsExclusiveTimeouts {
  /// A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  final pulumi.Input<String>? create;
  /// A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  final pulumi.Input<String>? update;

  /// Creates a new [CustomerManagedPolicyAttachmentsExclusiveTimeouts].
  /// [create] A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  /// [update] A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  CustomerManagedPolicyAttachmentsExclusiveTimeouts({
    this.create,
    this.update,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'create': ?create,
      'update': ?update,
    };
  }

  factory CustomerManagedPolicyAttachmentsExclusiveTimeouts.fromMap(Map<String, dynamic> map) {
    return CustomerManagedPolicyAttachmentsExclusiveTimeouts(
      create: map['create'] == null ? null : (map['create'] as String).input(),
      update: map['update'] == null ? null : (map['update'] as String).input(),
    );
  }
}


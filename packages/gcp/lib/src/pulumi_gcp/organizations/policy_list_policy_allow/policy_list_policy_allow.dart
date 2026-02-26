// ignore_for_file: unused_element, unnecessary_cast

class PolicyListPolicyAllow {
  /// The policy allows or denies all values.
  final bool? all;

  /// The policy can define specific values that are allowed or denied.
  final List<String>? values;

  PolicyListPolicyAllow({
    this.all,
    this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allValue = all;
    if (allValue != null) {
      map['all'] = allValue;
    }
    final valuesValue = values;
    if (valuesValue != null) {
      map['values'] = valuesValue;
    }
    return map;
  }

  factory PolicyListPolicyAllow.fromMap(Map<String, dynamic> map) {
    return PolicyListPolicyAllow(
      all: map['all'] == null ? null : map['all'] as bool,
      values:
          map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}

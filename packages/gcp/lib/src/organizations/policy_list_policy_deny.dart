// ignore_for_file: unused_element, unnecessary_cast

class PolicyListPolicyDeny {
  /// The policy allows or denies all values.
  final bool? all;

  /// The policy can define specific values that are allowed or denied.
  final List<String>? values;

  /// Creates a new [PolicyListPolicyDeny].
  /// [all] The policy allows or denies all values.
  /// [values] The policy can define specific values that are allowed or denied.
  PolicyListPolicyDeny({
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

  factory PolicyListPolicyDeny.fromMap(Map<String, dynamic> map) {
    return PolicyListPolicyDeny(
      all: map['all'] == null ? null : map['all'] as bool,
      values:
          map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}

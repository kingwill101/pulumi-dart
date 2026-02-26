// ignore_for_file: unused_element, unnecessary_cast

class GetOrganizationPolicyListPolicyDeny {
  /// The policy allows or denies all values.
  final bool all;

  /// The policy can define specific values that are allowed or denied.
  final List<String> values;

  GetOrganizationPolicyListPolicyDeny({
    required this.all,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['all'] = all;
    map['values'] = values;
    return map;
  }

  factory GetOrganizationPolicyListPolicyDeny.fromMap(
      Map<String, dynamic> map) {
    return GetOrganizationPolicyListPolicyDeny(
      all: map['all'] as bool,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

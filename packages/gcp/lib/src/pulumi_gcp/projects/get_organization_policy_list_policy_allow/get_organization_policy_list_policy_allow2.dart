// ignore_for_file: unused_element, unnecessary_cast

class GetOrganizationPolicyListPolicyAllow2 {
  /// The policy allows or denies all values.
  final bool all;

  /// The policy can define specific values that are allowed or denied.
  final List<String> values;

  GetOrganizationPolicyListPolicyAllow2({
    required this.all,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['all'] = all;
    map['values'] = values;
    return map;
  }

  factory GetOrganizationPolicyListPolicyAllow2.fromMap(
      Map<String, dynamic> map) {
    return GetOrganizationPolicyListPolicyAllow2(
      all: map['all'] as bool,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

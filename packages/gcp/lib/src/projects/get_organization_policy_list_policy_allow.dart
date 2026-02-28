// ignore_for_file: unused_element, unnecessary_cast


class GetOrganizationPolicyListPolicyAllow {
  /// The policy allows or denies all values.
  final bool all;
  /// The policy can define specific values that are allowed or denied.
  final List<String> values;

  /// Creates a new [GetOrganizationPolicyListPolicyAllow].
  /// [all] The policy allows or denies all values.
  /// [values] The policy can define specific values that are allowed or denied.
  GetOrganizationPolicyListPolicyAllow({
    required this.all,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': all,
      'values': values,
    };
  }

  factory GetOrganizationPolicyListPolicyAllow.fromMap(Map<String, dynamic> map) {
    return GetOrganizationPolicyListPolicyAllow(
      all: map['all'] as bool,
      values: (map['values'] as List).cast<String>(),
    );
  }
}


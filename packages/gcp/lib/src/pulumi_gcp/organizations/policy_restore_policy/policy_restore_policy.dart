// ignore_for_file: unused_element, unnecessary_cast

class PolicyRestorePolicy {
  /// May only be set to true. If set, then the default Policy is restored.
  final bool default_;

  PolicyRestorePolicy({
    required this.default_,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['default'] = default_;
    return map;
  }

  factory PolicyRestorePolicy.fromMap(Map<String, dynamic> map) {
    return PolicyRestorePolicy(
      default_: map['default'] as bool,
    );
  }
}

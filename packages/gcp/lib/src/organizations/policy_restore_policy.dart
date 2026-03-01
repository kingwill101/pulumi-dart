// ignore_for_file: unused_element, unnecessary_cast


class PolicyRestorePolicy {
  /// May only be set to true. If set, then the default Policy is restored.
  final bool default_;

  /// Creates a new [PolicyRestorePolicy].
  /// [default_] May only be set to true. If set, then the default Policy is restored.
  PolicyRestorePolicy({
    required this.default_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': default_,
    };
  }

  factory PolicyRestorePolicy.fromMap(Map<String, dynamic> map) {
    return PolicyRestorePolicy(
      default_: map['default'] as bool,
    );
  }
}


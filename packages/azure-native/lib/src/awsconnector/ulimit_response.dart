// ignore_for_file: unused_element, unnecessary_cast


/// Definition of Ulimit
class UlimitResponse {
  /// The hard limit for the ``ulimit`` type.
  final int? hardLimit;
  /// The ``type`` of the ``ulimit``.
  final String? name;
  /// The soft limit for the ``ulimit`` type.
  final int? softLimit;

  /// Creates a new [UlimitResponse].
  /// [hardLimit] The hard limit for the ``ulimit`` type.
  /// [name] The ``type`` of the ``ulimit``.
  /// [softLimit] The soft limit for the ``ulimit`` type.
  UlimitResponse({
    this.hardLimit,
    this.name,
    this.softLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hardLimit': ?hardLimit,
      'name': ?name,
      'softLimit': ?softLimit,
    };
  }

  factory UlimitResponse.fromMap(Map<String, dynamic> map) {
    return UlimitResponse(
      hardLimit: map['hardLimit'] == null ? null : map['hardLimit'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      softLimit: map['softLimit'] == null ? null : map['softLimit'] as int,
    );
  }
}


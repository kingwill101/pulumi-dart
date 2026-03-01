// ignore_for_file: unused_element, unnecessary_cast


/// Definition of Ulimit
class Ulimit {
  /// The hard limit for the ``ulimit`` type.
  final int? hardLimit;
  /// The ``type`` of the ``ulimit``.
  final String? name;
  /// The soft limit for the ``ulimit`` type.
  final int? softLimit;

  /// Creates a new [Ulimit].
  /// [hardLimit] The hard limit for the ``ulimit`` type.
  /// [name] The ``type`` of the ``ulimit``.
  /// [softLimit] The soft limit for the ``ulimit`` type.
  Ulimit({
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

  factory Ulimit.fromMap(Map<String, dynamic> map) {
    return Ulimit(
      hardLimit: map['hardLimit'] == null ? null : map['hardLimit'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      softLimit: map['softLimit'] == null ? null : map['softLimit'] as int,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Ulimit
class Ulimit {
  /// The hard limit for the ``ulimit`` type.
  final pulumi.Input<int>? hardLimit;
  /// The ``type`` of the ``ulimit``.
  final pulumi.Input<String>? name;
  /// The soft limit for the ``ulimit`` type.
  final pulumi.Input<int>? softLimit;

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
      hardLimit: map['hardLimit'] == null ? null : (map['hardLimit']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      softLimit: map['softLimit'] == null ? null : (map['softLimit']! as int).input(),
    );
  }
}


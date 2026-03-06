// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Ulimit
class UlimitResponse {
  /// The hard limit for the ``ulimit`` type.
  final pulumi.Input<int>? hardLimit;
  /// The ``type`` of the ``ulimit``.
  final pulumi.Input<String>? name;
  /// The soft limit for the ``ulimit`` type.
  final pulumi.Input<int>? softLimit;

  /// Creates a new [UlimitResponse].
  /// [hardLimit] The hard limit for the ``ulimit`` type.
  /// [name] The ``type`` of the ``ulimit``.
  /// [softLimit] The soft limit for the ``ulimit`` type.
  const UlimitResponse({
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
      hardLimit: (() { final guardedValue = map['hardLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      softLimit: (() { final guardedValue = map['softLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ulimit_name.dart';

class Ulimit {
  /// The hard limit, in bytes, seconds, or a count, depending on `name`.
  final pulumi.Input<double> hardLimit;
  /// The resource limit to configure.
  final pulumi.Input<UlimitName> name;
  /// The soft limit, in bytes, seconds, or a count, depending on `name`.
  final pulumi.Input<double> softLimit;

  /// Creates a new [Ulimit].
  /// [hardLimit] The hard limit, in bytes, seconds, or a count, depending on `name`.
  /// [name] The resource limit to configure.
  /// [softLimit] The soft limit, in bytes, seconds, or a count, depending on `name`.
  const Ulimit({
    required this.hardLimit,
    required this.name,
    required this.softLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hardLimit': hardLimit,
      'name': pulumi.Input.mapInputValue<UlimitName, String>(name, (value) => value.wireValue),
      'softLimit': softLimit,
    };
  }

  factory Ulimit.fromMap(Map<String, dynamic> map) {
    return Ulimit(
      hardLimit: pulumi.Input.fromValue((map['hardLimit'] as num).toDouble()),
      name: pulumi.Input.fromValue(UlimitName.fromValue(map['name']! as String)),
      softLimit: pulumi.Input.fromValue((map['softLimit'] as num).toDouble()),
    );
  }
}

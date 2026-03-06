// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetReleaseLabelsFilters {
  /// Optional release label application filter. For example, `Spark@2.1.0` or `Spark`.
  final pulumi.Input<String>? application;
  /// Optional release label version prefix filter. For example, `emr-5`.
  final pulumi.Input<String>? prefix;

  /// Creates a new [GetReleaseLabelsFilters].
  /// [application] Optional release label application filter. For example, `Spark@2.1.0` or `Spark`.
  /// [prefix] Optional release label version prefix filter. For example, `emr-5`.
  const GetReleaseLabelsFilters({
    this.application,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'application': ?application,
      'prefix': ?prefix,
    };
  }

  factory GetReleaseLabelsFilters.fromMap(Map<String, dynamic> map) {
    return GetReleaseLabelsFilters(
      application: (() { final guardedValue = map['application']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


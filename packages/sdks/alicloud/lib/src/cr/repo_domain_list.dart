// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RepoDomainList {
  /// Domain of internal endpoint, only in some regions.
  final pulumi.Input<String>? internal;

  /// Domain of public endpoint.
  final pulumi.Input<String>? public;

  /// Domain of vpc endpoint.
  final pulumi.Input<String>? vpc;

  /// Creates a new [RepoDomainList].
  /// [internal] Domain of internal endpoint, only in some regions.
  /// [public] Domain of public endpoint.
  /// [vpc] Domain of vpc endpoint.
  RepoDomainList({this.internal, this.public, this.vpc});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internal': ?internal,
      'public': ?public,
      'vpc': ?vpc,
    };
  }

  factory RepoDomainList.fromMap(Map<String, dynamic> map) {
    return RepoDomainList(
      internal: (() {
        final guardedValue = map['internal'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      public: (() {
        final guardedValue = map['public'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpc: (() {
        final guardedValue = map['vpc'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

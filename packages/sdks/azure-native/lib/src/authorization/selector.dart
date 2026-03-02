// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The selector expression.
class Selector {
  /// The list of values to filter in.
  final pulumi.Input<List<String>>? in_;
  /// The selector kind.
  final pulumi.Input<String>? kind;
  /// The list of values to filter out.
  final pulumi.Input<List<String>>? notIn;

  /// Creates a new [Selector].
  /// [in_] The list of values to filter in.
  /// [kind] The selector kind.
  /// [notIn] The list of values to filter out.
  Selector({
    this.in_,
    this.kind,
    this.notIn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'in': ?in_,
      'kind': ?kind,
      'notIn': ?notIn,
    };
  }

  factory Selector.fromMap(Map<String, dynamic> map) {
    return Selector(
      in_: map['in'] == null ? null : ((map['in'] as List).cast<String>()).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      notIn: map['notIn'] == null ? null : ((map['notIn'] as List).cast<String>()).input(),
    );
  }
}


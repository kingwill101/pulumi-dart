// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The selector expression.
class SelectorResponse {
  /// The list of values to filter in.
  final pulumi.Input<List<String>>? in_;
  /// The selector kind.
  final pulumi.Input<String>? kind;
  /// The list of values to filter out.
  final pulumi.Input<List<String>>? notIn;

  /// Creates a new [SelectorResponse].
  /// [in_] The list of values to filter in.
  /// [kind] The selector kind.
  /// [notIn] The list of values to filter out.
  SelectorResponse({
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

  factory SelectorResponse.fromMap(Map<String, dynamic> map) {
    return SelectorResponse(
      in_: map['in'] == null ? null : ((map['in']! as List).cast<String>()).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      notIn: map['notIn'] == null ? null : ((map['notIn']! as List).cast<String>()).input(),
    );
  }
}


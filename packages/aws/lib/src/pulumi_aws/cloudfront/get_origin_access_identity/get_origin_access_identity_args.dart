// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getOriginAccessIdentity.
class GetOriginAccessIdentityArgs {
  /// The identifier for the origin access identity. For example: `E1ZAKK699EOLAL`.
  final Input<String> id;

  GetOriginAccessIdentityArgs({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    return map;
  }

  factory GetOriginAccessIdentityArgs.fromMap(Map<String, dynamic> map) {
    return GetOriginAccessIdentityArgs(
      id: Input.asInput<String>(map['id']),
    );
  }
}

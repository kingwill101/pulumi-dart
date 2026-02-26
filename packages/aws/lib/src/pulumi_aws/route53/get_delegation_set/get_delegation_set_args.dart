// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDelegationSet.
class GetDelegationSetArgs {
  /// Delegation set ID.
  final Input<String> id;

  GetDelegationSetArgs({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    return map;
  }

  factory GetDelegationSetArgs.fromMap(Map<String, dynamic> map) {
    return GetDelegationSetArgs(
      id: Input.asInput<String>(map['id']),
    );
  }
}

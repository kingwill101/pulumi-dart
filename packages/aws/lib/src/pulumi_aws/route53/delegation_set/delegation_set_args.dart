// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for DelegationSet.
class DelegationSetArgs {
  /// This is a reference name used in Caller Reference
  /// (helpful for identifying single delegation set amongst others)
  final pulumi.Input<String>? referenceName;

  DelegationSetArgs({
    this.referenceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final referenceNameValue = referenceName;
    if (referenceNameValue != null) {
      map['referenceName'] = referenceNameValue;
    }
    return map;
  }

  factory DelegationSetArgs.fromMap(Map<String, dynamic> map) {
    return DelegationSetArgs(
      referenceName: pulumi.Input.asOptionalInput<String>(map['referenceName']),
    );
  }
}

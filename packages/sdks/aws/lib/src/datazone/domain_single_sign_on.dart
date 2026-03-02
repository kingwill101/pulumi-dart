// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainSingleSignOn {
  final pulumi.Input<String>? type;
  final pulumi.Input<String>? userAssignment;

  /// Creates a new [DomainSingleSignOn].
  /// [type] Optional.
  /// [userAssignment] Optional.
  DomainSingleSignOn({
    this.type,
    this.userAssignment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'userAssignment': ?userAssignment,
    };
  }

  factory DomainSingleSignOn.fromMap(Map<String, dynamic> map) {
    return DomainSingleSignOn(
      type: map['type'] == null ? null : ((map['type'] as String).input()).input(),
      userAssignment: map['userAssignment'] == null ? null : ((map['userAssignment'] as String).input()).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainSingleSignOn {
  final pulumi.Input<String>? type;
  final pulumi.Input<String>? userAssignment;

  /// Creates a new [DomainSingleSignOn].
  /// [type] Optional.
  /// [userAssignment] Optional.
  const DomainSingleSignOn({
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
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAssignment: (() { final guardedValue = map['userAssignment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of orchestrator
class SubnetDetails {
  /// subnet arm resource id
  final pulumi.Input<String>? id;

  /// Creates a new [SubnetDetails].
  /// [id] subnet arm resource id
  SubnetDetails({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory SubnetDetails.fromMap(Map<String, dynamic> map) {
    return SubnetDetails(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


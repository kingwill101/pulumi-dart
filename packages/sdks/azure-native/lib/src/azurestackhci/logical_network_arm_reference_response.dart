// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Azure Resource ID for a Logical Network.
class LogicalNetworkArmReferenceResponse {
  /// The Azure Resource ID for a Logical Network.
  final pulumi.Input<String>? id;

  /// Creates a new [LogicalNetworkArmReferenceResponse].
  /// [id] The Azure Resource ID for a Logical Network.
  const LogicalNetworkArmReferenceResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory LogicalNetworkArmReferenceResponse.fromMap(Map<String, dynamic> map) {
    return LogicalNetworkArmReferenceResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


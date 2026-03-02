// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of IPSetReference
class IPSetReference {
  /// A resource ARN.
  final pulumi.Input<String>? referenceArn;

  /// Creates a new [IPSetReference].
  /// [referenceArn] A resource ARN.
  IPSetReference({
    this.referenceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceArn': ?referenceArn,
    };
  }

  factory IPSetReference.fromMap(Map<String, dynamic> map) {
    return IPSetReference(
      referenceArn: map['referenceArn'] == null ? null : (map['referenceArn'] as String).input(),
    );
  }
}


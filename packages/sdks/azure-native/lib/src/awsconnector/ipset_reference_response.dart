// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of IPSetReference
class IPSetReferenceResponse {
  /// A resource ARN.
  final pulumi.Input<String>? referenceArn;

  /// Creates a new [IPSetReferenceResponse].
  /// [referenceArn] A resource ARN.
  IPSetReferenceResponse({
    this.referenceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceArn': ?referenceArn,
    };
  }

  factory IPSetReferenceResponse.fromMap(Map<String, dynamic> map) {
    return IPSetReferenceResponse(
      referenceArn: map['referenceArn'] == null ? null : (map['referenceArn'] as String).input(),
    );
  }
}


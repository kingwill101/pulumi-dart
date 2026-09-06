// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of IPSet
class IPSetResponse {
  /// Property definition
  final pulumi.Input<List<String>?>? definition;

  /// Creates a new [IPSetResponse].
  /// [definition] Property definition
  const IPSetResponse({
    this.definition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': ?definition,
    };
  }

  factory IPSetResponse.fromMap(Map<String, dynamic> map) {
    return IPSetResponse(
      definition: (() { final guardedValue = map['definition']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of IPSet
class IPSetResponse {
  /// Property definition
  final pulumi.Input<List<String>>? definition;

  /// Creates a new [IPSetResponse].
  /// [definition] Property definition
  IPSetResponse({
    this.definition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': ?definition,
    };
  }

  factory IPSetResponse.fromMap(Map<String, dynamic> map) {
    return IPSetResponse(
      definition: map['definition'] == null ? null : ((map['definition']! as List).cast<String>()).input(),
    );
  }
}


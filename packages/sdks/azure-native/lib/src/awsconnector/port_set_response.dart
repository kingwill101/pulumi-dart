// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of PortSet
class PortSetResponse {
  /// Property definition
  final pulumi.Input<List<String>>? definition;

  /// Creates a new [PortSetResponse].
  /// [definition] Property definition
  PortSetResponse({this.definition});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'definition': ?definition};
  }

  factory PortSetResponse.fromMap(Map<String, dynamic> map) {
    return PortSetResponse(
      definition: (() {
        final guardedValue = map['definition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}

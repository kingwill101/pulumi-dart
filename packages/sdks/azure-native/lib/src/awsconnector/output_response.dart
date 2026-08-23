// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Output
class OutputResponse {
  /// Property description
  final pulumi.Input<String>? description;
  /// Property exportName
  final pulumi.Input<String>? exportName;
  /// Property outputKey
  final pulumi.Input<String>? outputKey;
  /// Property outputValue
  final pulumi.Input<String>? outputValue;

  /// Creates a new [OutputResponse].
  /// [description] Property description
  /// [exportName] Property exportName
  /// [outputKey] Property outputKey
  /// [outputValue] Property outputValue
  const OutputResponse({
    this.description,
    this.exportName,
    this.outputKey,
    this.outputValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'exportName': ?exportName,
      'outputKey': ?outputKey,
      'outputValue': ?outputValue,
    };
  }

  factory OutputResponse.fromMap(Map<String, dynamic> map) {
    return OutputResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exportName: (() { final guardedValue = map['exportName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputKey: (() { final guardedValue = map['outputKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputValue: (() { final guardedValue = map['outputValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

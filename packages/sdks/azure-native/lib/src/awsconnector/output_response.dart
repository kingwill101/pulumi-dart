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
  OutputResponse({
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
      description: map['description'] == null ? null : (map['description']! as String).input(),
      exportName: map['exportName'] == null ? null : (map['exportName']! as String).input(),
      outputKey: map['outputKey'] == null ? null : (map['outputKey']! as String).input(),
      outputValue: map['outputValue'] == null ? null : (map['outputValue']! as String).input(),
    );
  }
}


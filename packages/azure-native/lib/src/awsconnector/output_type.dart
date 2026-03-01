// ignore_for_file: unused_element, unnecessary_cast


/// Definition of Output
class OutputType {
  /// Property description
  final String? description;
  /// Property exportName
  final String? exportName;
  /// Property outputKey
  final String? outputKey;
  /// Property outputValue
  final String? outputValue;

  /// Creates a new [OutputType].
  /// [description] Property description
  /// [exportName] Property exportName
  /// [outputKey] Property outputKey
  /// [outputValue] Property outputValue
  OutputType({
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

  factory OutputType.fromMap(Map<String, dynamic> map) {
    return OutputType(
      description: map['description'] == null ? null : map['description'] as String,
      exportName: map['exportName'] == null ? null : map['exportName'] as String,
      outputKey: map['outputKey'] == null ? null : map['outputKey'] as String,
      outputValue: map['outputValue'] == null ? null : map['outputValue'] as String,
    );
  }
}


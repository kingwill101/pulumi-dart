// ignore_for_file: unused_element, unnecessary_cast


class GetChangeSetsSetParameter {
  /// The parameters.
  final String parameterKey;
  /// The parameters.
  final String parameterValue;

  /// Creates a new [GetChangeSetsSetParameter].
  /// [parameterKey] The parameters.
  /// [parameterValue] The parameters.
  GetChangeSetsSetParameter({
    required this.parameterKey,
    required this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterKey': parameterKey,
      'parameterValue': parameterValue,
    };
  }

  factory GetChangeSetsSetParameter.fromMap(Map<String, dynamic> map) {
    return GetChangeSetsSetParameter(
      parameterKey: map['parameterKey'] as String,
      parameterValue: map['parameterValue'] as String,
    );
  }
}


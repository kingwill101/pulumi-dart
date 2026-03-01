// ignore_for_file: unused_element, unnecessary_cast

class PipeTargetParametersBatchJobParametersArrayProperties {
  /// The size of the array, if this is an array batch job. Minimum value of 2. Maximum value of 10,000.
  final int? size;

  /// Creates a new [PipeTargetParametersBatchJobParametersArrayProperties].
  /// [size] The size of the array, if this is an array batch job. Minimum value of 2. Maximum value of 10,000.
  PipeTargetParametersBatchJobParametersArrayProperties({this.size});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'size': ?size};
  }

  factory PipeTargetParametersBatchJobParametersArrayProperties.fromMap(
    Map<String, dynamic> map,
  ) {
    return PipeTargetParametersBatchJobParametersArrayProperties(
      size: map['size'] == null ? null : map['size'] as int,
    );
  }
}

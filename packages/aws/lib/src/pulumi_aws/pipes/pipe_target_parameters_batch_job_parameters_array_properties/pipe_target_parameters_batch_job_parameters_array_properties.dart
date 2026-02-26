// ignore_for_file: unused_element, unnecessary_cast

class PipeTargetParametersBatchJobParametersArrayProperties {
  /// The size of the array, if this is an array batch job. Minimum value of 2. Maximum value of 10,000.
  final int? size;

  PipeTargetParametersBatchJobParametersArrayProperties({
    this.size,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final sizeValue = size;
    if (sizeValue != null) {
      map['size'] = sizeValue;
    }
    return map;
  }

  factory PipeTargetParametersBatchJobParametersArrayProperties.fromMap(
      Map<String, dynamic> map) {
    return PipeTargetParametersBatchJobParametersArrayProperties(
      size: map['size'] == null ? null : map['size'] as int,
    );
  }
}

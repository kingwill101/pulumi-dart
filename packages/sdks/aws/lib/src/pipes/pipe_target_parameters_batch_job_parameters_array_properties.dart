// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeTargetParametersBatchJobParametersArrayProperties {
  /// The size of the array, if this is an array batch job. Minimum value of 2. Maximum value of 10,000.
  final pulumi.Input<int?>? size;

  /// Creates a new [PipeTargetParametersBatchJobParametersArrayProperties].
  /// [size] The size of the array, if this is an array batch job. Minimum value of 2. Maximum value of 10,000.
  const PipeTargetParametersBatchJobParametersArrayProperties({
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': ?size,
    };
  }

  factory PipeTargetParametersBatchJobParametersArrayProperties.fromMap(Map<String, dynamic> map) {
    return PipeTargetParametersBatchJobParametersArrayProperties(
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}

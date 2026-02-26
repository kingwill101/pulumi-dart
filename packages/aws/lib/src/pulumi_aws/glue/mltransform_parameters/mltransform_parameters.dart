// ignore_for_file: unused_element, unnecessary_cast

import '../mltransform_parameters_find_matches_parameters/mltransform_parameters_find_matches_parameters.dart';

class MLTransformParameters {
  /// The parameters for the find matches algorithm. see Find Matches Parameters.
  final MLTransformParametersFindMatchesParameters findMatchesParameters;

  /// The type of machine learning transform. For information about the types of machine learning transforms, see [Creating Machine Learning Transforms](http://docs.aws.amazon.com/glue/latest/dg/add-job-machine-learning-transform.html).
  final String transformType;

  MLTransformParameters({
    required this.findMatchesParameters,
    required this.transformType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['findMatchesParameters'] = findMatchesParameters.toMap();
    map['transformType'] = transformType;
    return map;
  }

  factory MLTransformParameters.fromMap(Map<String, dynamic> map) {
    return MLTransformParameters(
      findMatchesParameters: MLTransformParametersFindMatchesParameters.fromMap(
          (map['findMatchesParameters'] as Map).cast<String, dynamic>()),
      transformType: map['transformType'] as String,
    );
  }
}

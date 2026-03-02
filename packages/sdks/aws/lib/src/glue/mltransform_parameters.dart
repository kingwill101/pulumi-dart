// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mltransform_parameters_find_matches_parameters.dart';

class MLTransformParameters {
  /// The parameters for the find matches algorithm. see Find Matches Parameters.
  final pulumi.Input<MLTransformParametersFindMatchesParameters> findMatchesParameters;
  /// The type of machine learning transform. For information about the types of machine learning transforms, see [Creating Machine Learning Transforms](http://docs.aws.amazon.com/glue/latest/dg/add-job-machine-learning-transform.html).
  final pulumi.Input<String> transformType;

  /// Creates a new [MLTransformParameters].
  /// [findMatchesParameters] The parameters for the find matches algorithm. see Find Matches Parameters.
  /// [transformType] The type of machine learning transform. For information about the types of machine learning transforms, see [Creating Machine Learning Transforms](http://docs.aws.amazon.com/glue/latest/dg/add-job-machine-learning-transform.html).
  MLTransformParameters({
    required this.findMatchesParameters,
    required this.transformType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'findMatchesParameters': pulumi.Input.mapInputValue<MLTransformParametersFindMatchesParameters, Map<String, dynamic>>(findMatchesParameters, (value) => value.toMap()),
      'transformType': transformType,
    };
  }

  factory MLTransformParameters.fromMap(Map<String, dynamic> map) {
    return MLTransformParameters(
      findMatchesParameters: (MLTransformParametersFindMatchesParameters.fromMap((map['findMatchesParameters'] as Map).cast<String, dynamic>())).input(),
      transformType: (map['transformType'] as String).input(),
    );
  }
}


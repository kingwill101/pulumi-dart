// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'baseline_response.dart';

/// Defines the properties of a baseline.
class BaselinePropertiesResponse {
  /// Defines the baseline target, which is compared against the SLI value to determine compliance.
  final pulumi.Input<BaselineResponse> baseline;

  /// Creates a new [BaselinePropertiesResponse].
  /// [baseline] Defines the baseline target, which is compared against the SLI value to determine compliance.
  const BaselinePropertiesResponse({
    required this.baseline,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseline': pulumi.Input.mapInputValue<BaselineResponse, Map<String, dynamic>>(baseline, (value) => value.toMap()),
    };
  }

  factory BaselinePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BaselinePropertiesResponse(
      baseline: pulumi.Input.fromValue(BaselineResponse.fromMap((map['baseline']! as Map).cast<String, dynamic>())),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDetectorFeatureAdditionalConfiguration {
  /// The name of the detector feature.
  final pulumi.Input<String> name;
  /// Current status of the detector.
  final pulumi.Input<String> status;

  /// Creates a new [GetDetectorFeatureAdditionalConfiguration].
  /// [name] The name of the detector feature.
  /// [status] Current status of the detector.
  GetDetectorFeatureAdditionalConfiguration({
    required this.name,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'status': status,
    };
  }

  factory GetDetectorFeatureAdditionalConfiguration.fromMap(Map<String, dynamic> map) {
    return GetDetectorFeatureAdditionalConfiguration(
      name: (map['name'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}


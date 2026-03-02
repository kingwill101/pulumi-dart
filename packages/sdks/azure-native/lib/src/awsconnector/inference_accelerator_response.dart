// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of InferenceAccelerator
class InferenceAcceleratorResponse {
  /// The Elastic Inference accelerator device name. The ``deviceName`` must also be referenced in a container definition as a [ResourceRequirement](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ResourceRequirement.html).
  final pulumi.Input<String>? deviceName;
  /// The Elastic Inference accelerator type to use.
  final pulumi.Input<String>? deviceType;

  /// Creates a new [InferenceAcceleratorResponse].
  /// [deviceName] The Elastic Inference accelerator device name. The ``deviceName`` must also be referenced in a container definition as a [ResourceRequirement](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ResourceRequirement.html).
  /// [deviceType] The Elastic Inference accelerator type to use.
  InferenceAcceleratorResponse({
    this.deviceName,
    this.deviceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': ?deviceName,
      'deviceType': ?deviceType,
    };
  }

  factory InferenceAcceleratorResponse.fromMap(Map<String, dynamic> map) {
    return InferenceAcceleratorResponse(
      deviceName: map['deviceName'] == null ? null : (map['deviceName'] as String).input(),
      deviceType: map['deviceType'] == null ? null : (map['deviceType'] as String).input(),
    );
  }
}


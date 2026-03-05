// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of InferenceAccelerator
class InferenceAccelerator {
  /// The Elastic Inference accelerator device name. The ``deviceName`` must also be referenced in a container definition as a [ResourceRequirement](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ResourceRequirement.html).
  final pulumi.Input<String>? deviceName;
  /// The Elastic Inference accelerator type to use.
  final pulumi.Input<String>? deviceType;

  /// Creates a new [InferenceAccelerator].
  /// [deviceName] The Elastic Inference accelerator device name. The ``deviceName`` must also be referenced in a container definition as a [ResourceRequirement](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ResourceRequirement.html).
  /// [deviceType] The Elastic Inference accelerator type to use.
  InferenceAccelerator({
    this.deviceName,
    this.deviceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': ?deviceName,
      'deviceType': ?deviceType,
    };
  }

  factory InferenceAccelerator.fromMap(Map<String, dynamic> map) {
    return InferenceAccelerator(
      deviceName: (() { final guardedValue = map['deviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deviceType: (() { final guardedValue = map['deviceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


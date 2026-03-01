// ignore_for_file: unused_element, unnecessary_cast


/// Definition of InferenceAccelerator
class InferenceAccelerator {
  /// The Elastic Inference accelerator device name. The ``deviceName`` must also be referenced in a container definition as a [ResourceRequirement](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ResourceRequirement.html).
  final String? deviceName;
  /// The Elastic Inference accelerator type to use.
  final String? deviceType;

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
      deviceName: map['deviceName'] == null ? null : map['deviceName'] as String,
      deviceType: map['deviceType'] == null ? null : map['deviceType'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'algorithm_inference_specification_container.dart';

class AlgorithmInferenceSpecification {
  /// List of container definitions for inference.
  final pulumi.Input<List<AlgorithmInferenceSpecificationContainer>> containers;
  /// Supported MIME types for inference requests.
  final pulumi.Input<List<String>?>? supportedContentTypes;
  /// Instance types supported for real-time inference.
  final pulumi.Input<List<String>?>? supportedRealtimeInferenceInstanceTypes;
  /// Supported MIME types for inference responses.
  final pulumi.Input<List<String>?>? supportedResponseMimeTypes;
  /// Instance types supported for batch transform.
  final pulumi.Input<List<String>?>? supportedTransformInstanceTypes;

  /// Creates a new [AlgorithmInferenceSpecification].
  /// [containers] List of container definitions for inference.
  /// [supportedContentTypes] Supported MIME types for inference requests.
  /// [supportedRealtimeInferenceInstanceTypes] Instance types supported for real-time inference.
  /// [supportedResponseMimeTypes] Supported MIME types for inference responses.
  /// [supportedTransformInstanceTypes] Instance types supported for batch transform.
  const AlgorithmInferenceSpecification({
    required this.containers,
    this.supportedContentTypes,
    this.supportedRealtimeInferenceInstanceTypes,
    this.supportedResponseMimeTypes,
    this.supportedTransformInstanceTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containers': pulumi.Input.mapInputValue<List<AlgorithmInferenceSpecificationContainer>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<AlgorithmInferenceSpecificationContainer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'supportedContentTypes': ?supportedContentTypes,
      'supportedRealtimeInferenceInstanceTypes': ?supportedRealtimeInferenceInstanceTypes,
      'supportedResponseMimeTypes': ?supportedResponseMimeTypes,
      'supportedTransformInstanceTypes': ?supportedTransformInstanceTypes,
    };
  }

  factory AlgorithmInferenceSpecification.fromMap(Map<String, dynamic> map) {
    return AlgorithmInferenceSpecification(
      containers: pulumi.Input.fromValue(pulumi.Input.decodeList<AlgorithmInferenceSpecificationContainer>(map['containers']!, (value) => AlgorithmInferenceSpecificationContainer.fromMap((value as Map).cast<String, dynamic>()))),
      supportedContentTypes: (() { final guardedValue = map['supportedContentTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      supportedRealtimeInferenceInstanceTypes: (() { final guardedValue = map['supportedRealtimeInferenceInstanceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      supportedResponseMimeTypes: (() { final guardedValue = map['supportedResponseMimeTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      supportedTransformInstanceTypes: (() { final guardedValue = map['supportedTransformInstanceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

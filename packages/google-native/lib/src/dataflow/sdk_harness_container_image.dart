// ignore_for_file: unused_element, unnecessary_cast

/// Defines an SDK harness container for executing Dataflow pipelines.
class SdkHarnessContainerImage {
  /// The set of capabilities enumerated in the above Environment proto. See also [beam_runner_api.proto](https://github.com/apache/beam/blob/master/model/pipeline/src/main/proto/org/apache/beam/model/pipeline/v1/beam_runner_api.proto)
  final List<String>? capabilities;

  /// A docker container image that resides in Google Container Registry.
  final String? containerImage;

  /// Environment ID for the Beam runner API proto Environment that corresponds to the current SDK Harness.
  final String? environmentId;

  /// If true, recommends the Dataflow service to use only one core per SDK container instance with this image. If false (or unset) recommends using more than one core per SDK container instance with this image for efficiency. Note that Dataflow service may choose to override this property if needed.
  final bool? useSingleCorePerContainer;

  /// Creates a new [SdkHarnessContainerImage].
  /// [capabilities] The set of capabilities enumerated in the above Environment proto. See also [beam_runner_api.proto](https://github.com/apache/beam/blob/master/model/pipeline/src/main/proto/org/apache/beam/model/pipeline/v1/beam_runner_api.proto)
  /// [containerImage] A docker container image that resides in Google Container Registry.
  /// [environmentId] Environment ID for the Beam runner API proto Environment that corresponds to the current SDK Harness.
  /// [useSingleCorePerContainer] If true, recommends the Dataflow service to use only one core per SDK container instance with this image. If false (or unset) recommends using more than one core per SDK container instance with this image for efficiency. Note that Dataflow service may choose to override this property if needed.
  SdkHarnessContainerImage({
    this.capabilities,
    this.containerImage,
    this.environmentId,
    this.useSingleCorePerContainer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': ?capabilities,
      'containerImage': ?containerImage,
      'environmentId': ?environmentId,
      'useSingleCorePerContainer': ?useSingleCorePerContainer,
    };
  }

  factory SdkHarnessContainerImage.fromMap(Map<String, dynamic> map) {
    return SdkHarnessContainerImage(
      capabilities: map['capabilities'] == null
          ? null
          : (map['capabilities'] as List).cast<String>(),
      containerImage: map['containerImage'] == null
          ? null
          : map['containerImage'] as String,
      environmentId: map['environmentId'] == null
          ? null
          : map['environmentId'] as String,
      useSingleCorePerContainer: map['useSingleCorePerContainer'] == null
          ? null
          : map['useSingleCorePerContainer'] as bool,
    );
  }
}

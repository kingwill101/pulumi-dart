// ignore_for_file: unused_element, unnecessary_cast

/// Configuration information for the Ray cluster. For experimental launch, Ray cluster creation and Persistent cluster creation are 1:1 mapping: We will provision all the nodes within the Persistent cluster as Ray nodes.
class GoogleCloudAiplatformV1beta1RaySpecResponse {
  /// Optional. This will be used to indicate which resource pool will serve as the Ray head node(the first node within that pool). Will use the machine from the first workerpool as the head node by default if this field isn't set.
  final String headNodeResourcePoolId;

  /// Optional. Default image for user to choose a preferred ML framework (for example, TensorFlow or Pytorch) by choosing from [Vertex prebuilt images](https://cloud.google.com/vertex-ai/docs/training/pre-built-containers). Either this or the resource_pool_images is required. Use this field if you need all the resource pools to have the same Ray image. Otherwise, use the {@code resource_pool_images} field.
  final String imageUri;

  /// Optional. Required if image_uri isn't set. A map of resource_pool_id to prebuild Ray image if user need to use different images for different head/worker pools. This map needs to cover all the resource pool ids. Example: { "ray_head_node_pool": "head image" "ray_worker_node_pool1": "worker image" "ray_worker_node_pool2": "another worker image" }
  final Map<String, String> resourcePoolImages;

  /// Creates a new [GoogleCloudAiplatformV1beta1RaySpecResponse].
  /// [headNodeResourcePoolId] Optional. This will be used to indicate which resource pool will serve as the Ray head node(the first node within that pool). Will use the machine from the first workerpool as the head node by default if this field isn't set.
  /// [imageUri] Optional. Default image for user to choose a preferred ML framework (for example, TensorFlow or Pytorch) by choosing from [Vertex prebuilt images](https://cloud.google.com/vertex-ai/docs/training/pre-built-containers). Either this or the resource_pool_images is required. Use this field if you need all the resource pools to have the same Ray image. Otherwise, use the {@code resource_pool_images} field.
  /// [resourcePoolImages] Optional. Required if image_uri isn't set. A map of resource_pool_id to prebuild Ray image if user need to use different images for different head/worker pools. This map needs to cover all the resource pool ids. Example: { "ray_head_node_pool": "head image" "ray_worker_node_pool1": "worker image" "ray_worker_node_pool2": "another worker image" }
  GoogleCloudAiplatformV1beta1RaySpecResponse({
    required this.headNodeResourcePoolId,
    required this.imageUri,
    required this.resourcePoolImages,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['headNodeResourcePoolId'] = headNodeResourcePoolId;
    map['imageUri'] = imageUri;
    map['resourcePoolImages'] = resourcePoolImages;
    return map;
  }

  factory GoogleCloudAiplatformV1beta1RaySpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1RaySpecResponse(
      headNodeResourcePoolId: map['headNodeResourcePoolId'] as String,
      imageUri: map['imageUri'] as String,
      resourcePoolImages:
          (map['resourcePoolImages'] as Map).cast<String, String>(),
    );
  }
}

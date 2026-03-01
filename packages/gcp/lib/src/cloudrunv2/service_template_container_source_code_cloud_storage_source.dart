// ignore_for_file: unused_element, unnecessary_cast

class ServiceTemplateContainerSourceCodeCloudStorageSource {
  /// The Cloud Storage bucket name.
  final String bucket;

  /// The Cloud Storage object generation. The is an int64 value. As with most Google APIs, its JSON representation will be a string instead of an integer.
  final String? generation;

  /// The Cloud Storage object name.
  final String object;

  /// Creates a new [ServiceTemplateContainerSourceCodeCloudStorageSource].
  /// [bucket] The Cloud Storage bucket name.
  /// [generation] The Cloud Storage object generation. The is an int64 value. As with most Google APIs, its JSON representation will be a string instead of an integer.
  /// [object] The Cloud Storage object name.
  ServiceTemplateContainerSourceCodeCloudStorageSource({
    required this.bucket,
    this.generation,
    required this.object,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'generation': ?generation,
      'object': object,
    };
  }

  factory ServiceTemplateContainerSourceCodeCloudStorageSource.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceTemplateContainerSourceCodeCloudStorageSource(
      bucket: map['bucket'] as String,
      generation: map['generation'] == null
          ? null
          : map['generation'] as String,
      object: map['object'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class GetServiceTemplateContainerSourceCodeCloudStorageSource {
  /// The Cloud Storage bucket name.
  final String bucket;

  /// The Cloud Storage object generation. The is an int64 value. As with most Google APIs, its JSON representation will be a string instead of an integer.
  final String generation;

  /// The Cloud Storage object name.
  final String object;

  GetServiceTemplateContainerSourceCodeCloudStorageSource({
    required this.bucket,
    required this.generation,
    required this.object,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['generation'] = generation;
    map['object'] = object;
    return map;
  }

  factory GetServiceTemplateContainerSourceCodeCloudStorageSource.fromMap(
      Map<String, dynamic> map) {
    return GetServiceTemplateContainerSourceCodeCloudStorageSource(
      bucket: map['bucket'] as String,
      generation: map['generation'] as String,
      object: map['object'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class ServiceTemplateContainerSourceCodeCloudStorageSource {
  /// The Cloud Storage bucket name.
  final String bucket;

  /// The Cloud Storage object generation. The is an int64 value. As with most Google APIs, its JSON representation will be a string instead of an integer.
  final String? generation;

  /// The Cloud Storage object name.
  final String object;

  ServiceTemplateContainerSourceCodeCloudStorageSource({
    required this.bucket,
    this.generation,
    required this.object,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final generationValue = generation;
    if (generationValue != null) {
      map['generation'] = generationValue;
    }
    map['object'] = object;
    return map;
  }

  factory ServiceTemplateContainerSourceCodeCloudStorageSource.fromMap(
      Map<String, dynamic> map) {
    return ServiceTemplateContainerSourceCodeCloudStorageSource(
      bucket: map['bucket'] as String,
      generation:
          map['generation'] == null ? null : map['generation'] as String,
      object: map['object'] as String,
    );
  }
}

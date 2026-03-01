// ignore_for_file: unused_element, unnecessary_cast


class DatasetDelimitedTextAzureBlobStorageLocation {
  /// The container on the Azure Blob Storage Account hosting the file.
  final String container;
  /// Is the `container` using dynamic expression, function or system variables? Defaults to `false`.
  final bool? dynamicContainerEnabled;
  /// Is the `filename` using dynamic expression, function or system variables? Defaults to `false`.
  final bool? dynamicFilenameEnabled;
  /// Is the `path` using dynamic expression, function or system variables? Defaults to `false`.
  final bool? dynamicPathEnabled;
  /// The filename of the file.
  final String? filename;
  /// The folder path to the file. This can be an empty string.
  final String? path;

  /// Creates a new [DatasetDelimitedTextAzureBlobStorageLocation].
  /// [container] The container on the Azure Blob Storage Account hosting the file.
  /// [dynamicContainerEnabled] Is the `container` using dynamic expression, function or system variables? Defaults to `false`.
  /// [dynamicFilenameEnabled] Is the `filename` using dynamic expression, function or system variables? Defaults to `false`.
  /// [dynamicPathEnabled] Is the `path` using dynamic expression, function or system variables? Defaults to `false`.
  /// [filename] The filename of the file.
  /// [path] The folder path to the file. This can be an empty string.
  DatasetDelimitedTextAzureBlobStorageLocation({
    required this.container,
    this.dynamicContainerEnabled,
    this.dynamicFilenameEnabled,
    this.dynamicPathEnabled,
    this.filename,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'container': container,
      'dynamicContainerEnabled': ?dynamicContainerEnabled,
      'dynamicFilenameEnabled': ?dynamicFilenameEnabled,
      'dynamicPathEnabled': ?dynamicPathEnabled,
      'filename': ?filename,
      'path': ?path,
    };
  }

  factory DatasetDelimitedTextAzureBlobStorageLocation.fromMap(Map<String, dynamic> map) {
    return DatasetDelimitedTextAzureBlobStorageLocation(
      container: map['container'] as String,
      dynamicContainerEnabled: map['dynamicContainerEnabled'] == null ? null : map['dynamicContainerEnabled'] as bool,
      dynamicFilenameEnabled: map['dynamicFilenameEnabled'] == null ? null : map['dynamicFilenameEnabled'] as bool,
      dynamicPathEnabled: map['dynamicPathEnabled'] == null ? null : map['dynamicPathEnabled'] as bool,
      filename: map['filename'] == null ? null : map['filename'] as String,
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}


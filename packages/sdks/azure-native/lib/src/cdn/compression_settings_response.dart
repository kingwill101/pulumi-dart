// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// settings for compression.
class CompressionSettingsResponse {
  /// List of content types on which compression applies. The value should be a valid MIME type.
  final pulumi.Input<List<String>>? contentTypesToCompress;
  /// Indicates whether content compression is enabled on AzureFrontDoor. Default value is false. If compression is enabled, content will be served as compressed if user requests for a compressed version. Content won't be compressed on AzureFrontDoor when requested content is smaller than 1 byte or larger than 1 MB.
  final pulumi.Input<bool>? isCompressionEnabled;

  /// Creates a new [CompressionSettingsResponse].
  /// [contentTypesToCompress] List of content types on which compression applies. The value should be a valid MIME type.
  /// [isCompressionEnabled] Indicates whether content compression is enabled on AzureFrontDoor. Default value is false. If compression is enabled, content will be served as compressed if user requests for a compressed version. Content won't be compressed on AzureFrontDoor when requested content is smaller than 1 byte or larger than 1 MB.
  const CompressionSettingsResponse({
    this.contentTypesToCompress,
    this.isCompressionEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentTypesToCompress': ?contentTypesToCompress,
      'isCompressionEnabled': ?isCompressionEnabled,
    };
  }

  factory CompressionSettingsResponse.fromMap(Map<String, dynamic> map) {
    return CompressionSettingsResponse(
      contentTypesToCompress: (() { final guardedValue = map['contentTypesToCompress']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      isCompressionEnabled: (() { final guardedValue = map['isCompressionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

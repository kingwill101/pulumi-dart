// ignore_for_file: unused_element, unnecessary_cast

class WasmPluginVersion {
  /// (Output)
  /// Output only. The timestamp when the resource was created.
  final String? createTime;

  /// Optional. A human-readable description of the resource.
  final String? description;

  /// (Output)
  /// Output only. The resolved digest for the image specified in the image field. The digest is resolved during the creation of WasmPluginVersion resource.
  /// This field holds the digest value, regardless of whether a tag or digest was originally specified in the image field.
  final String? imageDigest;

  /// Optional. URI of the container image containing the plugin, stored in the Artifact Registry. When a new WasmPluginVersion resource is created, the digest of the container image is saved in the imageDigest field.
  /// When downloading an image, the digest value is used instead of an image tag.
  final String? imageUri;

  /// Optional. Set of labels associated with the WasmPlugin resource.
  final Map<String, String>? labels;

  /// A base64-encoded string containing the configuration for the plugin. The configuration is provided to the plugin at runtime through the ON_CONFIGURE callback.
  /// When a new WasmPluginVersion resource is created, the digest of the contents is saved in the pluginConfigDigest field.
  /// Conflics with pluginConfigUri.
  final String? pluginConfigData;

  /// (Output)
  /// Output only. This field holds the digest (usually checksum) value for the plugin configuration.
  /// The value is calculated based on the contents of pluginConfigData or the container image defined by the pluginConfigUri field.
  final String? pluginConfigDigest;

  /// URI of the plugin configuration stored in the Artifact Registry. The configuration is provided to the plugin at runtime through the ON_CONFIGURE callback.
  /// The container image must contain only a single file with the name plugin.config.
  /// When a new WasmPluginVersion resource is created, the digest of the container image is saved in the pluginConfigDigest field.
  /// Conflics with pluginConfigData.
  final String? pluginConfigUri;

  /// (Output)
  /// Output only. The timestamp when the resource was updated.
  final String? updateTime;

  /// The identifier for this object. Format specified above.
  final String versionName;

  /// Creates a new [WasmPluginVersion].
  /// [createTime] (Output)
  /// [description] Optional. A human-readable description of the resource.
  /// [imageDigest] (Output)
  /// [imageUri] Optional. URI of the container image containing the plugin, stored in the Artifact Registry. When a new WasmPluginVersion resource is created, the digest of the container image is saved in the imageDigest field.
  /// [labels] Optional. Set of labels associated with the WasmPlugin resource.
  /// [pluginConfigData] A base64-encoded string containing the configuration for the plugin. The configuration is provided to the plugin at runtime through the ON_CONFIGURE callback.
  /// [pluginConfigDigest] (Output)
  /// [pluginConfigUri] URI of the plugin configuration stored in the Artifact Registry. The configuration is provided to the plugin at runtime through the ON_CONFIGURE callback.
  /// [updateTime] (Output)
  /// [versionName] The identifier for this object. Format specified above.
  WasmPluginVersion({
    this.createTime,
    this.description,
    this.imageDigest,
    this.imageUri,
    this.labels,
    this.pluginConfigData,
    this.pluginConfigDigest,
    this.pluginConfigUri,
    this.updateTime,
    required this.versionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final createTimeValue = createTime;
    if (createTimeValue != null) {
      map['createTime'] = createTimeValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final imageDigestValue = imageDigest;
    if (imageDigestValue != null) {
      map['imageDigest'] = imageDigestValue;
    }
    final imageUriValue = imageUri;
    if (imageUriValue != null) {
      map['imageUri'] = imageUriValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final pluginConfigDataValue = pluginConfigData;
    if (pluginConfigDataValue != null) {
      map['pluginConfigData'] = pluginConfigDataValue;
    }
    final pluginConfigDigestValue = pluginConfigDigest;
    if (pluginConfigDigestValue != null) {
      map['pluginConfigDigest'] = pluginConfigDigestValue;
    }
    final pluginConfigUriValue = pluginConfigUri;
    if (pluginConfigUriValue != null) {
      map['pluginConfigUri'] = pluginConfigUriValue;
    }
    final updateTimeValue = updateTime;
    if (updateTimeValue != null) {
      map['updateTime'] = updateTimeValue;
    }
    map['versionName'] = versionName;
    return map;
  }

  factory WasmPluginVersion.fromMap(Map<String, dynamic> map) {
    return WasmPluginVersion(
      createTime:
          map['createTime'] == null ? null : map['createTime'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      imageDigest:
          map['imageDigest'] == null ? null : map['imageDigest'] as String,
      imageUri: map['imageUri'] == null ? null : map['imageUri'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      pluginConfigData: map['pluginConfigData'] == null
          ? null
          : map['pluginConfigData'] as String,
      pluginConfigDigest: map['pluginConfigDigest'] == null
          ? null
          : map['pluginConfigDigest'] as String,
      pluginConfigUri: map['pluginConfigUri'] == null
          ? null
          : map['pluginConfigUri'] as String,
      updateTime:
          map['updateTime'] == null ? null : map['updateTime'] as String,
      versionName: map['versionName'] as String,
    );
  }
}

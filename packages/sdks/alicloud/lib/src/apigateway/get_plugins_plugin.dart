// ignore_for_file: unused_element, unnecessary_cast


class GetPluginsPlugin {
  /// The CreateTime of the resource.
  final String createTime;
  /// The description of the plug-in, which cannot exceed 200 characters.
  final String description;
  /// The ID of the Plugin.
  final String id;
  /// The ModifiedTime of the resource.
  final String modifiedTime;
  /// The definition statement of the plug-in. Plug-in definition statements in the JSON and YAML formats are supported.
  final String pluginData;
  /// The first ID of the resource.
  final String pluginId;
  /// The name of the plug-in that you want to create.
  final String pluginName;
  /// The type of the plug-in.
  final String pluginType;
  /// The tag of the resource.
  final Map<String, String> tags;

  /// Creates a new [GetPluginsPlugin].
  /// [createTime] The CreateTime of the resource.
  /// [description] The description of the plug-in, which cannot exceed 200 characters.
  /// [id] The ID of the Plugin.
  /// [modifiedTime] The ModifiedTime of the resource.
  /// [pluginData] The definition statement of the plug-in. Plug-in definition statements in the JSON and YAML formats are supported.
  /// [pluginId] The first ID of the resource.
  /// [pluginName] The name of the plug-in that you want to create.
  /// [pluginType] The type of the plug-in.
  /// [tags] The tag of the resource.
  GetPluginsPlugin({
    required this.createTime,
    required this.description,
    required this.id,
    required this.modifiedTime,
    required this.pluginData,
    required this.pluginId,
    required this.pluginName,
    required this.pluginType,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'id': id,
      'modifiedTime': modifiedTime,
      'pluginData': pluginData,
      'pluginId': pluginId,
      'pluginName': pluginName,
      'pluginType': pluginType,
      'tags': tags,
    };
  }

  factory GetPluginsPlugin.fromMap(Map<String, dynamic> map) {
    return GetPluginsPlugin(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      modifiedTime: map['modifiedTime'] as String,
      pluginData: map['pluginData'] as String,
      pluginId: map['pluginId'] as String,
      pluginName: map['pluginName'] as String,
      pluginType: map['pluginType'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}


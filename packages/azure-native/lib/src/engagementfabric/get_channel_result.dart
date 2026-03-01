// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getChannel.
class GetChannelResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The functions to be enabled for the channel
  final List<String>? channelFunctions;
  /// The channel type
  final String channelType;
  /// The channel credentials
  final Map<String, String>? credentials;
  /// The ID of the resource
  final String id;
  /// The name of the resource
  final String name;
  /// The fully qualified type of the resource
  final String type;

  /// Creates a new [GetChannelResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [channelFunctions] The functions to be enabled for the channel
  /// [channelType] The channel type
  /// [credentials] The channel credentials
  /// [id] The ID of the resource
  /// [name] The name of the resource
  /// [type] The fully qualified type of the resource
  GetChannelResult({
    required this.azureApiVersion,
    this.channelFunctions,
    required this.channelType,
    this.credentials,
    required this.id,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'channelFunctions': ?channelFunctions,
      'channelType': channelType,
      'credentials': ?credentials,
      'id': id,
      'name': name,
      'type': type,
    };
  }

  factory GetChannelResult.fromMap(Map<String, dynamic> map) {
    return GetChannelResult(
      azureApiVersion: map['azureApiVersion'] as String,
      channelFunctions: map['channelFunctions'] == null ? null : (map['channelFunctions'] as List).cast<String>(),
      channelType: map['channelType'] as String,
      credentials: map['credentials'] == null ? null : (map['credentials'] as Map).cast<String, String>(),
      id: map['id'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}


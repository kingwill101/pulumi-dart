// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getChannel.
class GetChannelResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The functions to be enabled for the channel
  final List<String>? channelFunctions;
  /// The channel type
  final String? channelType;
  /// The channel credentials
  final Map<String, String>? credentials;
  /// The ID of the resource
  final String? id;
  /// The name of the resource
  final String? name;
  /// The fully qualified type of the resource
  final String? type;

  /// Creates a new [GetChannelResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [channelFunctions] The functions to be enabled for the channel
  /// [channelType] The channel type
  /// [credentials] The channel credentials
  /// [id] The ID of the resource
  /// [name] The name of the resource
  /// [type] The fully qualified type of the resource
  const GetChannelResult({
    this.azureApiVersion,
    this.channelFunctions,
    this.channelType,
    this.credentials,
    this.id,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'channelFunctions': ?channelFunctions,
      'channelType': ?channelType,
      'credentials': ?credentials,
      'id': ?id,
      'name': ?name,
      'type': ?type,
    };
  }

  factory GetChannelResult.fromMap(Map<String, dynamic> map) {
    return GetChannelResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      channelFunctions: (() { final guardedValue = map['channelFunctions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      channelType: (() { final guardedValue = map['channelType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

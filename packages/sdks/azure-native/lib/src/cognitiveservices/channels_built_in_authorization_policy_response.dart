// ignore_for_file: unused_element, unnecessary_cast


/// Represents a built-in authorization policy specific to Azure Bot Service/Channels authentication.
class ChannelsBuiltInAuthorizationPolicyResponse {
  /// Authorization scheme type.
  /// Expected value is 'Channels'.
  final String type;

  /// Creates a new [ChannelsBuiltInAuthorizationPolicyResponse].
  /// [type] Authorization scheme type.
  ChannelsBuiltInAuthorizationPolicyResponse({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory ChannelsBuiltInAuthorizationPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ChannelsBuiltInAuthorizationPolicyResponse(
      type: map['type'] as String,
    );
  }
}


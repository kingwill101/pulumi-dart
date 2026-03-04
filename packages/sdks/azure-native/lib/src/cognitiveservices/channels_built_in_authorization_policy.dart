// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a built-in authorization policy specific to Azure Bot Service/Channels authentication.
class ChannelsBuiltInAuthorizationPolicy {
  /// Authorization scheme type.
  /// Expected value is 'Channels'.
  final pulumi.Input<String> type;

  /// Creates a new [ChannelsBuiltInAuthorizationPolicy].
  /// [type] Authorization scheme type.
  ChannelsBuiltInAuthorizationPolicy({required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type};
  }

  factory ChannelsBuiltInAuthorizationPolicy.fromMap(Map<String, dynamic> map) {
    return ChannelsBuiltInAuthorizationPolicy(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

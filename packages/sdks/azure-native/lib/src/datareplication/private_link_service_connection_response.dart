// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents of an NRP private link service connection.
class PrivateLinkServiceConnectionResponse {
  /// Gets or sets group ids.
  final pulumi.Input<List<String>>? groupIds;

  /// Gets or sets private link service connection name.
  final pulumi.Input<String>? name;

  /// Gets or sets the request message for the private link service connection.
  final pulumi.Input<String>? requestMessage;

  /// Creates a new [PrivateLinkServiceConnectionResponse].
  /// [groupIds] Gets or sets group ids.
  /// [name] Gets or sets private link service connection name.
  /// [requestMessage] Gets or sets the request message for the private link service connection.
  PrivateLinkServiceConnectionResponse({
    this.groupIds,
    this.name,
    this.requestMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': ?groupIds,
      'name': ?name,
      'requestMessage': ?requestMessage,
    };
  }

  factory PrivateLinkServiceConnectionResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return PrivateLinkServiceConnectionResponse(
      groupIds: (() {
        final guardedValue = map['groupIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      requestMessage: (() {
        final guardedValue = map['requestMessage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

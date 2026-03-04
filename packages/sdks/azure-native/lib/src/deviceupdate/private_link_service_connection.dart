// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Private link service connection details.
class PrivateLinkServiceConnection {
  /// List of group IDs.
  final pulumi.Input<List<String>>? groupIds;

  /// Private link service connection name.
  final pulumi.Input<String>? name;

  /// Request message.
  final pulumi.Input<String>? requestMessage;

  /// Creates a new [PrivateLinkServiceConnection].
  /// [groupIds] List of group IDs.
  /// [name] Private link service connection name.
  /// [requestMessage] Request message.
  PrivateLinkServiceConnection({this.groupIds, this.name, this.requestMessage});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': ?groupIds,
      'name': ?name,
      'requestMessage': ?requestMessage,
    };
  }

  factory PrivateLinkServiceConnection.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceConnection(
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

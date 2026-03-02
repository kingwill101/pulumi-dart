// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The link state.
class LinkStateResponse {
  /// The timestamp of the last update of the link state.
  final pulumi.Input<String> lastUpdatedOn;
  /// The state message.
  final pulumi.Input<String>? message;
  /// The state of the link.
  final pulumi.Input<String>? state;

  /// Creates a new [LinkStateResponse].
  /// [lastUpdatedOn] The timestamp of the last update of the link state.
  /// [message] The state message.
  /// [state] The state of the link.
  LinkStateResponse({
    required this.lastUpdatedOn,
    this.message,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastUpdatedOn': lastUpdatedOn,
      'message': ?message,
      'state': ?state,
    };
  }

  factory LinkStateResponse.fromMap(Map<String, dynamic> map) {
    return LinkStateResponse(
      lastUpdatedOn: (map['lastUpdatedOn'] as String).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
    );
  }
}


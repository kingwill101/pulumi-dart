// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The agent that initiated the event. For most situations, this could be from the authorization context of the request.
class ActorResponse {
  /// The subject or username associated with the request context that generated the event.
  final pulumi.Input<String>? name;

  /// Creates a new [ActorResponse].
  /// [name] The subject or username associated with the request context that generated the event.
  ActorResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory ActorResponse.fromMap(Map<String, dynamic> map) {
    return ActorResponse(
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}


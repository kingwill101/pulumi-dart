// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'messaging_endpoint.dart';

/// The namespace messaging endpoints model.
class Messaging {
  /// Dictionary of messaging endpoints.
  final pulumi.Input<Map<String, MessagingEndpoint>>? endpoints;

  /// Creates a new [Messaging].
  /// [endpoints] Dictionary of messaging endpoints.
  Messaging({
    this.endpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoints': ?pulumi.Input.mapOptionalInputValue<Map<String, MessagingEndpoint>, Map<String, Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeMapValues<MessagingEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory Messaging.fromMap(Map<String, dynamic> map) {
    return Messaging(
      endpoints: map['endpoints'] == null ? null : (pulumi.Input.decodeMapValues<MessagingEndpoint>(map['endpoints'], (value) => MessagingEndpoint.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


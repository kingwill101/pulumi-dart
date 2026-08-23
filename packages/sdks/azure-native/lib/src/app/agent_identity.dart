// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Agent identity configuration
class AgentIdentity {
  /// Initial sponsor group ID (required for agent identity)
  final pulumi.Input<String> initialSponsorGroupId;

  /// Creates a new [AgentIdentity].
  /// [initialSponsorGroupId] Initial sponsor group ID (required for agent identity)
  const AgentIdentity({
    required this.initialSponsorGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initialSponsorGroupId': initialSponsorGroupId,
    };
  }

  factory AgentIdentity.fromMap(Map<String, dynamic> map) {
    return AgentIdentity(
      initialSponsorGroupId: pulumi.Input.fromValue(map['initialSponsorGroupId'] as String),
    );
  }
}

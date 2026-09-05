// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2ServiceAssociatedSystem {
  /// ARN of the system to associate with the service.
  final pulumi.Input<String> systemArn;
  /// List of user journey identifiers that associate the system with the service.
  final pulumi.Input<List<String>?>? userJourneyIds;

  /// Creates a new [V2ServiceAssociatedSystem].
  /// [systemArn] ARN of the system to associate with the service.
  /// [userJourneyIds] List of user journey identifiers that associate the system with the service.
  const V2ServiceAssociatedSystem({
    required this.systemArn,
    this.userJourneyIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'systemArn': systemArn,
      'userJourneyIds': ?userJourneyIds,
    };
  }

  factory V2ServiceAssociatedSystem.fromMap(Map<String, dynamic> map) {
    return V2ServiceAssociatedSystem(
      systemArn: pulumi.Input.fromValue(map['systemArn'] as String),
      userJourneyIds: (() { final guardedValue = map['userJourneyIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetV2ServiceAssociatedSystem {
  /// ARN of the associated system.
  final pulumi.Input<String> systemArn;
  /// List of user journey identifiers that associate the system with the service.
  final pulumi.Input<List<String>> userJourneyIds;

  /// Creates a new [GetV2ServiceAssociatedSystem].
  /// [systemArn] ARN of the associated system.
  /// [userJourneyIds] List of user journey identifiers that associate the system with the service.
  const GetV2ServiceAssociatedSystem({
    required this.systemArn,
    required this.userJourneyIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'systemArn': systemArn,
      'userJourneyIds': userJourneyIds,
    };
  }

  factory GetV2ServiceAssociatedSystem.fromMap(Map<String, dynamic> map) {
    return GetV2ServiceAssociatedSystem(
      systemArn: pulumi.Input.fromValue(map['systemArn'] as String),
      userJourneyIds: pulumi.Input.fromValue((map['userJourneyIds'] as List).cast<String>()),
    );
  }
}

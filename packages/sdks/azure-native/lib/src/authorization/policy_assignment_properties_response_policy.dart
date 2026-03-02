// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'principal_response.dart';

/// Details of the policy
class PolicyAssignmentPropertiesResponsePolicy {
  /// Id of the policy
  final pulumi.Input<String>? id;
  /// The name of the entity last modified it
  final pulumi.Input<PrincipalResponse> lastModifiedBy;
  /// The last modified date time.
  final pulumi.Input<String>? lastModifiedDateTime;

  /// Creates a new [PolicyAssignmentPropertiesResponsePolicy].
  /// [id] Id of the policy
  /// [lastModifiedBy] The name of the entity last modified it
  /// [lastModifiedDateTime] The last modified date time.
  PolicyAssignmentPropertiesResponsePolicy({
    this.id,
    required this.lastModifiedBy,
    this.lastModifiedDateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'lastModifiedBy': pulumi.Input.mapInputValue<PrincipalResponse, Map<String, dynamic>>(lastModifiedBy, (value) => value.toMap()),
      'lastModifiedDateTime': ?lastModifiedDateTime,
    };
  }

  factory PolicyAssignmentPropertiesResponsePolicy.fromMap(Map<String, dynamic> map) {
    return PolicyAssignmentPropertiesResponsePolicy(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      lastModifiedBy: (PrincipalResponse.fromMap((map['lastModifiedBy'] as Map).cast<String, dynamic>())).input(),
      lastModifiedDateTime: map['lastModifiedDateTime'] == null ? null : (map['lastModifiedDateTime'] as String).input(),
    );
  }
}


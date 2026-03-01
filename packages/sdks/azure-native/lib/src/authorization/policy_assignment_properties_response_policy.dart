// ignore_for_file: unused_element, unnecessary_cast

import 'principal_response.dart';

/// Details of the policy
class PolicyAssignmentPropertiesResponsePolicy {
  /// Id of the policy
  final String? id;
  /// The name of the entity last modified it
  final PrincipalResponse lastModifiedBy;
  /// The last modified date time.
  final String? lastModifiedDateTime;

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
      'lastModifiedBy': lastModifiedBy.toMap(),
      'lastModifiedDateTime': ?lastModifiedDateTime,
    };
  }

  factory PolicyAssignmentPropertiesResponsePolicy.fromMap(Map<String, dynamic> map) {
    return PolicyAssignmentPropertiesResponsePolicy(
      id: map['id'] == null ? null : map['id'] as String,
      lastModifiedBy: PrincipalResponse.fromMap((map['lastModifiedBy'] as Map).cast<String, dynamic>()),
      lastModifiedDateTime: map['lastModifiedDateTime'] == null ? null : map['lastModifiedDateTime'] as String,
    );
  }
}


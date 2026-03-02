// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IndustrialPidOrganization resources.
class IndustrialPidOrganizationState {
  /// The ID of parent pid organization.
  final pulumi.Input<String>? parentPidOrganizationId;
  /// The name of pid organization.
  final pulumi.Input<String>? pidOrganizationName;

  /// Creates a new [IndustrialPidOrganizationState].
  /// [parentPidOrganizationId] The ID of parent pid organization.
  /// [pidOrganizationName] The name of pid organization.
  IndustrialPidOrganizationState({
    this.parentPidOrganizationId,
    this.pidOrganizationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parentPidOrganizationId': ?parentPidOrganizationId,
      'pidOrganizationName': ?pidOrganizationName,
    };
  }

  factory IndustrialPidOrganizationState.fromMap(Map<String, dynamic> map) {
    return IndustrialPidOrganizationState(
      parentPidOrganizationId: map['parentPidOrganizationId'] == null ? null : (map['parentPidOrganizationId'] as String).input(),
      pidOrganizationName: map['pidOrganizationName'] == null ? null : (map['pidOrganizationName'] as String).input(),
    );
  }
}


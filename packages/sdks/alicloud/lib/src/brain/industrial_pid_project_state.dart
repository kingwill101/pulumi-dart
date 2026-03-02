// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IndustrialPidProject resources.
class IndustrialPidProjectState {
  /// The ID of Pid Organization.
  final pulumi.Input<String>? pidOrganizationId;
  /// The description of Pid Project.
  final pulumi.Input<String>? pidProjectDesc;
  /// The name of Pid Project.
  final pulumi.Input<String>? pidProjectName;

  /// Creates a new [IndustrialPidProjectState].
  /// [pidOrganizationId] The ID of Pid Organization.
  /// [pidProjectDesc] The description of Pid Project.
  /// [pidProjectName] The name of Pid Project.
  IndustrialPidProjectState({
    this.pidOrganizationId,
    this.pidProjectDesc,
    this.pidProjectName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pidOrganizationId': ?pidOrganizationId,
      'pidProjectDesc': ?pidProjectDesc,
      'pidProjectName': ?pidProjectName,
    };
  }

  factory IndustrialPidProjectState.fromMap(Map<String, dynamic> map) {
    return IndustrialPidProjectState(
      pidOrganizationId: map['pidOrganizationId'] == null ? null : (map['pidOrganizationId']! as String).input(),
      pidProjectDesc: map['pidProjectDesc'] == null ? null : (map['pidProjectDesc']! as String).input(),
      pidProjectName: map['pidProjectName'] == null ? null : (map['pidProjectName']! as String).input(),
    );
  }
}


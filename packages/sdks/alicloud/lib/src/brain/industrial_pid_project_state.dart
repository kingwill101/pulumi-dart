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
    pulumi.Output<String>? pidOrganizationId,
    pulumi.Output<String>? pidProjectDesc,
    pulumi.Output<String>? pidProjectName,
  }) :
      pidOrganizationId = pulumi.Input.asOptionalInput<String>(pidOrganizationId),
      pidProjectDesc = pulumi.Input.asOptionalInput<String>(pidProjectDesc),
      pidProjectName = pulumi.Input.asOptionalInput<String>(pidProjectName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pidOrganizationId': ?pidOrganizationId,
      'pidProjectDesc': ?pidProjectDesc,
      'pidProjectName': ?pidProjectName,
    };
  }

  factory IndustrialPidProjectState.fromMap(Map<String, dynamic> map) {
    return IndustrialPidProjectState(
      pidOrganizationId: map['pidOrganizationId'] == null ? null : pulumi.Output.create<String>(map['pidOrganizationId'] as String),
      pidProjectDesc: map['pidProjectDesc'] == null ? null : pulumi.Output.create<String>(map['pidProjectDesc'] as String),
      pidProjectName: map['pidProjectName'] == null ? null : pulumi.Output.create<String>(map['pidProjectName'] as String),
    );
  }
}


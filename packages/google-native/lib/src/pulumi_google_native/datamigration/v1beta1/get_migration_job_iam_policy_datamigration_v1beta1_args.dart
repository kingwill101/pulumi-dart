// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getMigrationJobIamPolicy.
class GetMigrationJobIamPolicyDatamigrationV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> migrationJobId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  GetMigrationJobIamPolicyDatamigrationV1beta1Args({
    required this.location,
    required this.migrationJobId,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['migrationJobId'] = migrationJobId;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetMigrationJobIamPolicyDatamigrationV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetMigrationJobIamPolicyDatamigrationV1beta1Args(
      location: pulumi.Input.asInput<String>(map['location']),
      migrationJobId: pulumi.Input.asInput<String>(map['migrationJobId']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getMigrationJobIamPolicy.
class GetMigrationJobIamPolicyArgs {
  final Input<String> location;
  final Input<String> migrationJobId;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;

  GetMigrationJobIamPolicyArgs({
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

  factory GetMigrationJobIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetMigrationJobIamPolicyArgs(
      location: Input.asInput<String>(map['location']),
      migrationJobId: Input.asInput<String>(map['migrationJobId']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}

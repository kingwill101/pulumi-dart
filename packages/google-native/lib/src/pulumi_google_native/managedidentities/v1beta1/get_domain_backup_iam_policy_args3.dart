// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDomainBackupIamPolicy.
class GetDomainBackupIamPolicyArgs3 {
  final Input<String> backupId;
  final Input<String> domainId;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;

  GetDomainBackupIamPolicyArgs3({
    required this.backupId,
    required this.domainId,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupId'] = backupId;
    map['domainId'] = domainId;
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

  factory GetDomainBackupIamPolicyArgs3.fromMap(Map<String, dynamic> map) {
    return GetDomainBackupIamPolicyArgs3(
      backupId: Input.asInput<String>(map['backupId']),
      domainId: Input.asInput<String>(map['domainId']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDomainBackupIamPolicy.
class GetDomainBackupIamPolicyManagedidentitiesV1beta1Args {
  final pulumi.Input<String> backupId;
  final pulumi.Input<String> domainId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  GetDomainBackupIamPolicyManagedidentitiesV1beta1Args({
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

  factory GetDomainBackupIamPolicyManagedidentitiesV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetDomainBackupIamPolicyManagedidentitiesV1beta1Args(
      backupId: pulumi.Input.asInput<String>(map['backupId']),
      domainId: pulumi.Input.asInput<String>(map['domainId']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}

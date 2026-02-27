// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getConnectivityTestIamPolicy.
class GetConnectivityTestIamPolicyArgs2 {
  final Input<String> connectivityTestId;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;

  GetConnectivityTestIamPolicyArgs2({
    required this.connectivityTestId,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectivityTestId'] = connectivityTestId;
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

  factory GetConnectivityTestIamPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetConnectivityTestIamPolicyArgs2(
      connectivityTestId: Input.asInput<String>(map['connectivityTestId']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}

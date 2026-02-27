// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getLakeAssetIamPolicy.
class GetLakeAssetIamPolicyArgs {
  final Input<String> assetId;
  final Input<String> lakeId;
  final Input<String> location;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;
  final Input<String> zone;

  GetLakeAssetIamPolicyArgs({
    required this.assetId,
    required this.lakeId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['assetId'] = assetId;
    map['lakeId'] = lakeId;
    map['location'] = location;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['zone'] = zone;
    return map;
  }

  factory GetLakeAssetIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetLakeAssetIamPolicyArgs(
      assetId: Input.asInput<String>(map['assetId']),
      lakeId: Input.asInput<String>(map['lakeId']),
      location: Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
      zone: Input.asInput<String>(map['zone']),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1beta1_get_address_group_iam_policy_networksecurity_v1beta1_args_doc}
/// Arguments for getAddressGroupIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1beta1_get_address_group_iam_policy_networksecurity_v1beta1_args_doc}
class GetAddressGroupIamPolicyNetworksecurityV1beta1Args {
  final pulumi.Input<String> addressGroupId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAddressGroupIamPolicyNetworksecurityV1beta1Args].
  /// [addressGroupId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetAddressGroupIamPolicyNetworksecurityV1beta1Args({
    required String addressGroupId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  })  : addressGroupId = pulumi.Input.asInput<String>(addressGroupId),
        location = pulumi.Input.asInput<String>(location),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['addressGroupId'] = addressGroupId;
    map['location'] = location;
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

  factory GetAddressGroupIamPolicyNetworksecurityV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetAddressGroupIamPolicyNetworksecurityV1beta1Args(
      addressGroupId: map['addressGroupId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

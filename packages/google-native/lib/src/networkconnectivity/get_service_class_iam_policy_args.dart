// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkconnectivity_v1_get_service_class_iam_policy_args_doc}
/// Arguments for getServiceClassIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_v1_get_service_class_iam_policy_args_doc}
class GetServiceClassIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceClassId;

  /// Creates a new [GetServiceClassIamPolicyArgs].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [serviceClassId] Required.
  GetServiceClassIamPolicyArgs({
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
    required String serviceClassId,
  }) : location = pulumi.Input.asInput<String>(location),
       optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       serviceClassId = pulumi.Input.asInput<String>(serviceClassId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'serviceClassId': serviceClassId,
    };
  }

  factory GetServiceClassIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceClassIamPolicyArgs(
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      serviceClassId: map['serviceClassId'] as String,
    );
  }
}

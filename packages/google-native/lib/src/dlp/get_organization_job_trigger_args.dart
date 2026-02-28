// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dlp_v2_get_organization_job_trigger_args_doc}
/// Arguments for getOrganizationJobTrigger.
/// {@endtemplate}
/// {@macro pulumi_dlp_v2_get_organization_job_trigger_args_doc}
class GetOrganizationJobTriggerArgs {
  final pulumi.Input<String> jobTriggerId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetOrganizationJobTriggerArgs].
  /// [jobTriggerId] Required.
  /// [location] Required.
  /// [organizationId] Required.
  GetOrganizationJobTriggerArgs({
    required String jobTriggerId,
    required String location,
    required String organizationId,
  })  : jobTriggerId = pulumi.Input.asInput<String>(jobTriggerId),
        location = pulumi.Input.asInput<String>(location),
        organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['jobTriggerId'] = jobTriggerId;
    map['location'] = location;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetOrganizationJobTriggerArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationJobTriggerArgs(
      jobTriggerId: map['jobTriggerId'] as String,
      location: map['location'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}

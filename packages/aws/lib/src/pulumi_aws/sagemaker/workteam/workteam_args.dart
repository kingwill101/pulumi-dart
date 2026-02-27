// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../workteam_member_definition/workteam_member_definition.dart';
import '../workteam_notification_configuration/workteam_notification_configuration.dart';
import '../workteam_worker_access_configuration/workteam_worker_access_configuration.dart';

/// The set of arguments for Workteam.
class WorkteamArgs {
  /// A description of the work team.
  final pulumi.Input<String> description;

  /// A list of Member Definitions that contains objects that identify the workers that make up the work team. Workforces can be created using Amazon Cognito or your own OIDC Identity Provider (IdP). For private workforces created using Amazon Cognito use `cognito_member_definition`. For workforces created using your own OIDC identity provider (IdP) use `oidc_member_definition`. Do not provide input for both of these parameters in a single request. see Member Definition details below.
  final pulumi.Input<List<WorkteamMemberDefinition>> memberDefinitions;

  /// Configures notification of workers regarding available or expiring work items. see Notification Configuration details below.
  final pulumi.Input<WorkteamNotificationConfiguration>?
      notificationConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Use this optional parameter to constrain access to an Amazon S3 resource based on the IP address using supported IAM global condition keys. The Amazon S3 resource is accessed in the worker portal using a Amazon S3 presigned URL. see Worker Access Configuration details below.
  final pulumi.Input<WorkteamWorkerAccessConfiguration>?
      workerAccessConfiguration;

  /// The name of the workforce.
  final pulumi.Input<String>? workforceName;

  /// The name of the Workteam (must be unique).
  final pulumi.Input<String> workteamName;

  WorkteamArgs({
    required this.description,
    required this.memberDefinitions,
    this.notificationConfiguration,
    this.region,
    this.tags,
    this.workerAccessConfiguration,
    this.workforceName,
    required this.workteamName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['memberDefinitions'] = pulumi.Input.mapInputValue<
            List<WorkteamMemberDefinition>, List<Map<String, dynamic>>>(
        memberDefinitions,
        (value) => pulumi.Input.encodeList<WorkteamMemberDefinition,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final notificationConfigurationValue = notificationConfiguration;
    if (notificationConfigurationValue != null) {
      map['notificationConfiguration'] = pulumi.Input.mapOptionalInputValue<
              WorkteamNotificationConfiguration, Map<String, dynamic>>(
          notificationConfigurationValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final workerAccessConfigurationValue = workerAccessConfiguration;
    if (workerAccessConfigurationValue != null) {
      map['workerAccessConfiguration'] = pulumi.Input.mapOptionalInputValue<
              WorkteamWorkerAccessConfiguration, Map<String, dynamic>>(
          workerAccessConfigurationValue, (value) => value.toMap());
    }
    final workforceNameValue = workforceName;
    if (workforceNameValue != null) {
      map['workforceName'] = workforceNameValue;
    }
    map['workteamName'] = workteamName;
    return map;
  }

  factory WorkteamArgs.fromMap(Map<String, dynamic> map) {
    return WorkteamArgs(
      description: pulumi.Input.asInput<String>(map['description']),
      memberDefinitions: pulumi.Input.asInput<List<WorkteamMemberDefinition>>(
          map['memberDefinitions']),
      notificationConfiguration:
          pulumi.Input.asOptionalInput<WorkteamNotificationConfiguration>(
              map['notificationConfiguration']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      workerAccessConfiguration:
          pulumi.Input.asOptionalInput<WorkteamWorkerAccessConfiguration>(
              map['workerAccessConfiguration']),
      workforceName: pulumi.Input.asOptionalInput<String>(map['workforceName']),
      workteamName: pulumi.Input.asInput<String>(map['workteamName']),
    );
  }
}

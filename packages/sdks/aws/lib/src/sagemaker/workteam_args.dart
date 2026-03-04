// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workteam_member_definition.dart';
import 'workteam_notification_configuration.dart';
import 'workteam_worker_access_configuration.dart';

/// {@template pulumi_sagemaker_workteam_workteam_args_doc}
/// The set of arguments for Workteam.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_workteam_workteam_args_doc}
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

  /// Creates a new [WorkteamArgs].
  /// [description] A description of the work team.
  /// [memberDefinitions] A list of Member Definitions that contains objects that identify the workers that make up the work team. Workforces can be created using Amazon Cognito or your own OIDC Identity Provider (IdP). For private workforces created using Amazon Cognito use `cognito_member_definition`. For workforces created using your own OIDC identity provider (IdP) use `oidc_member_definition`. Do not provide input for both of these parameters in a single request. see Member Definition details below.
  /// [notificationConfiguration] Configures notification of workers regarding available or expiring work items. see Notification Configuration details below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [workerAccessConfiguration] Use this optional parameter to constrain access to an Amazon S3 resource based on the IP address using supported IAM global condition keys. The Amazon S3 resource is accessed in the worker portal using a Amazon S3 presigned URL. see Worker Access Configuration details below.
  /// [workforceName] The name of the workforce.
  /// [workteamName] The name of the Workteam (must be unique).
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
    return <String, dynamic>{
      'description': description,
      'memberDefinitions':
          pulumi.Input.mapInputValue<
            List<WorkteamMemberDefinition>,
            List<Map<String, dynamic>>
          >(
            memberDefinitions,
            (value) =>
                pulumi.Input.encodeList<
                  WorkteamMemberDefinition,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'notificationConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            WorkteamNotificationConfiguration,
            Map<String, dynamic>
          >(notificationConfiguration, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'workerAccessConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            WorkteamWorkerAccessConfiguration,
            Map<String, dynamic>
          >(workerAccessConfiguration, (value) => value.toMap()),
      'workforceName': ?workforceName,
      'workteamName': workteamName,
    };
  }

  factory WorkteamArgs.fromMap(Map<String, dynamic> map) {
    return WorkteamArgs(
      description: pulumi.Input.fromValue(map['description'] as String),
      memberDefinitions: pulumi.Input.fromValue(
        pulumi.Input.decodeList<WorkteamMemberDefinition>(
          map['memberDefinitions']!,
          (value) => WorkteamMemberDefinition.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      notificationConfiguration: (() {
        final guardedValue = map['notificationConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WorkteamNotificationConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      workerAccessConfiguration: (() {
        final guardedValue = map['workerAccessConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WorkteamWorkerAccessConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      workforceName: (() {
        final guardedValue = map['workforceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      workteamName: pulumi.Input.fromValue(map['workteamName'] as String),
    );
  }
}

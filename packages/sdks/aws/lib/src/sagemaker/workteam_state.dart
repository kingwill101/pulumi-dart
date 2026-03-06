// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workteam_member_definition.dart';
import 'workteam_notification_configuration.dart';
import 'workteam_worker_access_configuration.dart';

/// Input properties used for looking up and filtering Workteam resources.
class WorkteamState {
  /// The Amazon Resource Name (ARN) assigned by AWS to this Workteam.
  final pulumi.Input<String>? arn;
  /// A description of the work team.
  final pulumi.Input<String>? description;
  /// A list of Member Definitions that contains objects that identify the workers that make up the work team. Workforces can be created using Amazon Cognito or your own OIDC Identity Provider (IdP). For private workforces created using Amazon Cognito use `cognito_member_definition`. For workforces created using your own OIDC identity provider (IdP) use `oidc_member_definition`. Do not provide input for both of these parameters in a single request. see Member Definition details below.
  final pulumi.Input<List<WorkteamMemberDefinition>>? memberDefinitions;
  /// Configures notification of workers regarding available or expiring work items. see Notification Configuration details below.
  final pulumi.Input<WorkteamNotificationConfiguration>? notificationConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The subdomain for your OIDC Identity Provider.
  final pulumi.Input<String>? subdomain;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Use this optional parameter to constrain access to an Amazon S3 resource based on the IP address using supported IAM global condition keys. The Amazon S3 resource is accessed in the worker portal using a Amazon S3 presigned URL. see Worker Access Configuration details below.
  final pulumi.Input<WorkteamWorkerAccessConfiguration>? workerAccessConfiguration;
  /// The name of the workforce.
  final pulumi.Input<String>? workforceName;
  /// The name of the Workteam (must be unique).
  final pulumi.Input<String>? workteamName;

  /// Creates a new [WorkteamState].
  /// [arn] The Amazon Resource Name (ARN) assigned by AWS to this Workteam.
  /// [description] A description of the work team.
  /// [memberDefinitions] A list of Member Definitions that contains objects that identify the workers that make up the work team. Workforces can be created using Amazon Cognito or your own OIDC Identity Provider (IdP). For private workforces created using Amazon Cognito use `cognito_member_definition`. For workforces created using your own OIDC identity provider (IdP) use `oidc_member_definition`. Do not provide input for both of these parameters in a single request. see Member Definition details below.
  /// [notificationConfiguration] Configures notification of workers regarding available or expiring work items. see Notification Configuration details below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subdomain] The subdomain for your OIDC Identity Provider.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [workerAccessConfiguration] Use this optional parameter to constrain access to an Amazon S3 resource based on the IP address using supported IAM global condition keys. The Amazon S3 resource is accessed in the worker portal using a Amazon S3 presigned URL. see Worker Access Configuration details below.
  /// [workforceName] The name of the workforce.
  /// [workteamName] The name of the Workteam (must be unique).
  const WorkteamState({
    this.arn,
    this.description,
    this.memberDefinitions,
    this.notificationConfiguration,
    this.region,
    this.subdomain,
    this.tags,
    this.tagsAll,
    this.workerAccessConfiguration,
    this.workforceName,
    this.workteamName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'memberDefinitions': ?pulumi.Input.mapOptionalInputValue<List<WorkteamMemberDefinition>, List<Map<String, dynamic>>>(memberDefinitions, (value) => pulumi.Input.encodeList<WorkteamMemberDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notificationConfiguration': ?pulumi.Input.mapOptionalInputValue<WorkteamNotificationConfiguration, Map<String, dynamic>>(notificationConfiguration, (value) => value.toMap()),
      'region': ?region,
      'subdomain': ?subdomain,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'workerAccessConfiguration': ?pulumi.Input.mapOptionalInputValue<WorkteamWorkerAccessConfiguration, Map<String, dynamic>>(workerAccessConfiguration, (value) => value.toMap()),
      'workforceName': ?workforceName,
      'workteamName': ?workteamName,
    };
  }

  factory WorkteamState.fromMap(Map<String, dynamic> map) {
    return WorkteamState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memberDefinitions: (() { final guardedValue = map['memberDefinitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkteamMemberDefinition>(guardedValue, (value) => WorkteamMemberDefinition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      notificationConfiguration: (() { final guardedValue = map['notificationConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkteamNotificationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subdomain: (() { final guardedValue = map['subdomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      workerAccessConfiguration: (() { final guardedValue = map['workerAccessConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkteamWorkerAccessConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workforceName: (() { final guardedValue = map['workforceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workteamName: (() { final guardedValue = map['workteamName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


import 'package:pulumi/pulumi.dart';
import '../workteam_member_definition/workteam_member_definition.dart';
import '../workteam_notification_configuration/workteam_notification_configuration.dart';
import '../workteam_worker_access_configuration/workteam_worker_access_configuration.dart';
import 'workteam_args.dart';

/// Provides a SageMaker AI Workteam resource.
///
/// ## Example Usage
///
/// ### Cognito Usage
///
///
///
/// ### Oidc Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Workteams using the `workteam_name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/workteam:Workteam example example
/// ```
class Workteam extends CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this Workteam.
  late final Output<String> arn;

  /// A description of the work team.
  late final Output<String> description;

  /// A list of Member Definitions that contains objects that identify the workers that make up the work team. Workforces can be created using Amazon Cognito or your own OIDC Identity Provider (IdP). For private workforces created using Amazon Cognito use `cognito_member_definition`. For workforces created using your own OIDC identity provider (IdP) use `oidc_member_definition`. Do not provide input for both of these parameters in a single request. see Member Definition details below.
  late final Output<List<WorkteamMemberDefinition>> memberDefinitions;

  /// Configures notification of workers regarding available or expiring work items. see Notification Configuration details below.
  late final Output<WorkteamNotificationConfiguration?>
      notificationConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The subdomain for your OIDC Identity Provider.
  late final Output<String> subdomain;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Use this optional parameter to constrain access to an Amazon S3 resource based on the IP address using supported IAM global condition keys. The Amazon S3 resource is accessed in the worker portal using a Amazon S3 presigned URL. see Worker Access Configuration details below.
  late final Output<WorkteamWorkerAccessConfiguration>
      workerAccessConfiguration;

  /// The name of the workforce.
  late final Output<String?> workforceName;

  /// The name of the Workteam (must be unique).
  late final Output<String> workteamName;

  Workteam(
    String name, {
    WorkteamArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/workteam:Workteam',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String>('description');
    this.memberDefinitions =
        registerOutput<List<WorkteamMemberDefinition>>('memberDefinitions');
    this.notificationConfiguration =
        registerOutput<WorkteamNotificationConfiguration?>(
            'notificationConfiguration');
    this.region = registerOutput<String>('region');
    this.subdomain = registerOutput<String>('subdomain');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.workerAccessConfiguration =
        registerOutput<WorkteamWorkerAccessConfiguration>(
            'workerAccessConfiguration');
    this.workforceName = registerOutput<String?>('workforceName');
    this.workteamName = registerOutput<String>('workteamName');
  }
}

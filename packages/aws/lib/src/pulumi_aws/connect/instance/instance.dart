import 'package:pulumi/pulumi.dart';
import 'instance_args.dart';

/// Provides an Amazon Connect instance resource. For more information see
/// [Amazon Connect: Getting Started](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-get-started.html)
///
/// !> **WARN:** Amazon Connect enforces a limit of [100 combined instance creation and deletions every 30 days](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#feature-limits). For example, if you create 80 instances and delete 20 of them, you must wait 30 days to create or delete another instance. Use care when creating or deleting instances.
///
/// ## Example Usage
///
///
///
///
/// ### With Existing Active Directory
///
///
///
///
/// ### With SAML
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - (String) ID of the connect instance.
///
/// #### Optional
///
/// - `account_id` (String) AWS Account where this resource is managed.
/// - `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Connect instances using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:connect/instance:Instance example f1288a1f-6193-445a-b47e-af739b2
/// ```
class Instance extends CustomResource {
  /// Amazon Resource Name (ARN) of the instance.
  late final Output<String> arn;

  /// Specifies whether auto resolve best voices is enabled. Defaults to `true`.
  late final Output<bool?> autoResolveBestVoicesEnabled;

  /// Specifies whether contact flow logs are enabled. Defaults to `false`.
  late final Output<bool?> contactFlowLogsEnabled;

  /// Specifies whether contact lens is enabled. Defaults to `true`.
  late final Output<bool?> contactLensEnabled;

  /// When the instance was created.
  late final Output<String> createdTime;

  /// The identifier for the directory if identity_management_type is `EXISTING_DIRECTORY`.
  late final Output<String?> directoryId;

  /// Specifies whether early media for outbound calls is enabled . Defaults to `true` if outbound calls is enabled.
  late final Output<bool?> earlyMediaEnabled;

  /// Specifies the identity management type attached to the instance. Allowed Values are: `SAML`, `CONNECT_MANAGED`, `EXISTING_DIRECTORY`.
  late final Output<String> identityManagementType;

  /// Specifies whether inbound calls are enabled.
  late final Output<bool> inboundCallsEnabled;

  /// Specifies the name of the instance. Required if `directory_id` not specified.
  late final Output<String?> instanceAlias;

  /// Specifies whether multi-party calls/conference is enabled. Defaults to `false`.
  late final Output<bool?> multiPartyConferenceEnabled;

  /// Specifies whether outbound calls are enabled.
  late final Output<bool> outboundCallsEnabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The service role of the instance.
  late final Output<String> serviceRole;

  /// The state of the instance.
  late final Output<String> status;

  /// Tags to apply to the Instance. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// <!-- * `use_custom_tts_voices` - (Optional) Whether use custom tts voices is enabled. Defaults to `false` -->
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Instance(
    String name, {
    InstanceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:connect/instance:Instance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.autoResolveBestVoicesEnabled =
        registerOutput<bool?>('autoResolveBestVoicesEnabled');
    this.contactFlowLogsEnabled =
        registerOutput<bool?>('contactFlowLogsEnabled');
    this.contactLensEnabled = registerOutput<bool?>('contactLensEnabled');
    this.createdTime = registerOutput<String>('createdTime');
    this.directoryId = registerOutput<String?>('directoryId');
    this.earlyMediaEnabled = registerOutput<bool?>('earlyMediaEnabled');
    this.identityManagementType =
        registerOutput<String>('identityManagementType');
    this.inboundCallsEnabled = registerOutput<bool>('inboundCallsEnabled');
    this.instanceAlias = registerOutput<String?>('instanceAlias');
    this.multiPartyConferenceEnabled =
        registerOutput<bool?>('multiPartyConferenceEnabled');
    this.outboundCallsEnabled = registerOutput<bool>('outboundCallsEnabled');
    this.region = registerOutput<String>('region');
    this.serviceRole = registerOutput<String>('serviceRole');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}

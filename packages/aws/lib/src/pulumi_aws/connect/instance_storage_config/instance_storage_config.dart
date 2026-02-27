import 'package:pulumi/pulumi.dart';
import '../instance_storage_config_storage_config/instance_storage_config_storage_config.dart';
import 'instance_storage_config_args.dart';

/// Provides an Amazon Connect Instance Storage Config resource. For more information see
/// [Amazon Connect: Getting Started](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-get-started.html)
///
/// ## Example Usage
///
/// ### Storage Config Kinesis Firehose Config
///
///
///
/// ### Storage Config Kinesis Stream Config
///
///
///
/// ### Storage Config Kinesis Video Stream Config
///
///
///
/// ### Storage Config S3 Config
///
///
///
/// ### Storage Config S3 Config with Encryption Config
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Amazon Connect Instance Storage Configs using the `instance_id`, `association_id`, and `resource_type` separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:connect/instanceStorageConfig:InstanceStorageConfig example f1288a1f-6193-445a-b47e-af739b2:c1d4e5f6-1b3c-1b3c-1b3c-c1d4e5f6c1d4e5:CHAT_TRANSCRIPTS
/// ```
class InstanceStorageConfig extends CustomResource {
  /// The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.
  late final Output<String> associationId;

  /// Specifies the identifier of the hosting Amazon Connect Instance.
  late final Output<String> instanceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A valid resource type. Valid Values: `AGENT_EVENTS` | `ATTACHMENTS` | `CALL_RECORDINGS` | `CHAT_TRANSCRIPTS` | `CONTACT_EVALUATIONS` | `CONTACT_TRACE_RECORDS` | `EMAIL_MESSAGES` | `MEDIA_STREAMS` | `REAL_TIME_CONTACT_ANALYSIS_CHAT_SEGMENTS` | `REAL_TIME_CONTACT_ANALYSIS_SEGMENTS` | `REAL_TIME_CONTACT_ANALYSIS_VOICE_SEGMENTS` | `SCHEDULED_REPORTS` | `SCREEN_RECORDINGS`.
  late final Output<String> resourceType;

  /// Specifies the storage configuration options for the Connect Instance. Documented below.
  late final Output<InstanceStorageConfigStorageConfig> storageConfig;

  InstanceStorageConfig(
    String name, {
    InstanceStorageConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:connect/instanceStorageConfig:InstanceStorageConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.associationId = registerOutput<String>('associationId');
    this.instanceId = registerOutput<String>('instanceId');
    this.region = registerOutput<String>('region');
    this.resourceType = registerOutput<String>('resourceType');
    this.storageConfig =
        registerOutput<InstanceStorageConfigStorageConfig>('storageConfig');
  }
}

import 'package:pulumi/pulumi.dart';
import 'envgroup_attachment_args.dart';

/// Creates a new attachment of an environment to an environment group.
class EnvgroupAttachment extends CustomResource {
  /// The time at which the environment group attachment was created as milliseconds since epoch.
  late final Output<String> createdAt;
  late final Output<String> envgroupId;

  /// ID of the attached environment.
  late final Output<String> environment;

  /// ID of the environment group.
  late final Output<String> environmentGroupId;

  /// ID of the environment group attachment.
  late final Output<String> name;
  late final Output<String> organizationId;

  EnvgroupAttachment(
    String name, {
    EnvgroupAttachmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:EnvgroupAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createdAt = Output.createUnknown<String>();
    this.envgroupId = Output.createUnknown<String>();
    this.environment = Output.createUnknown<String>();
    this.environmentGroupId = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.organizationId = Output.createUnknown<String>();
  }
}

import 'package:pulumi/pulumi.dart' hide Config;
import 'instance_attachment_args.dart';

/// Creates a new attachment of an environment to an instance. **Note:** Not supported for Apigee hybrid.
/// Auto-naming is currently not supported for this resource.
class InstanceAttachment extends CustomResource {
  /// Time the attachment was created in milliseconds since epoch.
  late final Output<String> createdAt;

  /// ID of the attached environment.
  late final Output<String> environment;
  late final Output<String> instanceId;

  /// ID of the attachment.
  late final Output<String> name;
  late final Output<String> organizationId;

  InstanceAttachment(
    String name, {
    InstanceAttachmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:InstanceAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createdAt = registerOutput<String>('createdAt');
    this.environment = registerOutput<String>('environment');
    this.instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    this.organizationId = registerOutput<String>('organizationId');
  }
}

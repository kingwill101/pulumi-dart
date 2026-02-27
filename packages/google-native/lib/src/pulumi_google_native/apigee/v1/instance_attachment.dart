import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_attachment_args.dart';

/// Creates a new attachment of an environment to an instance. **Note:** Not supported for Apigee hybrid.
/// Auto-naming is currently not supported for this resource.
class InstanceAttachment extends pulumi.CustomResource {
  /// Time the attachment was created in milliseconds since epoch.
  late final pulumi.Output<String> createdAt;

  /// ID of the attached environment.
  late final pulumi.Output<String> environment;
  late final pulumi.Output<String> instanceId;

  /// ID of the attachment.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;

  InstanceAttachment(
    String name, {
    InstanceAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:InstanceAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createdAt = registerOutput<String>('createdAt');
    this.environment = registerOutput<String>('environment');
    this.instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    this.organizationId = registerOutput<String>('organizationId');
  }
}

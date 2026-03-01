import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_pair_attachment_args.dart';

/// > **DEPRECATED:** This resource has been renamed to alicloud.ecs.EcsKeyPairAttachment from version 1.121.0.
///
/// Provides a key pair attachment resource to bind key pair for several ECS instances.
///
/// > **NOTE:** After the key pair is attached with sone instances, there instances must be rebooted to make the key pair affect.
class KeyPairAttachment extends pulumi.CustomResource {
  /// Set it to true and it will reboot instances which attached with the key pair to make key pair affect immediately.
  late final pulumi.Output<bool?> force;
  /// The list of ECS instance's IDs.
  late final pulumi.Output<List<String>> instanceIds;
  /// The name of key pair used to bind.
  late final pulumi.Output<String> keyName;
  late final pulumi.Output<String> keyPairName;

  /// Creates a new [KeyPairAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KeyPairAttachment]. {@macro pulumi_ecs_key_pair_attachment_key_pair_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KeyPairAttachment(
    String name, {
    KeyPairAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/keyPairAttachment:KeyPairAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.force = registerOutput<bool?>('force');
    this.instanceIds = registerOutput<List<String>>('instanceIds');
    this.keyName = registerOutput<String>('keyName');
    this.keyPairName = registerOutput<String>('keyPairName');
  }
}

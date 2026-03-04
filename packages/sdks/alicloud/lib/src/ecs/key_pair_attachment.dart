import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_pair_attachment_args.dart';
import 'key_pair_attachment_state.dart';

/// &gt; **DEPRECATED:** This resource has been renamed to alicloud.ecs.EcsKeyPairAttachment from version 1.121.0.
///
/// Provides a key pair attachment resource to bind key pair for several ECS instances.
///
/// &gt; **NOTE:** After the key pair is attached with sone instances, there instances must be rebooted to make the key pair affect.
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
    force = registerOutput<bool?>('force');
    instanceIds = registerOutput<List<String>>('instanceIds');
    keyName = registerOutput<String>('keyName');
    keyPairName = registerOutput<String>('keyPairName');
  }

  /// Gets an existing [KeyPairAttachment] resource's state with the given [name] and [id].
  static KeyPairAttachment get(
    String name,
    pulumi.Input<String> id, {
    KeyPairAttachmentState? state,
  }) {
    return KeyPairAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  KeyPairAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ecs/keyPairAttachment:KeyPairAttachment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    force = registerOutput<bool?>('force');
    instanceIds = registerOutput<List<String>>('instanceIds');
    keyName = registerOutput<String>('keyName');
    keyPairName = registerOutput<String>('keyPairName');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_ring_args.dart';

/// Create a new KeyRing in a given Project and Location.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class KeyRing extends pulumi.CustomResource {
  /// The time at which this KeyRing was created.
  late final pulumi.Output<String> createTime;

  /// Required. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  late final pulumi.Output<String> keyRingId;
  late final pulumi.Output<String> location;

  /// The resource name for the KeyRing in the format `projects/*/locations/*/keyRings/*`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Creates a new [KeyRing].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KeyRing]. {@macro pulumi_cloudkms_v1_key_ring_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KeyRing(
    String name, {
    KeyRingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:cloudkms/v1:KeyRing',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.keyRingId = registerOutput<String>('keyRingId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}

import 'package:pulumi/pulumi.dart' hide Config;
import 'key_ring_args.dart';

/// Create a new KeyRing in a given Project and Location.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class KeyRing extends CustomResource {
  /// The time at which this KeyRing was created.
  late final Output<String> createTime;

  /// Required. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  late final Output<String> keyRingId;
  late final Output<String> location;

  /// The resource name for the KeyRing in the format `projects/*/locations/*/keyRings/*`.
  late final Output<String> name;
  late final Output<String> project;

  KeyRing(
    String name, {
    KeyRingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:cloudkms/v1:KeyRing',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.keyRingId = registerOutput<String>('keyRingId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}

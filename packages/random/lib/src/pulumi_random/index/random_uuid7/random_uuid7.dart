import 'package:pulumi/pulumi.dart';
import 'random_uuid7_args.dart';

/// The resource `random.RandomUuid7` generates a random version 7 uuid string that is intended to be used as a unique identifier for other resources.
///
/// This resource uses [google/uuid](https://github.com/google/uuid) to generate a valid V7 UUID for use with services needing a unique string identifier.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// The `pulumi import` command can be used, for example:
///
/// Random UUID's can be imported. This can be used to replace a config
///
/// value with a value interpolated from the random provider without
///
/// experiencing diffs.
///
/// ```sh
/// $ pulumi import random:index/randomUuid7:RandomUuid7 main 0197ad85-fe6e-7e92-a2f5-7550daa83030
/// ```
class RandomUuid7 extends CustomResource {
  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  late final Output<Map<String, String>?> keepers;

  /// The generated uuid presented in string format.
  late final Output<String> result;

  RandomUuid7(
    String name, {
    RandomUuid7Args? args,
    CustomResourceOptions? options,
  }) : super(
          'random:index/randomUuid7:RandomUuid7',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.keepers = registerOutput<Map<String, String>?>('keepers');
    this.result = registerOutput<String>('result');
  }
}

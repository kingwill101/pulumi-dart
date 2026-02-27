import 'package:pulumi/pulumi.dart' as pulumi;
import 'random_uuid_args.dart';

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
/// $ pulumi import random:index/randomUuid:RandomUuid main aabbccdd-eeff-0011-2233-445566778899
/// ```
class RandomUuid extends pulumi.CustomResource {
  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  late final pulumi.Output<Map<String, String>?> keepers;

  /// The generated uuid presented in string format.
  late final pulumi.Output<String> result;

  RandomUuid(
    String name, {
    RandomUuidArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'random:index/randomUuid:RandomUuid',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.keepers = registerOutput<Map<String, String>?>('keepers');
    this.result = registerOutput<String>('result');
  }
}

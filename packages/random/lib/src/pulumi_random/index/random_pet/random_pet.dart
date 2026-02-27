import 'package:pulumi/pulumi.dart';
import 'random_pet_args.dart';

/// The resource `random.RandomPet` generates random pet names that are intended to be used as unique identifiers for other resources.
///
/// This resource can be used in conjunction with resources that have the `create_before_destroy` lifecycle flag set, to avoid conflicts with unique names during the brief period where both the old and new resources exist concurrently.
class RandomPet extends CustomResource {
  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  late final Output<Map<String, String>?> keepers;

  /// The length (in words) of the pet name. Defaults to 2
  late final Output<int> length;

  /// A string to prefix the name with.
  late final Output<String?> prefix;

  /// The character to separate words in the pet name. Defaults to "-"
  late final Output<String> separator;

  RandomPet(
    String name, {
    RandomPetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'random:index/randomPet:RandomPet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.keepers = registerOutput<Map<String, String>?>('keepers');
    this.length = registerOutput<int>('length');
    this.prefix = registerOutput<String?>('prefix');
    this.separator = registerOutput<String>('separator');
  }
}

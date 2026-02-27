// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for RandomPet.
class RandomPetArgs {
  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  final pulumi.Input<Map<String, String>>? keepers;

  /// The length (in words) of the pet name. Defaults to 2
  final pulumi.Input<int>? length;

  /// A string to prefix the name with.
  final pulumi.Input<String>? prefix;

  /// The character to separate words in the pet name. Defaults to "-"
  final pulumi.Input<String>? separator;

  RandomPetArgs({
    this.keepers,
    this.length,
    this.prefix,
    this.separator,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keepersValue = keepers;
    if (keepersValue != null) {
      map['keepers'] = keepersValue;
    }
    final lengthValue = length;
    if (lengthValue != null) {
      map['length'] = lengthValue;
    }
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    final separatorValue = separator;
    if (separatorValue != null) {
      map['separator'] = separatorValue;
    }
    return map;
  }

  factory RandomPetArgs.fromMap(Map<String, dynamic> map) {
    return RandomPetArgs(
      keepers:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['keepers']),
      length: pulumi.Input.asOptionalInput<int>(map['length']),
      prefix: pulumi.Input.asOptionalInput<String>(map['prefix']),
      separator: pulumi.Input.asOptionalInput<String>(map['separator']),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RecorderStatus.
class RecorderStatusArgs {
  /// Whether the configuration recorder should be enabled or disabled.
  final Input<bool> isEnabled;

  /// The name of the recorder
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  RecorderStatusArgs({
    required this.isEnabled,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['isEnabled'] = isEnabled;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory RecorderStatusArgs.fromMap(Map<String, dynamic> map) {
    return RecorderStatusArgs(
      isEnabled: Input.asInput<bool>(map['isEnabled']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}

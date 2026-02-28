// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_medialive_get_input_get_input_args_doc}
/// Arguments for getInput.
/// {@endtemplate}
/// {@macro pulumi_medialive_get_input_get_input_args_doc}
class GetInputArgs {
  /// The ID of the Input.
  final pulumi.Input<String> id;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetInputArgs].
  /// [id] The ID of the Input.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetInputArgs({
    required String id,
    String? region,
  })  : id = pulumi.Input.asInput<String>(id),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetInputArgs.fromMap(Map<String, dynamic> map) {
    return GetInputArgs(
      id: map['id'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

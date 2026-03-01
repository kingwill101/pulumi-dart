// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudwatch_get_event_connection_get_event_connection_args_doc}
/// Arguments for getEventConnection.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_get_event_connection_get_event_connection_args_doc}
class GetEventConnectionArgs {
  /// Name of the connection.
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetEventConnectionArgs].
  /// [name] Name of the connection.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetEventConnectionArgs({required String name, String? region})
    : name = pulumi.Input.asInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'region': ?region};
  }

  factory GetEventConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetEventConnectionArgs(
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

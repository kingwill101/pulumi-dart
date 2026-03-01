// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_uptime_check_uptime_check_args_doc}
/// The set of arguments for UptimeCheck.
/// {@endtemplate}
/// {@macro pulumi_index_uptime_check_uptime_check_args_doc}
class UptimeCheckArgs {
  /// A boolean value indicating whether the check is enabled/disabled.
  final pulumi.Input<bool>? enabled;
  /// A human-friendly display name for the check.
  final pulumi.Input<String>? name;
  /// An array containing the selected regions to perform healthchecks from: "us_east", "us_west", "eu_west", "se_asia"
  final pulumi.Input<List<String>>? regions;
  /// The endpoint to perform healthchecks on.
  final pulumi.Input<String> target;
  /// The type of health check to perform: 'ping' 'http' 'https'.
  final pulumi.Input<String>? type;

  /// Creates a new [UptimeCheckArgs].
  /// [enabled] A boolean value indicating whether the check is enabled/disabled.
  /// [name] A human-friendly display name for the check.
  /// [regions] An array containing the selected regions to perform healthchecks from: "us_east", "us_west", "eu_west", "se_asia"
  /// [target] The endpoint to perform healthchecks on.
  /// [type] The type of health check to perform: 'ping' 'http' 'https'.
  UptimeCheckArgs({
    bool? enabled,
    String? name,
    List<String>? regions,
    required String target,
    String? type,
  }) :
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      regions = pulumi.Input.asOptionalInput<List<String>>(regions),
      target = pulumi.Input.asInput<String>(target),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'name': ?name,
      'regions': ?regions,
      'target': target,
      'type': ?type,
    };
  }

  factory UptimeCheckArgs.fromMap(Map<String, dynamic> map) {
    return UptimeCheckArgs(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      regions: map['regions'] == null ? null : (map['regions'] as List).cast<String>(),
      target: map['target'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}


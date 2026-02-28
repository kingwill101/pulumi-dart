// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudwatch_get_event_source_get_event_source_args_doc}
/// Arguments for getEventSource.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_get_event_source_get_event_source_args_doc}
class GetEventSourceArgs {
  /// Specifying this limits the results to only those partner event sources with names that start with the specified prefix
  final pulumi.Input<String>? namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetEventSourceArgs].
  /// [namePrefix] Specifying this limits the results to only those partner event sources with names that start with the specified prefix
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetEventSourceArgs({
    String? namePrefix,
    String? region,
  })  : namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetEventSourceArgs.fromMap(Map<String, dynamic> map) {
    return GetEventSourceArgs(
      namePrefix:
          map['namePrefix'] == null ? null : map['namePrefix'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

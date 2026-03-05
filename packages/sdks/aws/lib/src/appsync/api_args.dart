// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_event_config.dart';

/// {@template pulumi_appsync_api_api_args_doc}
/// The set of arguments for Api.
/// {@endtemplate}
/// {@macro pulumi_appsync_api_api_args_doc}
class ApiArgs {
  /// Configuration for the Event API. See Event Config below.
  final pulumi.Input<ApiEventConfig> eventConfig;
  /// Name of the Event API.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Contact information for the owner of the Event API.
  final pulumi.Input<String>? ownerContact;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ApiArgs].
  /// [eventConfig] Configuration for the Event API. See Event Config below.
  /// [name] Name of the Event API.
  /// [ownerContact] Contact information for the owner of the Event API.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ApiArgs({
    required this.eventConfig,
    this.name,
    this.ownerContact,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventConfig': pulumi.Input.mapInputValue<ApiEventConfig, Map<String, dynamic>>(eventConfig, (value) => value.toMap()),
      'name': ?name,
      'ownerContact': ?ownerContact,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory ApiArgs.fromMap(Map<String, dynamic> map) {
    return ApiArgs(
      eventConfig: pulumi.Input.fromValue(ApiEventConfig.fromMap((map['eventConfig']! as Map).cast<String, dynamic>())),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerContact: (() { final guardedValue = map['ownerContact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}


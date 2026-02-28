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
    required ApiEventConfig eventConfig,
    String? name,
    String? ownerContact,
    String? region,
    Map<String, String>? tags,
  }) :
      eventConfig = pulumi.Input.asInput<ApiEventConfig>(eventConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      ownerContact = pulumi.Input.asOptionalInput<String>(ownerContact),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      eventConfig: ApiEventConfig.fromMap((map['eventConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      ownerContact: map['ownerContact'] == null ? null : map['ownerContact'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}


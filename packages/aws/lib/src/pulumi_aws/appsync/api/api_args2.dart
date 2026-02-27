// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../api_event_config/api_event_config.dart';

/// The set of arguments for Api.
class ApiArgs2 {
  /// Configuration for the Event API. See Event Config below.
  final Input<ApiEventConfig> eventConfig;

  /// Name of the Event API.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Contact information for the owner of the Event API.
  final Input<String>? ownerContact;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  ApiArgs2({
    required this.eventConfig,
    this.name,
    this.ownerContact,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['eventConfig'] =
        Input.mapInputValue<ApiEventConfig, Map<String, dynamic>>(
            eventConfig, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final ownerContactValue = ownerContact;
    if (ownerContactValue != null) {
      map['ownerContact'] = ownerContactValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ApiArgs2.fromMap(Map<String, dynamic> map) {
    return ApiArgs2(
      eventConfig: Input.asInput<ApiEventConfig>(map['eventConfig']),
      name: Input.asOptionalInput<String>(map['name']),
      ownerContact: Input.asOptionalInput<String>(map['ownerContact']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for PermissionSet.
class PermissionSetArgs {
  /// The description of the Permission Set.
  final Input<String>? description;

  /// The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  final Input<String> instanceArn;

  /// The name of the Permission Set.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The relay state URL used to redirect users within the application during the federation authentication process.
  final Input<String>? relayState;

  /// The length of time that the application user sessions are valid in the ISO-8601 standard. Default: `PT1H`.
  final Input<String>? sessionDuration;

  /// Key-value map of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  PermissionSetArgs({
    this.description,
    required this.instanceArn,
    this.name,
    this.region,
    this.relayState,
    this.sessionDuration,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['instanceArn'] = instanceArn;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final relayStateValue = relayState;
    if (relayStateValue != null) {
      map['relayState'] = relayStateValue;
    }
    final sessionDurationValue = sessionDuration;
    if (sessionDurationValue != null) {
      map['sessionDuration'] = sessionDurationValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory PermissionSetArgs.fromMap(Map<String, dynamic> map) {
    return PermissionSetArgs(
      description: Input.asOptionalInput<String>(map['description']),
      instanceArn: Input.asInput<String>(map['instanceArn']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      relayState: Input.asOptionalInput<String>(map['relayState']),
      sessionDuration: Input.asOptionalInput<String>(map['sessionDuration']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}

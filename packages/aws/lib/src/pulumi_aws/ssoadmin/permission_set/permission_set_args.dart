// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for PermissionSet.
class PermissionSetArgs {
  /// The description of the Permission Set.
  final pulumi.Input<String>? description;

  /// The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  final pulumi.Input<String> instanceArn;

  /// The name of the Permission Set.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The relay state URL used to redirect users within the application during the federation authentication process.
  final pulumi.Input<String>? relayState;

  /// The length of time that the application user sessions are valid in the ISO-8601 standard. Default: `PT1H`.
  final pulumi.Input<String>? sessionDuration;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

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
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      instanceArn: pulumi.Input.asInput<String>(map['instanceArn']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      relayState: pulumi.Input.asOptionalInput<String>(map['relayState']),
      sessionDuration:
          pulumi.Input.asOptionalInput<String>(map['sessionDuration']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}

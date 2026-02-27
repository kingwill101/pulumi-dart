// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRoutingProfile.
class GetRoutingProfileArgs {
  /// Reference to the hosting Amazon Connect Instance
  final pulumi.Input<String> instanceId;

  /// Returns information on a specific Routing Profile by name
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Returns information on a specific Routing Profile by Routing Profile id
  ///
  /// > **NOTE:** `instance_id` and one of either `name` or `routing_profile_id` is required.
  final pulumi.Input<String>? routingProfileId;

  /// Map of tags to assign to the Routing Profile.
  final pulumi.Input<Map<String, String>>? tags;

  GetRoutingProfileArgs({
    required this.instanceId,
    this.name,
    this.region,
    this.routingProfileId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceId'] = instanceId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final routingProfileIdValue = routingProfileId;
    if (routingProfileIdValue != null) {
      map['routingProfileId'] = routingProfileIdValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetRoutingProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetRoutingProfileArgs(
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      routingProfileId:
          pulumi.Input.asOptionalInput<String>(map['routingProfileId']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRoutingProfile.
class GetRoutingProfileArgs {
  /// Reference to the hosting Amazon Connect Instance
  final Input<String> instanceId;

  /// Returns information on a specific Routing Profile by name
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Returns information on a specific Routing Profile by Routing Profile id
  ///
  /// > **NOTE:** <span pulumi-lang-nodejs="`instanceId`" pulumi-lang-dotnet="`InstanceId`" pulumi-lang-go="`instanceId`" pulumi-lang-python="`instance_id`" pulumi-lang-yaml="`instanceId`" pulumi-lang-java="`instanceId`">`instance_id`</span> and one of either <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> or <span pulumi-lang-nodejs="`routingProfileId`" pulumi-lang-dotnet="`RoutingProfileId`" pulumi-lang-go="`routingProfileId`" pulumi-lang-python="`routing_profile_id`" pulumi-lang-yaml="`routingProfileId`" pulumi-lang-java="`routingProfileId`">`routing_profile_id`</span> is required.
  final Input<String>? routingProfileId;

  /// Map of tags to assign to the Routing Profile.
  final Input<Map<String, String>>? tags;

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
      instanceId: Input.asInput<String>(map['instanceId']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      routingProfileId: Input.asOptionalInput<String>(map['routingProfileId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}

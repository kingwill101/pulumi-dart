// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connect_get_routing_profile_get_routing_profile_args_doc}
/// Arguments for getRoutingProfile.
/// {@endtemplate}
/// {@macro pulumi_connect_get_routing_profile_get_routing_profile_args_doc}
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

  /// Creates a new [GetRoutingProfileArgs].
  /// [instanceId] Reference to the hosting Amazon Connect Instance
  /// [name] Returns information on a specific Routing Profile by name
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routingProfileId] Returns information on a specific Routing Profile by Routing Profile id
  /// [tags] Map of tags to assign to the Routing Profile.
  GetRoutingProfileArgs({
    required String instanceId,
    String? name,
    String? region,
    String? routingProfileId,
    Map<String, String>? tags,
  }) :
      instanceId = pulumi.Input.asInput<String>(instanceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      routingProfileId = pulumi.Input.asOptionalInput<String>(routingProfileId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'name': ?name,
      'region': ?region,
      'routingProfileId': ?routingProfileId,
      'tags': ?tags,
    };
  }

  factory GetRoutingProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetRoutingProfileArgs(
      instanceId: map['instanceId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      routingProfileId: map['routingProfileId'] == null ? null : map['routingProfileId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}


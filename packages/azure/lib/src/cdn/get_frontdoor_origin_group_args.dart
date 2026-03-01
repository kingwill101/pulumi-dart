// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_frontdoor_origin_group_get_frontdoor_origin_group_args_doc}
/// Arguments for getFrontdoorOriginGroup.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_frontdoor_origin_group_get_frontdoor_origin_group_args_doc}
class GetFrontdoorOriginGroupArgs {
  /// Specifies the name of the Front Door Origin Group.
  final pulumi.Input<String> name;
  /// The name of the Front Door Profile within which Front Door Origin Group exists.
  final pulumi.Input<String> profileName;
  /// The name of the Resource Group where the Front Door Profile exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFrontdoorOriginGroupArgs].
  /// [name] Specifies the name of the Front Door Origin Group.
  /// [profileName] The name of the Front Door Profile within which Front Door Origin Group exists.
  /// [resourceGroupName] The name of the Resource Group where the Front Door Profile exists.
  GetFrontdoorOriginGroupArgs({
    required String name,
    required String profileName,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      profileName = pulumi.Input.asInput<String>(profileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFrontdoorOriginGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorOriginGroupArgs(
      name: map['name'] as String,
      profileName: map['profileName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}


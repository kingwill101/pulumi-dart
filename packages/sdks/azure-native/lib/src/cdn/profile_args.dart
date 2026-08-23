// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity.dart';
import 'profile_log_scrubbing.dart';
import 'sku.dart';

/// {@template pulumi_cdn_profile_args_doc}
/// The set of arguments for Profile.
/// {@endtemplate}
/// {@macro pulumi_cdn_profile_args_doc}
class ProfileArgs {
  /// The managed service identities assigned to this resource.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Defines rules that scrub sensitive fields in the Azure Front Door profile logs.
  final pulumi.Input<ProfileLogScrubbing>? logScrubbing;
  /// Send and receive timeout on forwarding request to the origin. When timeout is reached, the request fails and returns.
  final pulumi.Input<int>? originResponseTimeoutSeconds;
  /// Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  final pulumi.Input<String>? profileName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The pricing tier (defines Azure Front Door Standard or Premium or a CDN provider, feature list and rate) of the profile.
  final pulumi.Input<Sku> sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ProfileArgs].
  /// [identity] The managed service identities assigned to this resource.
  /// [location] The geo-location where the resource lives
  /// [logScrubbing] Defines rules that scrub sensitive fields in the Azure Front Door profile logs.
  /// [originResponseTimeoutSeconds] Send and receive timeout on forwarding request to the origin. When timeout is reached, the request fails and returns.
  /// [profileName] Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The pricing tier (defines Azure Front Door Standard or Premium or a CDN provider, feature list and rate) of the profile.
  /// [tags] Resource tags.
  const ProfileArgs({
    this.identity,
    this.location,
    this.logScrubbing,
    this.originResponseTimeoutSeconds,
    this.profileName,
    required this.resourceGroupName,
    required this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'logScrubbing': ?pulumi.Input.mapOptionalInputValue<ProfileLogScrubbing, Map<String, dynamic>>(logScrubbing, (value) => value.toMap()),
      'originResponseTimeoutSeconds': ?originResponseTimeoutSeconds,
      'profileName': ?profileName,
      'resourceGroupName': resourceGroupName,
      'sku': pulumi.Input.mapInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ProfileArgs.fromMap(Map<String, dynamic> map) {
    return ProfileArgs(
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logScrubbing: (() { final guardedValue = map['logScrubbing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProfileLogScrubbing.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      originResponseTimeoutSeconds: (() { final guardedValue = map['originResponseTimeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      profileName: (() { final guardedValue = map['profileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: pulumi.Input.fromValue(Sku.fromMap((map['sku']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

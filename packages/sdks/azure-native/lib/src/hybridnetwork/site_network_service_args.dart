// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity.dart';
import 'site_network_service_properties_format.dart';
import 'sku.dart';

/// {@template pulumi_hybridnetwork_site_network_service_args_doc}
/// The set of arguments for SiteNetworkService.
/// {@endtemplate}
/// {@macro pulumi_hybridnetwork_site_network_service_args_doc}
class SiteNetworkServiceArgs {
  /// The managed identity of the Site network service, if configured.
  final pulumi.Input<ManagedServiceIdentity>? identity;

  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;

  /// Site network service properties.
  final pulumi.Input<SiteNetworkServicePropertiesFormat>? properties;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the site network service.
  final pulumi.Input<String>? siteNetworkServiceName;

  /// Sku of the site network service.
  final pulumi.Input<Sku>? sku;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SiteNetworkServiceArgs].
  /// [identity] The managed identity of the Site network service, if configured.
  /// [location] The geo-location where the resource lives
  /// [properties] Site network service properties.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteNetworkServiceName] The name of the site network service.
  /// [sku] Sku of the site network service.
  /// [tags] Resource tags.
  SiteNetworkServiceArgs({
    this.identity,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.siteNetworkServiceName,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedServiceIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'location': ?location,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            SiteNetworkServicePropertiesFormat,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'siteNetworkServiceName': ?siteNetworkServiceName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(
        sku,
        (value) => value.toMap(),
      ),
      'tags': ?tags,
    };
  }

  factory SiteNetworkServiceArgs.fromMap(Map<String, dynamic> map) {
    return SiteNetworkServiceArgs(
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedServiceIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SiteNetworkServicePropertiesFormat.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      siteNetworkServiceName: (() {
        final guardedValue = map['siteNetworkServiceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Sku.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}

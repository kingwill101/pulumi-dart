// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_guard_proxy_base.dart';

/// {@template pulumi_recoveryservices_resource_guard_proxy_args_doc}
/// The set of arguments for ResourceGuardProxy.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_resource_guard_proxy_args_doc}
class ResourceGuardProxyArgs {
  /// Optional ETag.
  final pulumi.Input<String>? eTag;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// ResourceGuardProxyBaseResource properties
  final pulumi.Input<ResourceGuardProxyBase>? properties;
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<String>? resourceGuardProxyName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the recovery services vault.
  final pulumi.Input<String> vaultName;

  /// Creates a new [ResourceGuardProxyArgs].
  /// [eTag] Optional ETag.
  /// [location] Resource location.
  /// [properties] ResourceGuardProxyBaseResource properties
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [resourceGuardProxyName] Optional.
  /// [tags] Resource tags.
  /// [vaultName] The name of the recovery services vault.
  ResourceGuardProxyArgs({
    String? eTag,
    String? location,
    ResourceGuardProxyBase? properties,
    required String resourceGroupName,
    String? resourceGuardProxyName,
    Map<String, String>? tags,
    required String vaultName,
  }) :
      eTag = pulumi.Input.asOptionalInput<String>(eTag),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<ResourceGuardProxyBase>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceGuardProxyName = pulumi.Input.asOptionalInput<String>(resourceGuardProxyName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vaultName = pulumi.Input.asInput<String>(vaultName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eTag': ?eTag,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<ResourceGuardProxyBase, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceGuardProxyName': ?resourceGuardProxyName,
      'tags': ?tags,
      'vaultName': vaultName,
    };
  }

  factory ResourceGuardProxyArgs.fromMap(Map<String, dynamic> map) {
    return ResourceGuardProxyArgs(
      eTag: map['eTag'] == null ? null : map['eTag'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : ResourceGuardProxyBase.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      resourceGuardProxyName: map['resourceGuardProxyName'] == null ? null : map['resourceGuardProxyName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vaultName: map['vaultName'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_reference_properties.dart';

/// {@template pulumi_edge_site_reference_args_doc}
/// The set of arguments for SiteReference.
/// {@endtemplate}
/// {@macro pulumi_edge_site_reference_args_doc}
class SiteReferenceArgs {
  /// The name of the Context.
  final pulumi.Input<String> contextName;

  /// The resource-specific properties for this resource.
  final pulumi.Input<SiteReferenceProperties>? properties;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the SiteReference
  final pulumi.Input<String>? siteReferenceName;

  /// Creates a new [SiteReferenceArgs].
  /// [contextName] The name of the Context.
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteReferenceName] The name of the SiteReference
  SiteReferenceArgs({
    required this.contextName,
    this.properties,
    required this.resourceGroupName,
    this.siteReferenceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contextName': contextName,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            SiteReferenceProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'siteReferenceName': ?siteReferenceName,
    };
  }

  factory SiteReferenceArgs.fromMap(Map<String, dynamic> map) {
    return SiteReferenceArgs(
      contextName: pulumi.Input.fromValue(map['contextName'] as String),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SiteReferenceProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      siteReferenceName: (() {
        final guardedValue = map['siteReferenceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

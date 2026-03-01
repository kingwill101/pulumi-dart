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
    required pulumi.Output<String> contextName,
    pulumi.Output<SiteReferenceProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? siteReferenceName,
  }) :
      contextName = pulumi.Input.asInput<String>(contextName),
      properties = pulumi.Input.asOptionalInput<SiteReferenceProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      siteReferenceName = pulumi.Input.asOptionalInput<String>(siteReferenceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contextName': contextName,
      'properties': ?pulumi.Input.mapOptionalInputValue<SiteReferenceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'siteReferenceName': ?siteReferenceName,
    };
  }

  factory SiteReferenceArgs.fromMap(Map<String, dynamic> map) {
    return SiteReferenceArgs(
      contextName: pulumi.Output.create<String>(map['contextName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<SiteReferenceProperties>(SiteReferenceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      siteReferenceName: map['siteReferenceName'] == null ? null : pulumi.Output.create<String>(map['siteReferenceName'] as String),
    );
  }
}


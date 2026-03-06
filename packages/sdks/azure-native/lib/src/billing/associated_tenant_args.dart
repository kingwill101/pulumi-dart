// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'associated_tenant_properties.dart';

/// {@template pulumi_billing_associated_tenant_args_doc}
/// The set of arguments for AssociatedTenant.
/// {@endtemplate}
/// {@macro pulumi_billing_associated_tenant_args_doc}
class AssociatedTenantArgs {
  /// The ID that uniquely identifies a tenant.
  final pulumi.Input<String>? associatedTenantName;
  /// The ID that uniquely identifies a billing account.
  final pulumi.Input<String> billingAccountName;
  /// An associated tenant.
  final pulumi.Input<AssociatedTenantProperties>? properties;
  /// Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AssociatedTenantArgs].
  /// [associatedTenantName] The ID that uniquely identifies a tenant.
  /// [billingAccountName] The ID that uniquely identifies a billing account.
  /// [properties] An associated tenant.
  /// [tags] Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /
  const AssociatedTenantArgs({
    this.associatedTenantName,
    required this.billingAccountName,
    this.properties,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedTenantName': ?associatedTenantName,
      'billingAccountName': billingAccountName,
      'properties': ?pulumi.Input.mapOptionalInputValue<AssociatedTenantProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory AssociatedTenantArgs.fromMap(Map<String, dynamic> map) {
    return AssociatedTenantArgs(
      associatedTenantName: (() { final guardedValue = map['associatedTenantName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      billingAccountName: pulumi.Input.fromValue(map['billingAccountName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssociatedTenantProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}


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
  /// Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain < > % & \ ? /
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AssociatedTenantArgs].
  /// [associatedTenantName] The ID that uniquely identifies a tenant.
  /// [billingAccountName] The ID that uniquely identifies a billing account.
  /// [properties] An associated tenant.
  /// [tags] Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain < > % & \ ? /
  AssociatedTenantArgs({
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
      associatedTenantName: map['associatedTenantName'] == null ? null : (map['associatedTenantName'] as String).input(),
      billingAccountName: (map['billingAccountName'] as String).input(),
      properties: map['properties'] == null ? null : (AssociatedTenantProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}


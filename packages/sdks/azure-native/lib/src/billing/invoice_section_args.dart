// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'invoice_section_properties.dart';

/// {@template pulumi_billing_invoice_section_args_doc}
/// The set of arguments for InvoiceSection.
/// {@endtemplate}
/// {@macro pulumi_billing_invoice_section_args_doc}
class InvoiceSectionArgs {
  /// The ID that uniquely identifies a billing account.
  final pulumi.Input<String> billingAccountName;
  /// The ID that uniquely identifies a billing profile.
  final pulumi.Input<String> billingProfileName;
  /// The ID that uniquely identifies an invoice section.
  final pulumi.Input<String>? invoiceSectionName;
  /// An invoice section.
  final pulumi.Input<InvoiceSectionProperties>? properties;
  /// Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain < > % & \ ? /
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [InvoiceSectionArgs].
  /// [billingAccountName] The ID that uniquely identifies a billing account.
  /// [billingProfileName] The ID that uniquely identifies a billing profile.
  /// [invoiceSectionName] The ID that uniquely identifies an invoice section.
  /// [properties] An invoice section.
  /// [tags] Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain < > % & \ ? /
  InvoiceSectionArgs({
    required pulumi.Output<String> billingAccountName,
    required pulumi.Output<String> billingProfileName,
    pulumi.Output<String>? invoiceSectionName,
    pulumi.Output<InvoiceSectionProperties>? properties,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      billingAccountName = pulumi.Input.asInput<String>(billingAccountName),
      billingProfileName = pulumi.Input.asInput<String>(billingProfileName),
      invoiceSectionName = pulumi.Input.asOptionalInput<String>(invoiceSectionName),
      properties = pulumi.Input.asOptionalInput<InvoiceSectionProperties>(properties),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountName': billingAccountName,
      'billingProfileName': billingProfileName,
      'invoiceSectionName': ?invoiceSectionName,
      'properties': ?pulumi.Input.mapOptionalInputValue<InvoiceSectionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory InvoiceSectionArgs.fromMap(Map<String, dynamic> map) {
    return InvoiceSectionArgs(
      billingAccountName: pulumi.Output.create<String>(map['billingAccountName'] as String),
      billingProfileName: pulumi.Output.create<String>(map['billingProfileName'] as String),
      invoiceSectionName: map['invoiceSectionName'] == null ? null : pulumi.Output.create<String>(map['invoiceSectionName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<InvoiceSectionProperties>(InvoiceSectionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}


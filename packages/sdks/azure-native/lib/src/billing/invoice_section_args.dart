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

  /// Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [InvoiceSectionArgs].
  /// [billingAccountName] The ID that uniquely identifies a billing account.
  /// [billingProfileName] The ID that uniquely identifies a billing profile.
  /// [invoiceSectionName] The ID that uniquely identifies an invoice section.
  /// [properties] An invoice section.
  /// [tags] Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /
  InvoiceSectionArgs({
    required this.billingAccountName,
    required this.billingProfileName,
    this.invoiceSectionName,
    this.properties,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountName': billingAccountName,
      'billingProfileName': billingProfileName,
      'invoiceSectionName': ?invoiceSectionName,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            InvoiceSectionProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory InvoiceSectionArgs.fromMap(Map<String, dynamic> map) {
    return InvoiceSectionArgs(
      billingAccountName: pulumi.Input.fromValue(
        map['billingAccountName'] as String,
      ),
      billingProfileName: pulumi.Input.fromValue(
        map['billingProfileName'] as String,
      ),
      invoiceSectionName: (() {
        final guardedValue = map['invoiceSectionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InvoiceSectionProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
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

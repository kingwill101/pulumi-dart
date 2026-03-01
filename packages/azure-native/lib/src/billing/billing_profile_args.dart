// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'billing_profile_properties.dart';

/// {@template pulumi_billing_billing_profile_args_doc}
/// The set of arguments for BillingProfile.
/// {@endtemplate}
/// {@macro pulumi_billing_billing_profile_args_doc}
class BillingProfileArgs {
  /// The ID that uniquely identifies a billing account.
  final pulumi.Input<String> billingAccountName;
  /// The ID that uniquely identifies a billing profile.
  final pulumi.Input<String>? billingProfileName;
  /// A billing profile.
  final pulumi.Input<BillingProfileProperties>? properties;
  /// Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain < > % & \ ? /
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [BillingProfileArgs].
  /// [billingAccountName] The ID that uniquely identifies a billing account.
  /// [billingProfileName] The ID that uniquely identifies a billing profile.
  /// [properties] A billing profile.
  /// [tags] Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain < > % & \ ? /
  BillingProfileArgs({
    required String billingAccountName,
    String? billingProfileName,
    BillingProfileProperties? properties,
    Map<String, String>? tags,
  }) :
      billingAccountName = pulumi.Input.asInput<String>(billingAccountName),
      billingProfileName = pulumi.Input.asOptionalInput<String>(billingProfileName),
      properties = pulumi.Input.asOptionalInput<BillingProfileProperties>(properties),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountName': billingAccountName,
      'billingProfileName': ?billingProfileName,
      'properties': ?pulumi.Input.mapOptionalInputValue<BillingProfileProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory BillingProfileArgs.fromMap(Map<String, dynamic> map) {
    return BillingProfileArgs(
      billingAccountName: map['billingAccountName'] as String,
      billingProfileName: map['billingProfileName'] == null ? null : map['billingProfileName'] as String,
      properties: map['properties'] == null ? null : BillingProfileProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}


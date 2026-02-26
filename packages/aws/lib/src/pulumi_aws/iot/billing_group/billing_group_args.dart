// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../billing_group_properties/billing_group_properties.dart';

/// The set of arguments for BillingGroup.
class BillingGroupArgs {
  /// The name of the Billing Group.
  final Input<String>? name;

  /// The Billing Group properties. Defined below.
  final Input<BillingGroupProperties>? properties;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value mapping of resource tags
  final Input<Map<String, String>>? tags;

  BillingGroupArgs({
    this.name,
    this.properties,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = Input.mapOptionalInputValue<BillingGroupProperties,
          Map<String, dynamic>>(propertiesValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory BillingGroupArgs.fromMap(Map<String, dynamic> map) {
    return BillingGroupArgs(
      name: Input.asOptionalInput<String>(map['name']),
      properties:
          Input.asOptionalInput<BillingGroupProperties>(map['properties']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}

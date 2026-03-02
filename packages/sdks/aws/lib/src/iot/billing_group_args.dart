// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'billing_group_properties.dart';

/// {@template pulumi_iot_billing_group_billing_group_args_doc}
/// The set of arguments for BillingGroup.
/// {@endtemplate}
/// {@macro pulumi_iot_billing_group_billing_group_args_doc}
class BillingGroupArgs {
  /// The name of the Billing Group.
  final pulumi.Input<String>? name;
  /// The Billing Group properties. Defined below.
  final pulumi.Input<BillingGroupProperties>? properties;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value mapping of resource tags
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [BillingGroupArgs].
  /// [name] The name of the Billing Group.
  /// [properties] The Billing Group properties. Defined below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags
  BillingGroupArgs({
    this.name,
    this.properties,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<BillingGroupProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory BillingGroupArgs.fromMap(Map<String, dynamic> map) {
    return BillingGroupArgs(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      properties: map['properties'] == null ? null : (BillingGroupProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}


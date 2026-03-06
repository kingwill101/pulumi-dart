// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BillingGroupProperties {
  /// A description of the Billing Group.
  final pulumi.Input<String>? description;

  /// Creates a new [BillingGroupProperties].
  /// [description] A description of the Billing Group.
  const BillingGroupProperties({
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
    };
  }

  factory BillingGroupProperties.fromMap(Map<String, dynamic> map) {
    return BillingGroupProperties(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


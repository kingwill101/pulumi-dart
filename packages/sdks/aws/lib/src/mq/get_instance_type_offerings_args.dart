// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mq_get_instance_type_offerings_get_instance_type_offerings_args_doc}
/// Arguments for getInstanceTypeOfferings.
/// {@endtemplate}
/// {@macro pulumi_mq_get_instance_type_offerings_get_instance_type_offerings_args_doc}
class GetInstanceTypeOfferingsArgs {
  /// Filter response by engine type.
  final pulumi.Input<String>? engineType;
  /// Filter response by host instance type.
  final pulumi.Input<String>? hostInstanceType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Filter response by storage type.
  final pulumi.Input<String>? storageType;

  /// Creates a new [GetInstanceTypeOfferingsArgs].
  /// [engineType] Filter response by engine type.
  /// [hostInstanceType] Filter response by host instance type.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [storageType] Filter response by storage type.
  const GetInstanceTypeOfferingsArgs({
    this.engineType,
    this.hostInstanceType,
    this.region,
    this.storageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engineType': ?engineType,
      'hostInstanceType': ?hostInstanceType,
      'region': ?region,
      'storageType': ?storageType,
    };
  }

  factory GetInstanceTypeOfferingsArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeOfferingsArgs(
      engineType: (() { final guardedValue = map['engineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostInstanceType: (() { final guardedValue = map['hostInstanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

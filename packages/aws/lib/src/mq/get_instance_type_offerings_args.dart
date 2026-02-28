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
  GetInstanceTypeOfferingsArgs({
    String? engineType,
    String? hostInstanceType,
    String? region,
    String? storageType,
  })  : engineType = pulumi.Input.asOptionalInput<String>(engineType),
        hostInstanceType =
            pulumi.Input.asOptionalInput<String>(hostInstanceType),
        region = pulumi.Input.asOptionalInput<String>(region),
        storageType = pulumi.Input.asOptionalInput<String>(storageType);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final engineTypeValue = engineType;
    if (engineTypeValue != null) {
      map['engineType'] = engineTypeValue;
    }
    final hostInstanceTypeValue = hostInstanceType;
    if (hostInstanceTypeValue != null) {
      map['hostInstanceType'] = hostInstanceTypeValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final storageTypeValue = storageType;
    if (storageTypeValue != null) {
      map['storageType'] = storageTypeValue;
    }
    return map;
  }

  factory GetInstanceTypeOfferingsArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeOfferingsArgs(
      engineType:
          map['engineType'] == null ? null : map['engineType'] as String,
      hostInstanceType: map['hostInstanceType'] == null
          ? null
          : map['hostInstanceType'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      storageType:
          map['storageType'] == null ? null : map['storageType'] as String,
    );
  }
}

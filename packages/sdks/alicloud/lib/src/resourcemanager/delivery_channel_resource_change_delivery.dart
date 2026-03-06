// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_channel_resource_change_delivery_sls_properties.dart';

class DeliveryChannelResourceChangeDelivery {
  /// Specifies whether to enable delivery of resource configuration change events. Valid values:
  /// - true
  /// - false
  final pulumi.Input<bool>? enabled;
  /// The Simple Log Service configurations. See `sls_properties` below.
  final pulumi.Input<DeliveryChannelResourceChangeDeliverySlsProperties>? slsProperties;
  /// The ARN of the delivery destination.
  /// - If you set TargetType to`OSS`, you must set TargetArn to the ARN of a bucket whose name is prefixed with `resourcecenter-`.
  /// - If you set TargetType to`SLS`, you must set TargetArn to the ARN of a Logstore whose name is prefixed with `resourcecenter-`.
  final pulumi.Input<String>? targetArn;
  /// The type of the delivery destination.
  ///
  /// Valid values:
  /// - SLS
  final pulumi.Input<String>? targetType;

  /// Creates a new [DeliveryChannelResourceChangeDelivery].
  /// [enabled] Specifies whether to enable delivery of resource configuration change events. Valid values:
  /// [slsProperties] The Simple Log Service configurations. See `sls_properties` below.
  /// [targetArn] The ARN of the delivery destination.
  /// [targetType] The type of the delivery destination.
  const DeliveryChannelResourceChangeDelivery({
    this.enabled,
    this.slsProperties,
    this.targetArn,
    this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'slsProperties': ?pulumi.Input.mapOptionalInputValue<DeliveryChannelResourceChangeDeliverySlsProperties, Map<String, dynamic>>(slsProperties, (value) => value.toMap()),
      'targetArn': ?targetArn,
      'targetType': ?targetType,
    };
  }

  factory DeliveryChannelResourceChangeDelivery.fromMap(Map<String, dynamic> map) {
    return DeliveryChannelResourceChangeDelivery(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      slsProperties: (() { final guardedValue = map['slsProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeliveryChannelResourceChangeDeliverySlsProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetArn: (() { final guardedValue = map['targetArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetType: (() { final guardedValue = map['targetType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


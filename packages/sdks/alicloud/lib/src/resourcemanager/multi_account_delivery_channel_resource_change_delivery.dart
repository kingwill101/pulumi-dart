// ignore_for_file: unused_element, unnecessary_cast

import 'multi_account_delivery_channel_resource_change_delivery_sls_properties.dart';

class MultiAccountDeliveryChannelResourceChangeDelivery {
  /// Specifies whether to enable delivery of resource configuration change events. Valid values:
  /// - true
  /// - false
  final bool? enabled;
  /// The Simple Log Service configurations. See `sls_properties` below.
  final MultiAccountDeliveryChannelResourceChangeDeliverySlsProperties? slsProperties;
  /// The ARN of the delivery destination.
  /// - If you set TargetType to`OSS`, you must set TargetArn to the ARN of a bucket whose name is prefixed with `resourcecenter-`.
  /// - If you set TargetType to`SLS`, you must set TargetArn to the ARN of a Logstore whose name is prefixed with `resourcecenter-`.
  final String? targetArn;
  /// The type of the delivery destination.
  ///
  /// Valid values:
  /// - SLS
  final String? targetType;

  /// Creates a new [MultiAccountDeliveryChannelResourceChangeDelivery].
  /// [enabled] Specifies whether to enable delivery of resource configuration change events. Valid values:
  /// [slsProperties] The Simple Log Service configurations. See `sls_properties` below.
  /// [targetArn] The ARN of the delivery destination.
  /// [targetType] The type of the delivery destination.
  MultiAccountDeliveryChannelResourceChangeDelivery({
    this.enabled,
    this.slsProperties,
    this.targetArn,
    this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'slsProperties': ?slsProperties == null ? null : slsProperties!.toMap(),
      'targetArn': ?targetArn,
      'targetType': ?targetType,
    };
  }

  factory MultiAccountDeliveryChannelResourceChangeDelivery.fromMap(Map<String, dynamic> map) {
    return MultiAccountDeliveryChannelResourceChangeDelivery(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      slsProperties: map['slsProperties'] == null ? null : MultiAccountDeliveryChannelResourceChangeDeliverySlsProperties.fromMap((map['slsProperties'] as Map).cast<String, dynamic>()),
      targetArn: map['targetArn'] == null ? null : map['targetArn'] as String,
      targetType: map['targetType'] == null ? null : map['targetType'] as String,
    );
  }
}


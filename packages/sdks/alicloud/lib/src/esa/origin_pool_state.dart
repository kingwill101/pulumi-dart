// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'origin_pool_origin.dart';

/// Input properties used for looking up and filtering OriginPool resources.
class OriginPoolState {
  /// Whether the source address pool is enabled:
  final pulumi.Input<bool>? enabled;
  /// OriginPool Id
  final pulumi.Input<int>? originPoolId;
  /// The source address pool name.
  final pulumi.Input<String>? originPoolName;
  /// The Source station information added to the source address pool. Multiple Source stations use arrays to transfer values. See `origins` below.
  final pulumi.Input<List<OriginPoolOrigin>>? origins;
  /// The site ID.
  final pulumi.Input<String>? siteId;

  /// Creates a new [OriginPoolState].
  /// [enabled] Whether the source address pool is enabled:
  /// [originPoolId] OriginPool Id
  /// [originPoolName] The source address pool name.
  /// [origins] The Source station information added to the source address pool. Multiple Source stations use arrays to transfer values. See `origins` below.
  /// [siteId] The site ID.
  OriginPoolState({
    this.enabled,
    this.originPoolId,
    this.originPoolName,
    this.origins,
    this.siteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'originPoolId': ?originPoolId,
      'originPoolName': ?originPoolName,
      'origins': ?pulumi.Input.mapOptionalInputValue<List<OriginPoolOrigin>, List<Map<String, dynamic>>>(origins, (value) => pulumi.Input.encodeList<OriginPoolOrigin, Map<String, dynamic>>(value, (value) => value.toMap())),
      'siteId': ?siteId,
    };
  }

  factory OriginPoolState.fromMap(Map<String, dynamic> map) {
    return OriginPoolState(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      originPoolId: (() { final guardedValue = map['originPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      originPoolName: (() { final guardedValue = map['originPoolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      origins: (() { final guardedValue = map['origins']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OriginPoolOrigin>(guardedValue, (value) => OriginPoolOrigin.fromMap((value as Map).cast<String, dynamic>()))); })(),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


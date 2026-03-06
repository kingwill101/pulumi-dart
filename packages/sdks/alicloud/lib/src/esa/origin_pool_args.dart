// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'origin_pool_origin.dart';

/// {@template pulumi_esa_origin_pool_origin_pool_args_doc}
/// The set of arguments for OriginPool.
/// {@endtemplate}
/// {@macro pulumi_esa_origin_pool_origin_pool_args_doc}
class OriginPoolArgs {
  /// Whether the source address pool is enabled:
  final pulumi.Input<bool>? enabled;
  /// The source address pool name.
  final pulumi.Input<String> originPoolName;
  /// The Source station information added to the source address pool. Multiple Source stations use arrays to transfer values. See `origins` below.
  final pulumi.Input<List<OriginPoolOrigin>>? origins;
  /// The site ID.
  final pulumi.Input<String> siteId;

  /// Creates a new [OriginPoolArgs].
  /// [enabled] Whether the source address pool is enabled:
  /// [originPoolName] The source address pool name.
  /// [origins] The Source station information added to the source address pool. Multiple Source stations use arrays to transfer values. See `origins` below.
  /// [siteId] The site ID.
  const OriginPoolArgs({
    this.enabled,
    required this.originPoolName,
    this.origins,
    required this.siteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'originPoolName': originPoolName,
      'origins': ?pulumi.Input.mapOptionalInputValue<List<OriginPoolOrigin>, List<Map<String, dynamic>>>(origins, (value) => pulumi.Input.encodeList<OriginPoolOrigin, Map<String, dynamic>>(value, (value) => value.toMap())),
      'siteId': siteId,
    };
  }

  factory OriginPoolArgs.fromMap(Map<String, dynamic> map) {
    return OriginPoolArgs(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      originPoolName: pulumi.Input.fromValue(map['originPoolName'] as String),
      origins: (() { final guardedValue = map['origins']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OriginPoolOrigin>(guardedValue, (value) => OriginPoolOrigin.fromMap((value as Map).cast<String, dynamic>()))); })(),
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
    );
  }
}


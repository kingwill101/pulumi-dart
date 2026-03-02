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
  OriginPoolArgs({
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
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      originPoolName: (map['originPoolName'] as String).input(),
      origins: map['origins'] == null ? null : (pulumi.Input.decodeList<OriginPoolOrigin>(map['origins'], (value) => OriginPoolOrigin.fromMap((value as Map).cast<String, dynamic>()))).input(),
      siteId: (map['siteId'] as String).input(),
    );
  }
}


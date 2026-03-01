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
    pulumi.Output<bool>? enabled,
    pulumi.Output<int>? originPoolId,
    pulumi.Output<String>? originPoolName,
    pulumi.Output<List<OriginPoolOrigin>>? origins,
    pulumi.Output<String>? siteId,
  }) :
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      originPoolId = pulumi.Input.asOptionalInput<int>(originPoolId),
      originPoolName = pulumi.Input.asOptionalInput<String>(originPoolName),
      origins = pulumi.Input.asOptionalInput<List<OriginPoolOrigin>>(origins),
      siteId = pulumi.Input.asOptionalInput<String>(siteId);

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
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      originPoolId: map['originPoolId'] == null ? null : pulumi.Output.create<int>(map['originPoolId'] as int),
      originPoolName: map['originPoolName'] == null ? null : pulumi.Output.create<String>(map['originPoolName'] as String),
      origins: map['origins'] == null ? null : pulumi.Output.create<List<OriginPoolOrigin>>(pulumi.Input.decodeList<OriginPoolOrigin>(map['origins'], (value) => OriginPoolOrigin.fromMap((value as Map).cast<String, dynamic>()))),
      siteId: map['siteId'] == null ? null : pulumi.Output.create<String>(map['siteId'] as String),
    );
  }
}


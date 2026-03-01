// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_key_pair_filter.dart';

/// {@template pulumi_ec2_get_key_pair_get_key_pair_args_doc}
/// Arguments for getKeyPair.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_key_pair_get_key_pair_args_doc}
class GetKeyPairArgs {
  /// Custom filter block as described below.
  ///
  /// The arguments of this data source act as filters for querying the available
  /// Key Pairs. The given filters must match exactly one Key Pair
  /// whose data will be exported as attributes.
  final pulumi.Input<List<GetKeyPairFilter>>? filters;
  /// Whether to include the public key material in the response.
  final pulumi.Input<bool>? includePublicKey;
  /// Key Pair name.
  final pulumi.Input<String>? keyName;
  /// Key Pair ID.
  final pulumi.Input<String>? keyPairId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Any tags assigned to the Key Pair.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetKeyPairArgs].
  /// [filters] Custom filter block as described below.
  /// [includePublicKey] Whether to include the public key material in the response.
  /// [keyName] Key Pair name.
  /// [keyPairId] Key Pair ID.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Any tags assigned to the Key Pair.
  GetKeyPairArgs({
    pulumi.Output<List<GetKeyPairFilter>>? filters,
    pulumi.Output<bool>? includePublicKey,
    pulumi.Output<String>? keyName,
    pulumi.Output<String>? keyPairId,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetKeyPairFilter>>(filters),
      includePublicKey = pulumi.Input.asOptionalInput<bool>(includePublicKey),
      keyName = pulumi.Input.asOptionalInput<String>(keyName),
      keyPairId = pulumi.Input.asOptionalInput<String>(keyPairId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetKeyPairFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetKeyPairFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'includePublicKey': ?includePublicKey,
      'keyName': ?keyName,
      'keyPairId': ?keyPairId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetKeyPairArgs.fromMap(Map<String, dynamic> map) {
    return GetKeyPairArgs(
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetKeyPairFilter>>(pulumi.Input.decodeList<GetKeyPairFilter>(map['filters'], (value) => GetKeyPairFilter.fromMap((value as Map).cast<String, dynamic>()))),
      includePublicKey: map['includePublicKey'] == null ? null : pulumi.Output.create<bool>(map['includePublicKey'] as bool),
      keyName: map['keyName'] == null ? null : pulumi.Output.create<String>(map['keyName'] as String),
      keyPairId: map['keyPairId'] == null ? null : pulumi.Output.create<String>(map['keyPairId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}


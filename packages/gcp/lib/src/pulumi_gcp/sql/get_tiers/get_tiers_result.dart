// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_tiers_tier/get_tiers_tier.dart';

/// Result data returned by getTiers.
class GetTiersResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String project;

  /// A list of all available machine types (tiers) for project. Each contains:
  final List<GetTiersTier> tiers;

  GetTiersResult({
    required this.id,
    required this.project,
    required this.tiers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['project'] = project;
    map['tiers'] = pulumi.Input.encodeList<GetTiersTier, Map<String, dynamic>>(
        tiers, (value) => value.toMap());
    return map;
  }

  factory GetTiersResult.fromMap(Map<String, dynamic> map) {
    return GetTiersResult(
      id: map['id'] as String,
      project: map['project'] as String,
      tiers: pulumi.Input.decodeList<GetTiersTier>(
          map['tiers'],
          (value) =>
              GetTiersTier.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_launch_paths_summary/get_launch_paths_summary.dart';

/// Result data returned by getLaunchPaths.
class GetLaunchPathsResult {
  final String? acceptLanguage;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String productId;
  final String region;

  /// Block with information about the launch path. See details below.
  final List<GetLaunchPathsSummary> summaries;

  GetLaunchPathsResult({
    this.acceptLanguage,
    required this.id,
    required this.productId,
    required this.region,
    required this.summaries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceptLanguageValue = acceptLanguage;
    if (acceptLanguageValue != null) {
      map['acceptLanguage'] = acceptLanguageValue;
    }
    map['id'] = id;
    map['productId'] = productId;
    map['region'] = region;
    map['summaries'] =
        pulumi.Input.encodeList<GetLaunchPathsSummary, Map<String, dynamic>>(
            summaries, (value) => value.toMap());
    return map;
  }

  factory GetLaunchPathsResult.fromMap(Map<String, dynamic> map) {
    return GetLaunchPathsResult(
      acceptLanguage: map['acceptLanguage'] == null
          ? null
          : map['acceptLanguage'] as String,
      id: map['id'] as String,
      productId: map['productId'] as String,
      region: map['region'] as String,
      summaries: pulumi.Input.decodeList<GetLaunchPathsSummary>(
          map['summaries'],
          (value) => GetLaunchPathsSummary.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}

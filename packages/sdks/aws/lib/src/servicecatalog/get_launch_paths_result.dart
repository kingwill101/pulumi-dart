// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_launch_paths_summary.dart';

/// Result data returned by getLaunchPaths.
class GetLaunchPathsResult {
  final String? acceptLanguage;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String productId;
  final String region;
  /// Block with information about the launch path. See details below.
  final List<GetLaunchPathsSummary> summaries;

  /// Creates a new [GetLaunchPathsResult].
  /// [acceptLanguage] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [productId] Required.
  /// [region] Required.
  /// [summaries] Block with information about the launch path. See details below.
  const GetLaunchPathsResult({
    this.acceptLanguage,
    required this.id,
    required this.productId,
    required this.region,
    required this.summaries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'id': id,
      'productId': productId,
      'region': region,
      'summaries': pulumi.Input.encodeList<GetLaunchPathsSummary, Map<String, dynamic>>(summaries, (value) => value.toMap()),
    };
  }

  factory GetLaunchPathsResult.fromMap(Map<String, dynamic> map) {
    return GetLaunchPathsResult(
      acceptLanguage: (() { final guardedValue = map['acceptLanguage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      productId: map['productId'] as String,
      region: map['region'] as String,
      summaries: pulumi.Input.decodeList<GetLaunchPathsSummary>(map['summaries']!, (value) => GetLaunchPathsSummary.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

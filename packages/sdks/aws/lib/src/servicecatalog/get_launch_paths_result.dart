// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_launch_paths_summary.dart';

/// Result data returned by getLaunchPaths.
class GetLaunchPathsResult {
  final String? acceptLanguage;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? productId;
  final String? region;
  /// Block with information about the launch path. See details below.
  final List<GetLaunchPathsSummary>? summaries;

  /// Creates a new [GetLaunchPathsResult].
  /// [acceptLanguage] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [productId] Optional.
  /// [region] Optional.
  /// [summaries] Block with information about the launch path. See details below.
  const GetLaunchPathsResult({
    this.acceptLanguage,
    this.id,
    this.productId,
    this.region,
    this.summaries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'id': ?id,
      'productId': ?productId,
      'region': ?region,
      'summaries': ?(() { final guardedValue = summaries; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLaunchPathsSummary, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetLaunchPathsResult.fromMap(Map<String, dynamic> map) {
    return GetLaunchPathsResult(
      acceptLanguage: (() { final guardedValue = map['acceptLanguage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      productId: (() { final guardedValue = map['productId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      summaries: (() { final guardedValue = map['summaries']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLaunchPathsSummary>(guardedValue, (value) => GetLaunchPathsSummary.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

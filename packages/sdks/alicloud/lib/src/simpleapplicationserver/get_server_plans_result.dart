// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_server_plans_plan.dart';

/// Result data returned by getServerPlans.
class GetServerPlansResult {
  final int? bandwidth;
  final int? core;
  final int? diskSize;
  final int? flow;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final double? memory;
  final String? outputFile;
  final List<GetServerPlansPlan> plans;
  final String? platform;

  /// Creates a new [GetServerPlansResult].
  /// [bandwidth] Optional.
  /// [core] Optional.
  /// [diskSize] Optional.
  /// [flow] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [memory] Optional.
  /// [outputFile] Optional.
  /// [plans] Required.
  /// [platform] Optional.
  GetServerPlansResult({
    this.bandwidth,
    this.core,
    this.diskSize,
    this.flow,
    required this.id,
    required this.ids,
    this.memory,
    this.outputFile,
    required this.plans,
    this.platform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': ?bandwidth,
      'core': ?core,
      'diskSize': ?diskSize,
      'flow': ?flow,
      'id': id,
      'ids': ids,
      'memory': ?memory,
      'outputFile': ?outputFile,
      'plans':
          pulumi.Input.encodeList<GetServerPlansPlan, Map<String, dynamic>>(
            plans,
            (value) => value.toMap(),
          ),
      'platform': ?platform,
    };
  }

  factory GetServerPlansResult.fromMap(Map<String, dynamic> map) {
    return GetServerPlansResult(
      bandwidth: (() {
        final guardedValue = map['bandwidth'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      core: (() {
        final guardedValue = map['core'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      diskSize: (() {
        final guardedValue = map['diskSize'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      flow: (() {
        final guardedValue = map['flow'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      memory: (() {
        final guardedValue = map['memory'];
        if (guardedValue == null) return null;
        return guardedValue as double;
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      plans: pulumi.Input.decodeList<GetServerPlansPlan>(
        map['plans']!,
        (value) =>
            GetServerPlansPlan.fromMap((value as Map).cast<String, dynamic>()),
      ),
      platform: (() {
        final guardedValue = map['platform'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}

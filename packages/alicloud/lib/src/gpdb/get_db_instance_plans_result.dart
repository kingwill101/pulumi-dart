// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_instance_plans_plan.dart';

/// Result data returned by getDbInstancePlans.
class GetDbInstancePlansResult {
  final String dbInstanceId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? planScheduleType;
  final String? planType;
  final List<GetDbInstancePlansPlan> plans;
  final String? status;

  /// Creates a new [GetDbInstancePlansResult].
  /// [dbInstanceId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [planScheduleType] Optional.
  /// [planType] Optional.
  /// [plans] Required.
  /// [status] Optional.
  GetDbInstancePlansResult({
    required this.dbInstanceId,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.planScheduleType,
    this.planType,
    required this.plans,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceId': dbInstanceId,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'planScheduleType': ?planScheduleType,
      'planType': ?planType,
      'plans': pulumi.Input.encodeList<GetDbInstancePlansPlan, Map<String, dynamic>>(plans, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory GetDbInstancePlansResult.fromMap(Map<String, dynamic> map) {
    return GetDbInstancePlansResult(
      dbInstanceId: map['dbInstanceId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      planScheduleType: map['planScheduleType'] == null ? null : map['planScheduleType'] as String,
      planType: map['planType'] == null ? null : map['planType'] as String,
      plans: pulumi.Input.decodeList<GetDbInstancePlansPlan>(map['plans'], (value) => GetDbInstancePlansPlan.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}


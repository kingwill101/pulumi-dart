import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_schedule_args.dart';
import 'get_backup_schedule_result.dart';
import 'get_database_args.dart';
import 'get_database_result.dart';
import 'get_index_args.dart';
import 'get_index_firestore_v1beta1_args.dart';
import 'get_index_firestore_v1beta1_result.dart';
import 'get_index_firestore_v1beta2_args.dart';
import 'get_index_firestore_v1beta2_result.dart';
import 'get_index_result.dart';

/// Gets information about a backup schedule.
/// [args] Arguments passed to this invoke. {@macro pulumi_firestore_v1_get_backup_schedule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupScheduleResult> getBackupSchedule(
  GetBackupScheduleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firestore/v1:getBackupSchedule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupScheduleResult.fromMap(result);
}

/// Gets information about a database.
/// [args] Arguments passed to this invoke. {@macro pulumi_firestore_v1_get_database_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseResult> getDatabase(
  GetDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firestore/v1:getDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseResult.fromMap(result);
}

/// Gets a composite index.
/// [args] Arguments passed to this invoke. {@macro pulumi_firestore_v1_get_index_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIndexResult> getIndex(
  GetIndexArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firestore/v1:getIndex',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIndexResult.fromMap(result);
}

/// Gets an index.
/// [args] Arguments passed to this invoke. {@macro pulumi_firestore_v1beta1_get_index_firestore_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIndexFirestoreV1beta1Result> getIndexFirestoreV1beta1(
  GetIndexFirestoreV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firestore/v1beta1:getIndex',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIndexFirestoreV1beta1Result.fromMap(result);
}

/// Gets a composite index.
/// [args] Arguments passed to this invoke. {@macro pulumi_firestore_v1beta2_get_index_firestore_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIndexFirestoreV1beta2Result> getIndexFirestoreV1beta2(
  GetIndexFirestoreV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firestore/v1beta2:getIndex',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIndexFirestoreV1beta2Result.fromMap(result);
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_run_args.dart';
import 'get_backup_run_result.dart';
import 'get_backup_run_sqladmin_v1beta4_args.dart';
import 'get_backup_run_sqladmin_v1beta4_result.dart';
import 'get_database_args.dart';
import 'get_database_result.dart';
import 'get_database_sqladmin_v1beta4_args.dart';
import 'get_database_sqladmin_v1beta4_result.dart';
import 'get_instance_args.dart';
import 'get_instance_result.dart';
import 'get_instance_sqladmin_v1beta4_args.dart';
import 'get_instance_sqladmin_v1beta4_result.dart';
import 'get_ssl_cert_args.dart';
import 'get_ssl_cert_result.dart';
import 'get_ssl_cert_sqladmin_v1beta4_args.dart';
import 'get_ssl_cert_sqladmin_v1beta4_result.dart';
import 'get_user_args.dart';
import 'get_user_result.dart';
import 'get_user_sqladmin_v1beta4_args.dart';
import 'get_user_sqladmin_v1beta4_result.dart';

/// Retrieves a resource containing information about a backup run.
/// [args] Arguments passed to this invoke. {@macro pulumi_sqladmin_v1_get_backup_run_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupRunResult> getBackupRun(
  GetBackupRunArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:sqladmin/v1:getBackupRun',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupRunResult.fromMap(result);
}

/// Retrieves a resource containing information about a database inside a Cloud SQL instance.
/// [args] Arguments passed to this invoke. {@macro pulumi_sqladmin_v1_get_database_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseResult> getDatabase(
  GetDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:sqladmin/v1:getDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseResult.fromMap(result);
}

/// Retrieves a resource containing information about a Cloud SQL instance.
/// [args] Arguments passed to this invoke. {@macro pulumi_sqladmin_v1_get_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceResult> getInstance(
  GetInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:sqladmin/v1:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult.fromMap(result);
}

/// Retrieves a particular SSL certificate. Does not include the private key (required for usage). The private key must be saved from the response to initial creation.
/// [args] Arguments passed to this invoke. {@macro pulumi_sqladmin_v1_get_ssl_cert_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSslCertResult> getSslCert(
  GetSslCertArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:sqladmin/v1:getSslCert',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSslCertResult.fromMap(result);
}

/// Retrieves a resource containing information about a user.
/// [args] Arguments passed to this invoke. {@macro pulumi_sqladmin_v1_get_user_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserResult> getUser(
  GetUserArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:sqladmin/v1:getUser',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserResult.fromMap(result);
}

/// Retrieves a resource containing information about a backup run.
/// [args] Arguments passed to this invoke. {@macro pulumi_sqladmin_v1beta4_get_backup_run_sqladmin_v1beta4_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupRunSqladminV1beta4Result> getBackupRunSqladminV1beta4(
  GetBackupRunSqladminV1beta4Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:sqladmin/v1beta4:getBackupRun',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupRunSqladminV1beta4Result.fromMap(result);
}

/// Retrieves a resource containing information about a database inside a Cloud SQL instance.
/// [args] Arguments passed to this invoke. {@macro pulumi_sqladmin_v1beta4_get_database_sqladmin_v1beta4_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseSqladminV1beta4Result> getDatabaseSqladminV1beta4(
  GetDatabaseSqladminV1beta4Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:sqladmin/v1beta4:getDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseSqladminV1beta4Result.fromMap(result);
}

/// Retrieves a resource containing information about a Cloud SQL instance.
/// [args] Arguments passed to this invoke. {@macro pulumi_sqladmin_v1beta4_get_instance_sqladmin_v1beta4_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceSqladminV1beta4Result> getInstanceSqladminV1beta4(
  GetInstanceSqladminV1beta4Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:sqladmin/v1beta4:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceSqladminV1beta4Result.fromMap(result);
}

/// Retrieves a particular SSL certificate. Does not include the private key (required for usage). The private key must be saved from the response to initial creation.
/// [args] Arguments passed to this invoke. {@macro pulumi_sqladmin_v1beta4_get_ssl_cert_sqladmin_v1beta4_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSslCertSqladminV1beta4Result> getSslCertSqladminV1beta4(
  GetSslCertSqladminV1beta4Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:sqladmin/v1beta4:getSslCert',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSslCertSqladminV1beta4Result.fromMap(result);
}

/// Retrieves a resource containing information about a user.
/// [args] Arguments passed to this invoke. {@macro pulumi_sqladmin_v1beta4_get_user_sqladmin_v1beta4_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserSqladminV1beta4Result> getUserSqladminV1beta4(
  GetUserSqladminV1beta4Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:sqladmin/v1beta4:getUser',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserSqladminV1beta4Result.fromMap(result);
}

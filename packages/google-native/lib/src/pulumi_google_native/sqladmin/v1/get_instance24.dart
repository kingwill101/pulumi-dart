import 'package:pulumi/pulumi.dart';
import 'get_instance_args24.dart';
import 'get_instance_result24.dart';

/// Retrieves a resource containing information about a Cloud SQL instance.
Future<GetInstanceResult24> getInstance24(
  GetInstanceArgs24 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:sqladmin/v1:getInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult24.fromMap(result);
}

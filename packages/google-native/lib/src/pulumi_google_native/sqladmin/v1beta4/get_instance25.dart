import 'package:pulumi/pulumi.dart';
import 'get_instance_args25.dart';
import 'get_instance_result25.dart';

/// Retrieves a resource containing information about a Cloud SQL instance.
Future<GetInstanceResult25> getInstance25(
  GetInstanceArgs25 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:sqladmin/v1beta4:getInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult25.fromMap(result);
}

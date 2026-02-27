import 'package:pulumi/pulumi.dart' hide Config;
import 'get_snapshot_args4.dart';
import 'get_snapshot_result4.dart';

/// Returns the specified Snapshot resource.
Future<GetSnapshotResult4> getSnapshot4(
  GetSnapshotArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getSnapshot',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSnapshotResult4.fromMap(result);
}

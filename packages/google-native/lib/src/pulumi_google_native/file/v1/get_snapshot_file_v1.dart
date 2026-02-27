import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snapshot_file_v1_args.dart';
import 'get_snapshot_file_v1_result.dart';

/// Gets the details of a specific snapshot.
Future<GetSnapshotFileV1Result> getSnapshotFileV1(
  GetSnapshotFileV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:file/v1:getSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotFileV1Result.fromMap(result);
}

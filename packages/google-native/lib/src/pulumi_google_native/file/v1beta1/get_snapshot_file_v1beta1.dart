import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snapshot_file_v1beta1_args.dart';
import 'get_snapshot_file_v1beta1_result.dart';

/// Gets the details of a specific snapshot.
Future<GetSnapshotFileV1beta1Result> getSnapshotFileV1beta1(
  GetSnapshotFileV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:file/v1beta1:getSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotFileV1beta1Result.fromMap(result);
}

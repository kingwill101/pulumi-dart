import 'package:pulumi/pulumi.dart';
import 'get_release_labels_args.dart';
import 'get_release_labels_result.dart';

/// Retrieve information about EMR Release Labels.
Future<GetReleaseLabelsResult> getReleaseLabels(
  GetReleaseLabelsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:emr/getReleaseLabels:getReleaseLabels',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetReleaseLabelsResult.fromMap(result);
}

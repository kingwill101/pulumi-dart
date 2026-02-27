import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_release_labels_args.dart';
import 'get_release_labels_result.dart';

/// Retrieve information about EMR Release Labels.
Future<GetReleaseLabelsResult> getReleaseLabels(
  GetReleaseLabelsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:emr/getReleaseLabels:getReleaseLabels',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReleaseLabelsResult.fromMap(result);
}

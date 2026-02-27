import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_occurrence_args.dart';
import 'get_occurrence_result.dart';

/// Gets the specified occurrence.
Future<GetOccurrenceResult> getOccurrence(
  GetOccurrenceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:containeranalysis/v1:getOccurrence',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOccurrenceResult.fromMap(result);
}

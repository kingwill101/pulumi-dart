import 'package:pulumi/pulumi.dart';
import 'get_occurrence_args.dart';
import 'get_occurrence_result.dart';

/// Gets the specified occurrence.
Future<GetOccurrenceResult> getOccurrence(
  GetOccurrenceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:containeranalysis/v1:getOccurrence',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOccurrenceResult.fromMap(result);
}

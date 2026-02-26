import 'package:pulumi/pulumi.dart';
import 'get_occurrence_args2.dart';
import 'get_occurrence_result2.dart';

/// Returns the requested `Occurrence`.
Future<GetOccurrenceResult2> getOccurrence2(
  GetOccurrenceArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:containeranalysis/v1alpha1:getOccurrence',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOccurrenceResult2.fromMap(result);
}

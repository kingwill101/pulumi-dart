import 'package:pulumi/pulumi.dart' hide Config;
import 'get_occurrence_args3.dart';
import 'get_occurrence_result3.dart';

/// Gets the specified occurrence.
Future<GetOccurrenceResult3> getOccurrence3(
  GetOccurrenceArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:containeranalysis/v1beta1:getOccurrence',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOccurrenceResult3.fromMap(result);
}

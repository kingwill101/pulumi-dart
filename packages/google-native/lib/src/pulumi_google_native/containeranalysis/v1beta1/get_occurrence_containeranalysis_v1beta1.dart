import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_occurrence_containeranalysis_v1beta1_args.dart';
import 'get_occurrence_containeranalysis_v1beta1_result.dart';

/// Gets the specified occurrence.
Future<GetOccurrenceContaineranalysisV1beta1Result>
    getOccurrenceContaineranalysisV1beta1(
  GetOccurrenceContaineranalysisV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:containeranalysis/v1beta1:getOccurrence',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOccurrenceContaineranalysisV1beta1Result.fromMap(result);
}

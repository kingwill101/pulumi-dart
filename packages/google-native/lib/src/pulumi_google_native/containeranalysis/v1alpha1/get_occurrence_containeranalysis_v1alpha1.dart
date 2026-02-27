import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_occurrence_containeranalysis_v1alpha1_args.dart';
import 'get_occurrence_containeranalysis_v1alpha1_result.dart';

/// Returns the requested `Occurrence`.
Future<GetOccurrenceContaineranalysisV1alpha1Result>
    getOccurrenceContaineranalysisV1alpha1(
  GetOccurrenceContaineranalysisV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:containeranalysis/v1alpha1:getOccurrence',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOccurrenceContaineranalysisV1alpha1Result.fromMap(result);
}

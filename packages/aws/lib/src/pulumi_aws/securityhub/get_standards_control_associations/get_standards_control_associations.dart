import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_standards_control_associations_args.dart';
import 'get_standards_control_associations_result.dart';

/// Data source for managing an AWS Security Hub Standards Control Associations.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetStandardsControlAssociationsResult> getStandardsControlAssociations(
  GetStandardsControlAssociationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:securityhub/getStandardsControlAssociations:getStandardsControlAssociations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStandardsControlAssociationsResult.fromMap(result);
}

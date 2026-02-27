import 'package:pulumi/pulumi.dart';
import 'get_delegation_set_args.dart';
import 'get_delegation_set_result.dart';

/// `aws.route53.DelegationSet` provides details about a specific Route 53 Delegation Set.
///
/// This data source allows to find a list of name servers associated with a specific delegation set.
///
/// ## Example Usage
///
/// The following example shows how to get a delegation set from its id.
Future<GetDelegationSetResult> getDelegationSet(
  GetDelegationSetArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getDelegationSet:getDelegationSet',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDelegationSetResult.fromMap(result);
}

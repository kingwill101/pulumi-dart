import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_partner_args.dart';
import 'get_partner_result.dart';

/// Get the management partner using the partnerId, objectId and tenantId.
///
/// Uses Azure REST API version 2018-02-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_managementpartner_get_partner_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPartnerResult> getPartner(
  GetPartnerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:managementpartner:getPartner',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPartnerResult.fromMap(result);
}

pulumi.Output<GetPartnerResult> getPartnerOutput(
  GetPartnerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:managementpartner:getPartner',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPartnerResult.fromMap);
}

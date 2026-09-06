import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_service_certificate_order_args.dart';
import 'get_app_service_certificate_order_certificate_args.dart';
import 'get_app_service_certificate_order_certificate_result.dart';
import 'get_app_service_certificate_order_result.dart';

/// Description for Get a certificate order.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native certificateregistration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_certificateregistration_get_app_service_certificate_order_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppServiceCertificateOrderResult> getAppServiceCertificateOrder(
  GetAppServiceCertificateOrderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:certificateregistration:getAppServiceCertificateOrder',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppServiceCertificateOrderResult.fromMap(result);
}

pulumi.Output<GetAppServiceCertificateOrderResult> getAppServiceCertificateOrderOutput(
  GetAppServiceCertificateOrderArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:certificateregistration:getAppServiceCertificateOrder',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAppServiceCertificateOrderResult.fromMap);
}

/// Description for Get the certificate associated with a certificate order.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native certificateregistration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_certificateregistration_get_app_service_certificate_order_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppServiceCertificateOrderCertificateResult> getAppServiceCertificateOrderCertificate(
  GetAppServiceCertificateOrderCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:certificateregistration:getAppServiceCertificateOrderCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppServiceCertificateOrderCertificateResult.fromMap(result);
}

pulumi.Output<GetAppServiceCertificateOrderCertificateResult> getAppServiceCertificateOrderCertificateOutput(
  GetAppServiceCertificateOrderCertificateArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:certificateregistration:getAppServiceCertificateOrderCertificate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAppServiceCertificateOrderCertificateResult.fromMap);
}

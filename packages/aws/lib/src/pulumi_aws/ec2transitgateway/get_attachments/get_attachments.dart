import 'package:pulumi/pulumi.dart';
import 'get_attachments_args.dart';
import 'get_attachments_result.dart';

/// Get information on EC2 Transit Gateway Attachments.
///
/// ## Example Usage
///
/// ### By Filter
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const filtered = aws.ec2transitgateway.getAttachments({
/// filters: [
/// {
/// name: "state",
/// values: ["pendingAcceptance"],
/// },
/// {
/// name: "resource-type",
/// values: ["vpc"],
/// },
/// ],
/// });
/// const unit = .map(__index => (aws.ec2transitgateway.getAttachment({
/// transitGatewayAttachmentId: _arg0_.ids[__index],
/// })));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// filtered = aws.ec2transitgateway.get_attachments(filters=[
/// {
/// "name": "state",
/// "values": ["pendingAcceptance"],
/// },
/// {
/// "name": "resource-type",
/// "values": ["vpc"],
/// },
/// ])
/// unit = [aws.ec2transitgateway.get_attachment(transit_gateway_attachment_id=filtered.ids[__index]) for __index in len(filtered.ids).apply(lambda length: range(length))]
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var filtered = Aws.Ec2TransitGateway.GetAttachments.Invoke(new()
/// {
/// Filters = new[]
/// {
/// new Aws.Ec2TransitGateway.Inputs.GetAttachmentsFilterInputArgs
/// {
/// Name = "state",
/// Values = new[]
/// {
/// "pendingAcceptance",
/// },
/// },
/// new Aws.Ec2TransitGateway.Inputs.GetAttachmentsFilterInputArgs
/// {
/// Name = "resource-type",
/// Values = new[]
/// {
/// "vpc",
/// },
/// },
/// },
/// });
///
/// var unit = ;
///
/// });
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAttachmentsResult> getAttachments(
  GetAttachmentsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getAttachments:getAttachments',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAttachmentsResult.fromMap(result);
}

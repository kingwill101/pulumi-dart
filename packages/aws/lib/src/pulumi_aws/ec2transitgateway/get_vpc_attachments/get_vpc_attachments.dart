import 'package:pulumi/pulumi.dart';
import 'get_vpc_attachments_args.dart';
import 'get_vpc_attachments_result.dart';

/// Get information on EC2 Transit Gateway VPC Attachments.
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
/// const filtered = aws.ec2transitgateway.getVpcAttachments({
/// filters: [{
/// name: "state",
/// values: ["pendingAcceptance"],
/// }],
/// });
/// const unit = .map(__index => (aws.ec2transitgateway.getVpcAttachment({
/// id: _arg0_.ids[__index],
/// })));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// filtered = aws.ec2transitgateway.get_vpc_attachments(filters=[{
/// "name": "state",
/// "values": ["pendingAcceptance"],
/// }])
/// unit = [aws.ec2transitgateway.get_vpc_attachment(id=filtered.ids[__index]) for __index in len(filtered.ids).apply(lambda length: range(length))]
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var filtered = Aws.Ec2TransitGateway.GetVpcAttachments.Invoke(new()
/// {
/// Filters = new[]
/// {
/// new Aws.Ec2TransitGateway.Inputs.GetVpcAttachmentsFilterInputArgs
/// {
/// Name = "state",
/// Values = new[]
/// {
/// "pendingAcceptance",
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
Future<GetVpcAttachmentsResult> getVpcAttachments(
  GetVpcAttachmentsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getVpcAttachments:getVpcAttachments',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVpcAttachmentsResult.fromMap(result);
}

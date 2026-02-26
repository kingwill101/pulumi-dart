import 'package:pulumi/pulumi.dart';
import 'get_link_args.dart';
import 'get_link_result.dart';

/// Provides details about an existing Network Manager link.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.networkmanager.getLink({
/// globalNetworkId: globalNetworkId,
/// linkId: linkId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.get_link(global_network_id=global_network_id,
/// link_id=link_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.NetworkManager.GetLink.Invoke(new()
/// {
/// GlobalNetworkId = globalNetworkId,
/// LinkId = linkId,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := networkmanager.LookupLink(ctx, &networkmanager.LookupLinkArgs{
/// GlobalNetworkId: globalNetworkId,
/// LinkId:          linkId,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.NetworkmanagerFunctions;
/// import com.pulumi.aws.networkmanager.inputs.GetLinkArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var example = NetworkmanagerFunctions.getLink(GetLinkArgs.builder()
/// .globalNetworkId(globalNetworkId)
/// .linkId(linkId)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:networkmanager:getLink
/// arguments:
/// globalNetworkId: ${globalNetworkId}
/// linkId: ${linkId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetLinkResult> getLink(
  GetLinkArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkmanager/getLink:getLink',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLinkResult.fromMap(result);
}

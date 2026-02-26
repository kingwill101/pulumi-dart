import 'package:pulumi/pulumi.dart';
import 'get_connector_args2.dart';
import 'get_connector_result2.dart';

/// Data source for managing an AWS Transfer Family Connector.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.transfer.getConnector({
/// id: "c-xxxxxxxxxxxxxx",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.transfer.get_connector(id="c-xxxxxxxxxxxxxx")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.Transfer.GetConnector.Invoke(new()
/// {
/// Id = "c-xxxxxxxxxxxxxx",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/transfer"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := transfer.LookupConnector(ctx, &transfer.LookupConnectorArgs{
/// Id: "c-xxxxxxxxxxxxxx",
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
/// import com.pulumi.aws.transfer.TransferFunctions;
/// import com.pulumi.aws.transfer.inputs.GetConnectorArgs;
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
/// final var test = TransferFunctions.getConnector(GetConnectorArgs.builder()
/// .id("c-xxxxxxxxxxxxxx")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:transfer:getConnector
/// arguments:
/// id: c-xxxxxxxxxxxxxx
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetConnectorResult2> getConnector2(
  GetConnectorArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:transfer/getConnector:getConnector',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConnectorResult2.fromMap(result);
}

import 'package:pulumi/pulumi.dart';
import 'get_broker_engine_types_args.dart';
import 'get_broker_engine_types_result.dart';

/// Provides details about available MQ broker engine types. Use this data source to retrieve supported engine types and their versions for Amazon MQ brokers.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.mq.getBrokerEngineTypes({
/// engineType: "ACTIVEMQ",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.mq.get_broker_engine_types(engine_type="ACTIVEMQ")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Mq.GetBrokerEngineTypes.Invoke(new()
/// {
/// EngineType = "ACTIVEMQ",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/mq"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := mq.GetBrokerEngineTypes(ctx, &mq.GetBrokerEngineTypesArgs{
/// EngineType: pulumi.StringRef("ACTIVEMQ"),
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
/// import com.pulumi.aws.mq.MqFunctions;
/// import com.pulumi.aws.mq.inputs.GetBrokerEngineTypesArgs;
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
/// final var example = MqFunctions.getBrokerEngineTypes(GetBrokerEngineTypesArgs.builder()
/// .engineType("ACTIVEMQ")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:mq:getBrokerEngineTypes
/// arguments:
/// engineType: ACTIVEMQ
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetBrokerEngineTypesResult> getBrokerEngineTypes(
  GetBrokerEngineTypesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:mq/getBrokerEngineTypes:getBrokerEngineTypes',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBrokerEngineTypesResult.fromMap(result);
}

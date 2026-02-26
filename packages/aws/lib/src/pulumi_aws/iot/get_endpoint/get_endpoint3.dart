import 'package:pulumi/pulumi.dart';
import 'get_endpoint_args3.dart';
import 'get_endpoint_result3.dart';

/// Returns a unique endpoint specific to the AWS account making the call.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as kubernetes from "@pulumi/kubernetes";
///
/// const example = aws.iot.getEndpoint({});
/// const agent = new kubernetes.index.Pod("agent", {
/// metadata: [{
/// name: "my-device",
/// }],
/// spec: [{
/// container: [{
/// image: "gcr.io/my-project/image-name",
/// name: "image-name",
/// env: [{
/// name: "IOT_ENDPOINT",
/// value: example.endpointAddress,
/// }],
/// }],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_kubernetes as kubernetes
///
/// example = aws.iot.get_endpoint()
/// agent = kubernetes.index.Pod("agent",
/// metadata=[{
/// name: my-device,
/// }],
/// spec=[{
/// container: [{
/// image: gcr.io/my-project/image-name,
/// name: image-name,
/// env: [{
/// name: IOT_ENDPOINT,
/// value: example.endpoint_address,
/// }],
/// }],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Kubernetes = Pulumi.Kubernetes;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Iot.GetEndpoint.Invoke();
///
/// var agent = new Kubernetes.Index.Pod("agent", new()
/// {
/// Metadata = new[]
/// {
///
/// {
/// { "name", "my-device" },
/// },
/// },
/// Spec = new[]
/// {
///
/// {
/// { "container", new[]
/// {
///
/// {
/// { "image", "gcr.io/my-project/image-name" },
/// { "name", "image-name" },
/// { "env", new[]
/// {
///
/// {
/// { "name", "IOT_ENDPOINT" },
/// { "value", example.Apply(getEndpointResult => getEndpointResult.EndpointAddress) },
/// },
/// } },
/// },
/// } },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iot"
/// "github.com/pulumi/pulumi-kubernetes/sdk/v4/go/kubernetes"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := iot.GetEndpoint(ctx, &iot.GetEndpointArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = kubernetes.NewPod(ctx, "agent", &kubernetes.PodArgs{
/// Metadata: []map[string]interface{}{
/// map[string]interface{}{
/// "name": "my-device",
/// },
/// },
/// Spec: []map[string]interface{}{
/// map[string]interface{}{
/// "container": []map[string]interface{}{
/// map[string]interface{}{
/// "image": "gcr.io/my-project/image-name",
/// "name":  "image-name",
/// "env": []map[string]interface{}{
/// map[string]interface{}{
/// "name":  "IOT_ENDPOINT",
/// "value": example.EndpointAddress,
/// },
/// },
/// },
/// },
/// },
/// },
/// })
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
/// import com.pulumi.aws.iot.IotFunctions;
/// import com.pulumi.aws.iot.inputs.GetEndpointArgs;
/// import com.pulumi.kubernetes.Pod;
/// import com.pulumi.kubernetes.PodArgs;
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
/// final var example = IotFunctions.getEndpoint(GetEndpointArgs.builder()
/// .build());
///
/// var agent = new Pod("agent", PodArgs.builder()
/// .metadata(List.of(Map.of("name", "my-device")))
/// .spec(List.of(Map.of("container", List.of(Map.ofEntries(
/// Map.entry("image", "gcr.io/my-project/image-name"),
/// Map.entry("name", "image-name"),
/// Map.entry("env", List.of(Map.ofEntries(
/// Map.entry("name", "IOT_ENDPOINT"),
/// Map.entry("value", example.endpointAddress())
/// )))
/// )))))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// agent:
/// type: kubernetes:Pod
/// properties:
/// metadata:
/// - name: my-device
/// spec:
/// - container:
/// - image: gcr.io/my-project/image-name
/// name: image-name
/// env:
/// - name: IOT_ENDPOINT
/// value: ${example.endpointAddress}
/// variables:
/// example:
/// fn::invoke:
/// function: aws:iot:getEndpoint
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetEndpointResult3> getEndpoint3(
  GetEndpointArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iot/getEndpoint:getEndpoint',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEndpointResult3.fromMap(result);
}

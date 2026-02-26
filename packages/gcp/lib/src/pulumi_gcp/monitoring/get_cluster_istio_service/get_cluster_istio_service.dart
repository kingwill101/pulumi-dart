import 'package:pulumi/pulumi.dart';
import 'get_cluster_istio_service_args.dart';
import 'get_cluster_istio_service_result.dart';

/// A Monitoring Service is the root resource under which operational aspects of a
/// generic service are accessible. A service is some discrete, autonomous, and
/// network-accessible unit, designed to solve an individual concern
///
/// An Cluster Istio monitoring service is automatically created by GCP to monitor
/// Cluster Istio services.
///
///
/// To get more information about Service, see:
///
/// * [API documentation](https://cloud.google.com/monitoring/api/ref_v3/rest/v3/services)
/// * How-to Guides
/// * [Service Monitoring](https://cloud.google.com/monitoring/service-monitoring)
/// * [Monitoring API Documentation](https://cloud.google.com/monitoring/api/v3/)
///
/// ## Example Usage
///
/// ### Monitoring Cluster Istio Service
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // Monitors the default ClusterIstio service
/// const _default = gcp.monitoring.getClusterIstioService({
/// location: "us-west2-a",
/// clusterName: "west",
/// serviceNamespace: "istio-system",
/// serviceName: "istio-policy",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # Monitors the default ClusterIstio service
/// default = gcp.monitoring.get_cluster_istio_service(location="us-west2-a",
/// cluster_name="west",
/// service_namespace="istio-system",
/// service_name="istio-policy")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// // Monitors the default ClusterIstio service
/// var @default = Gcp.Monitoring.GetClusterIstioService.Invoke(new()
/// {
/// Location = "us-west2-a",
/// ClusterName = "west",
/// ServiceNamespace = "istio-system",
/// ServiceName = "istio-policy",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/monitoring"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// // Monitors the default ClusterIstio service
/// _, err := monitoring.GetClusterIstioService(ctx, &monitoring.GetClusterIstioServiceArgs{
/// Location:         "us-west2-a",
/// ClusterName:      "west",
/// ServiceNamespace: "istio-system",
/// ServiceName:      "istio-policy",
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
/// import com.pulumi.gcp.monitoring.MonitoringFunctions;
/// import com.pulumi.gcp.monitoring.inputs.GetClusterIstioServiceArgs;
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
/// // Monitors the default ClusterIstio service
/// final var default = MonitoringFunctions.getClusterIstioService(GetClusterIstioServiceArgs.builder()
/// .location("us-west2-a")
/// .clusterName("west")
/// .serviceNamespace("istio-system")
/// .serviceName("istio-policy")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// # Monitors the default ClusterIstio service
/// default:
/// fn::invoke:
/// function: gcp:monitoring:getClusterIstioService
/// arguments:
/// location: us-west2-a
/// clusterName: west
/// serviceNamespace: istio-system
/// serviceName: istio-policy
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetClusterIstioServiceResult> getClusterIstioService(
  GetClusterIstioServiceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:monitoring/getClusterIstioService:getClusterIstioService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterIstioServiceResult.fromMap(result);
}

import 'package:pulumi/pulumi.dart';
import 'get_mesh_istio_service_args.dart';
import 'get_mesh_istio_service_result.dart';

/// A Monitoring Service is the root resource under which operational aspects of a
/// generic service are accessible. A service is some discrete, autonomous, and
/// network-accessible unit, designed to solve an individual concern
///
/// An Mesh Istio monitoring service is automatically created by GCP to monitor
/// Mesh Istio services.
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
/// ### Monitoring Mesh Istio Service
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // Monitors the default MeshIstio service
/// const _default = gcp.monitoring.getMeshIstioService({
/// meshUid: "proj-573164786102",
/// serviceNamespace: "istio-system",
/// serviceName: "prometheus",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # Monitors the default MeshIstio service
/// default = gcp.monitoring.get_mesh_istio_service(mesh_uid="proj-573164786102",
/// service_namespace="istio-system",
/// service_name="prometheus")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// // Monitors the default MeshIstio service
/// var @default = Gcp.Monitoring.GetMeshIstioService.Invoke(new()
/// {
/// MeshUid = "proj-573164786102",
/// ServiceNamespace = "istio-system",
/// ServiceName = "prometheus",
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
/// // Monitors the default MeshIstio service
/// _, err := monitoring.GetMeshIstioService(ctx, &monitoring.GetMeshIstioServiceArgs{
/// MeshUid:          "proj-573164786102",
/// ServiceNamespace: "istio-system",
/// ServiceName:      "prometheus",
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
/// import com.pulumi.gcp.monitoring.inputs.GetMeshIstioServiceArgs;
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
/// // Monitors the default MeshIstio service
/// final var default = MonitoringFunctions.getMeshIstioService(GetMeshIstioServiceArgs.builder()
/// .meshUid("proj-573164786102")
/// .serviceNamespace("istio-system")
/// .serviceName("prometheus")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// # Monitors the default MeshIstio service
/// default:
/// fn::invoke:
/// function: gcp:monitoring:getMeshIstioService
/// arguments:
/// meshUid: proj-573164786102
/// serviceNamespace: istio-system
/// serviceName: prometheus
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetMeshIstioServiceResult> getMeshIstioService(
  GetMeshIstioServiceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:monitoring/getMeshIstioService:getMeshIstioService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMeshIstioServiceResult.fromMap(result);
}

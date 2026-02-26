import 'package:pulumi/pulumi.dart';
import 'get_istio_canonical_service_args.dart';
import 'get_istio_canonical_service_result.dart';

/// A Monitoring Service is the root resource under which operational aspects of a
/// generic service are accessible. A service is some discrete, autonomous, and
/// network-accessible unit, designed to solve an individual concern
///
/// A monitoring Istio Canonical Service is automatically created by GCP to monitor
/// Istio Canonical Services.
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
/// ### Monitoring Istio Canonical Service
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // Monitors the default MeshIstio service
/// const _default = gcp.monitoring.getIstioCanonicalService({
/// meshUid: "proj-573164786102",
/// canonicalServiceNamespace: "istio-system",
/// canonicalService: "prometheus",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # Monitors the default MeshIstio service
/// default = gcp.monitoring.get_istio_canonical_service(mesh_uid="proj-573164786102",
/// canonical_service_namespace="istio-system",
/// canonical_service="prometheus")
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
/// var @default = Gcp.Monitoring.GetIstioCanonicalService.Invoke(new()
/// {
/// MeshUid = "proj-573164786102",
/// CanonicalServiceNamespace = "istio-system",
/// CanonicalService = "prometheus",
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
/// _, err := monitoring.GetIstioCanonicalService(ctx, &monitoring.GetIstioCanonicalServiceArgs{
/// MeshUid:                   "proj-573164786102",
/// CanonicalServiceNamespace: "istio-system",
/// CanonicalService:          "prometheus",
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
/// import com.pulumi.gcp.monitoring.inputs.GetIstioCanonicalServiceArgs;
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
/// final var default = MonitoringFunctions.getIstioCanonicalService(GetIstioCanonicalServiceArgs.builder()
/// .meshUid("proj-573164786102")
/// .canonicalServiceNamespace("istio-system")
/// .canonicalService("prometheus")
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
/// function: gcp:monitoring:getIstioCanonicalService
/// arguments:
/// meshUid: proj-573164786102
/// canonicalServiceNamespace: istio-system
/// canonicalService: prometheus
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetIstioCanonicalServiceResult> getIstioCanonicalService(
  GetIstioCanonicalServiceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:monitoring/getIstioCanonicalService:getIstioCanonicalService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIstioCanonicalServiceResult.fromMap(result);
}

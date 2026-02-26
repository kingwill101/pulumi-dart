import 'package:pulumi/pulumi.dart';
import 'get_uptime_check_ips_result.dart';

/// Returns the list of IP addresses that checkers run from. For more information see
/// the [official documentation](https://cloud.google.com/monitoring/uptime-checks#get-ips).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const ips = gcp.monitoring.getUptimeCheckIPs({});
/// export const ipList = ips.then(ips => ips.uptimeCheckIps);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ips = gcp.monitoring.get_uptime_check_i_ps()
/// pulumi.export("ipList", ips.uptime_check_ips)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var ips = Gcp.Monitoring.GetUptimeCheckIPs.Invoke();
///
/// return new Dictionary<string, object?>
/// {
/// ["ipList"] = ips.Apply(getUptimeCheckIPsResult => getUptimeCheckIPsResult.UptimeCheckIps),
/// };
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
/// ips, err := monitoring.GetUptimeCheckIPs(ctx, map[string]interface{}{}, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("ipList", ips.UptimeCheckIps)
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
/// final var ips = MonitoringFunctions.getUptimeCheckIPs(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
/// ctx.export("ipList", ips.uptimeCheckIps());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// ips:
/// fn::invoke:
/// function: gcp:monitoring:getUptimeCheckIPs
/// arguments: {}
/// outputs:
/// ipList: ${ips.uptimeCheckIps}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetUptimeCheckIPsResult> getUptimeCheckIPs({
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:monitoring/getUptimeCheckIPs:getUptimeCheckIPs',
    const <String, dynamic>{},
    options: toDeploymentInvokeOptions(options),
  );
  return GetUptimeCheckIPsResult.fromMap(result);
}

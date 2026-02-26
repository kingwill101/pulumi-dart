import 'package:pulumi/pulumi.dart';
import '../security_scan_config_authentication/security_scan_config_authentication.dart';
import '../security_scan_config_schedule/security_scan_config_schedule.dart';
import 'security_scan_config_args.dart';

/// A ScanConfig resource contains the configurations to launch a scan.
///
/// To get more information about ScanConfig, see:
///
/// * [API documentation](https://cloud.google.com/security-scanner/docs/reference/rest/v1beta/projects.scanConfigs)
/// * How-to Guides
/// * [Using Cloud Security Scanner](https://cloud.google.com/security-scanner/docs/scanning)
///
///
///
/// ## Example Usage
///
/// ### Scan Config Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const scannerStaticIp = new gcp.compute.Address("scanner_static_ip", {name: "scan-basic-static-ip"});
/// const scan_config = new gcp.compute.SecurityScanConfig("scan-config", {
/// displayName: "scan-config",
/// startingUrls: [pulumi.interpolate`http://${scannerStaticIp.address}`],
/// targetPlatforms: ["COMPUTE"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// scanner_static_ip = gcp.compute.Address("scanner_static_ip", name="scan-basic-static-ip")
/// scan_config = gcp.compute.SecurityScanConfig("scan-config",
/// display_name="scan-config",
/// starting_urls=[scanner_static_ip.address.apply(lambda address: f"http://{address}")],
/// target_platforms=["COMPUTE"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var scannerStaticIp = new Gcp.Compute.Address("scanner_static_ip", new()
/// {
/// Name = "scan-basic-static-ip",
/// });
///
/// var scan_config = new Gcp.Compute.SecurityScanConfig("scan-config", new()
/// {
/// DisplayName = "scan-config",
/// StartingUrls = new[]
/// {
/// scannerStaticIp.IPAddress.Apply(address => $"http://{address}"),
/// },
/// TargetPlatforms = new[]
/// {
/// "COMPUTE",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// scannerStaticIp, err := compute.NewAddress(ctx, "scanner_static_ip", &compute.AddressArgs{
/// Name: pulumi.String("scan-basic-static-ip"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewSecurityScanConfig(ctx, "scan-config", &compute.SecurityScanConfigArgs{
/// DisplayName: pulumi.String("scan-config"),
/// StartingUrls: pulumi.StringArray{
/// scannerStaticIp.Address.ApplyT(func(address string) (string, error) {
/// return fmt.Sprintf("http://%v", address), nil
/// }).(pulumi.StringOutput),
/// },
/// TargetPlatforms: pulumi.StringArray{
/// pulumi.String("COMPUTE"),
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
/// import com.pulumi.gcp.compute.Address;
/// import com.pulumi.gcp.compute.AddressArgs;
/// import com.pulumi.gcp.compute.SecurityScanConfig;
/// import com.pulumi.gcp.compute.SecurityScanConfigArgs;
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
/// var scannerStaticIp = new Address("scannerStaticIp", AddressArgs.builder()
/// .name("scan-basic-static-ip")
/// .build());
///
/// var scan_config = new SecurityScanConfig("scan-config", SecurityScanConfigArgs.builder()
/// .displayName("scan-config")
/// .startingUrls(scannerStaticIp.address().applyValue(_address -> String.format("http://%s", _address)))
/// .targetPlatforms("COMPUTE")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// scannerStaticIp:
/// type: gcp:compute:Address
/// name: scanner_static_ip
/// properties:
/// name: scan-basic-static-ip
/// scan-config:
/// type: gcp:compute:SecurityScanConfig
/// properties:
/// displayName: scan-config
/// startingUrls:
/// - http://${scannerStaticIp.address}
/// targetPlatforms:
/// - COMPUTE
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ScanConfig can be imported using any of these accepted formats:
///
/// * `{{project}}/{{name}}`
///
/// * `{{project}} {{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, ScanConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/securityScanConfig:SecurityScanConfig default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/securityScanConfig:SecurityScanConfig default "{{project}} {{name}}"
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/securityScanConfig:SecurityScanConfig default {{name}}
/// ```
class SecurityScanConfig extends CustomResource {
  /// The authentication configuration.
  /// If specified, service will use the authentication configuration during scanning.
  /// Structure is documented below.
  late final Output<SecurityScanConfigAuthentication?> authentication;

  /// The blacklist URL patterns as described in
  /// https://cloud.google.com/security-scanner/docs/excluded-urls
  late final Output<List<String>?> blacklistPatterns;

  /// The user provider display name of the ScanConfig.
  late final Output<String> displayName;

  /// Controls export of scan configurations and results to Cloud Security Command Center.
  /// Default value is `ENABLED`.
  /// Possible values are: `ENABLED`, `DISABLED`.
  late final Output<String?> exportToSecurityCommandCenter;

  /// The maximum QPS during scanning. A valid value ranges from 5 to 20 inclusively.
  /// Defaults to 15.
  late final Output<int?> maxQps;

  /// A server defined name for this index. Format:
  /// `projects/{{project}}/scanConfigs/{{server_generated_id}}`
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The schedule of the ScanConfig
  /// Structure is documented below.
  late final Output<SecurityScanConfigSchedule?> schedule;

  /// The starting URLs from which the scanner finds site pages.
  late final Output<List<String>> startingUrls;

  /// Set of Cloud Platforms targeted by the scan. If empty, APP_ENGINE will be used as a default.
  /// Each value may be one of: `APP_ENGINE`, `COMPUTE`.
  late final Output<List<String>?> targetPlatforms;

  /// Type of the user agents used for scanning
  /// Default value is `CHROME_LINUX`.
  /// Possible values are: `USER_AGENT_UNSPECIFIED`, `CHROME_LINUX`, `CHROME_ANDROID`, `SAFARI_IPHONE`.
  late final Output<String?> userAgent;

  SecurityScanConfig(
    String name, {
    SecurityScanConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/securityScanConfig:SecurityScanConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.authentication =
        Output.createUnknown<SecurityScanConfigAuthentication?>();
    this.blacklistPatterns = Output.createUnknown<List<String>?>();
    this.displayName = Output.createUnknown<String>();
    this.exportToSecurityCommandCenter = Output.createUnknown<String?>();
    this.maxQps = Output.createUnknown<int?>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.schedule = Output.createUnknown<SecurityScanConfigSchedule?>();
    this.startingUrls = Output.createUnknown<List<String>>();
    this.targetPlatforms = Output.createUnknown<List<String>?>();
    this.userAgent = Output.createUnknown<String?>();
  }
}

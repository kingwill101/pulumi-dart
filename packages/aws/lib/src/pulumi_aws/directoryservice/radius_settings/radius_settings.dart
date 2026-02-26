import 'package:pulumi/pulumi.dart';
import 'radius_settings_args.dart';

/// Manages a directory's multi-factor authentication (MFA) using a Remote Authentication Dial In User Service (RADIUS) server.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.directoryservice.RadiusSettings("example", {
/// directoryId: exampleAwsDirectoryServiceDirectory.id,
/// authenticationProtocol: "PAP",
/// displayLabel: "example",
/// radiusPort: 1812,
/// radiusRetries: 4,
/// radiusServers: ["10.0.1.5"],
/// radiusTimeout: 1,
/// sharedSecret: "12345678",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.directoryservice.RadiusSettings("example",
/// directory_id=example_aws_directory_service_directory["id"],
/// authentication_protocol="PAP",
/// display_label="example",
/// radius_port=1812,
/// radius_retries=4,
/// radius_servers=["10.0.1.5"],
/// radius_timeout=1,
/// shared_secret="12345678")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.DirectoryService.RadiusSettings("example", new()
/// {
/// DirectoryId = exampleAwsDirectoryServiceDirectory.Id,
/// AuthenticationProtocol = "PAP",
/// DisplayLabel = "example",
/// RadiusPort = 1812,
/// RadiusRetries = 4,
/// RadiusServers = new[]
/// {
/// "10.0.1.5",
/// },
/// RadiusTimeout = 1,
/// SharedSecret = "12345678",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directoryservice"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := directoryservice.NewRadiusSettings(ctx, "example", &directoryservice.RadiusSettingsArgs{
/// DirectoryId:            pulumi.Any(exampleAwsDirectoryServiceDirectory.Id),
/// AuthenticationProtocol: pulumi.String("PAP"),
/// DisplayLabel:           pulumi.String("example"),
/// RadiusPort:             pulumi.Int(1812),
/// RadiusRetries:          pulumi.Int(4),
/// RadiusServers: pulumi.StringArray{
/// pulumi.String("10.0.1.5"),
/// },
/// RadiusTimeout: pulumi.Int(1),
/// SharedSecret:  pulumi.String("12345678"),
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
/// import com.pulumi.aws.directoryservice.RadiusSettings;
/// import com.pulumi.aws.directoryservice.RadiusSettingsArgs;
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
/// var example = new RadiusSettings("example", RadiusSettingsArgs.builder()
/// .directoryId(exampleAwsDirectoryServiceDirectory.id())
/// .authenticationProtocol("PAP")
/// .displayLabel("example")
/// .radiusPort(1812)
/// .radiusRetries(4)
/// .radiusServers("10.0.1.5")
/// .radiusTimeout(1)
/// .sharedSecret("12345678")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:directoryservice:RadiusSettings
/// properties:
/// directoryId: ${exampleAwsDirectoryServiceDirectory.id}
/// authenticationProtocol: PAP
/// displayLabel: example
/// radiusPort: 1812
/// radiusRetries: 4
/// radiusServers:
/// - 10.0.1.5
/// radiusTimeout: 1
/// sharedSecret: '12345678'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import RADIUS settings using the directory ID. For example:
///
/// ```sh
/// $ pulumi import aws:directoryservice/radiusSettings:RadiusSettings example d-926724cf57
/// ```
class RadiusSettings extends CustomResource {
  /// The protocol specified for your RADIUS endpoints. Valid values: `PAP`, `CHAP`, `MS-CHAPv1`, `MS-CHAPv2`.
  late final Output<String> authenticationProtocol;

  /// The identifier of the directory for which you want to manager RADIUS settings.
  late final Output<String> directoryId;

  /// Display label.
  late final Output<String> displayLabel;

  /// The port that your RADIUS server is using for communications. Your self-managed network must allow inbound traffic over this port from the AWS Directory Service servers.
  late final Output<int> radiusPort;

  /// The maximum number of times that communication with the RADIUS server is attempted. Minimum value of <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>. Maximum value of <span pulumi-lang-nodejs="`10`" pulumi-lang-dotnet="`10`" pulumi-lang-go="`10`" pulumi-lang-python="`10`" pulumi-lang-yaml="`10`" pulumi-lang-java="`10`">`10`</span>.
  late final Output<int> radiusRetries;

  /// An array of strings that contains the fully qualified domain name (FQDN) or IP addresses of the RADIUS server endpoints, or the FQDN or IP addresses of your RADIUS server load balancer.
  late final Output<List<String>> radiusServers;

  /// The amount of time, in seconds, to wait for the RADIUS server to respond. Minimum value of <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>. Maximum value of <span pulumi-lang-nodejs="`50`" pulumi-lang-dotnet="`50`" pulumi-lang-go="`50`" pulumi-lang-python="`50`" pulumi-lang-yaml="`50`" pulumi-lang-java="`50`">`50`</span>.
  late final Output<int> radiusTimeout;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Required for enabling RADIUS on the directory.
  late final Output<String> sharedSecret;

  /// Not currently used.
  late final Output<bool?> useSameUsername;

  RadiusSettings(
    String name, {
    RadiusSettingsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:directoryservice/radiusSettings:RadiusSettings',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.authenticationProtocol =
        registerOutput<String>('authenticationProtocol');
    this.directoryId = registerOutput<String>('directoryId');
    this.displayLabel = registerOutput<String>('displayLabel');
    this.radiusPort = registerOutput<int>('radiusPort');
    this.radiusRetries = registerOutput<int>('radiusRetries');
    this.radiusServers = registerOutput<List<String>>('radiusServers');
    this.radiusTimeout = registerOutput<int>('radiusTimeout');
    this.region = registerOutput<String>('region');
    this.sharedSecret = registerOutput<String>('sharedSecret');
    this.useSameUsername = registerOutput<bool?>('useSameUsername');
  }
}

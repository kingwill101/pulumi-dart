import 'package:pulumi/pulumi.dart';
import '../accelerator_attributes/accelerator_attributes.dart';
import '../accelerator_ip_set/accelerator_ip_set.dart';
import 'accelerator_args.dart';

/// Creates a Global Accelerator accelerator.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.globalaccelerator.Accelerator("example", {
/// name: "Example",
/// ipAddressType: "IPV4",
/// ipAddresses: ["1.2.3.4"],
/// enabled: true,
/// attributes: {
/// flowLogsEnabled: true,
/// flowLogsS3Bucket: "example-bucket",
/// flowLogsS3Prefix: "flow-logs/",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.globalaccelerator.Accelerator("example",
/// name="Example",
/// ip_address_type="IPV4",
/// ip_addresses=["1.2.3.4"],
/// enabled=True,
/// attributes={
/// "flow_logs_enabled": True,
/// "flow_logs_s3_bucket": "example-bucket",
/// "flow_logs_s3_prefix": "flow-logs/",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.GlobalAccelerator.Accelerator("example", new()
/// {
/// Name = "Example",
/// IpAddressType = "IPV4",
/// IpAddresses = new[]
/// {
/// "1.2.3.4",
/// },
/// Enabled = true,
/// Attributes = new Aws.GlobalAccelerator.Inputs.AcceleratorAttributesArgs
/// {
/// FlowLogsEnabled = true,
/// FlowLogsS3Bucket = "example-bucket",
/// FlowLogsS3Prefix = "flow-logs/",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/globalaccelerator"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := globalaccelerator.NewAccelerator(ctx, "example", &globalaccelerator.AcceleratorArgs{
/// Name:          pulumi.String("Example"),
/// IpAddressType: pulumi.String("IPV4"),
/// IpAddresses: pulumi.StringArray{
/// pulumi.String("1.2.3.4"),
/// },
/// Enabled: pulumi.Bool(true),
/// Attributes: &globalaccelerator.AcceleratorAttributesArgs{
/// FlowLogsEnabled:  pulumi.Bool(true),
/// FlowLogsS3Bucket: pulumi.String("example-bucket"),
/// FlowLogsS3Prefix: pulumi.String("flow-logs/"),
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
/// import com.pulumi.aws.globalaccelerator.Accelerator;
/// import com.pulumi.aws.globalaccelerator.AcceleratorArgs;
/// import com.pulumi.aws.globalaccelerator.inputs.AcceleratorAttributesArgs;
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
/// var example = new Accelerator("example", AcceleratorArgs.builder()
/// .name("Example")
/// .ipAddressType("IPV4")
/// .ipAddresses("1.2.3.4")
/// .enabled(true)
/// .attributes(AcceleratorAttributesArgs.builder()
/// .flowLogsEnabled(true)
/// .flowLogsS3Bucket("example-bucket")
/// .flowLogsS3Prefix("flow-logs/")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:globalaccelerator:Accelerator
/// properties:
/// name: Example
/// ipAddressType: IPV4
/// ipAddresses:
/// - 1.2.3.4
/// enabled: true
/// attributes:
/// flowLogsEnabled: true
/// flowLogsS3Bucket: example-bucket
/// flowLogsS3Prefix: flow-logs/
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the Global Accelerator accelerator.
///
///
/// Using `pulumi import`, import Global Accelerator accelerators using the <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:globalaccelerator/accelerator:Accelerator example arn:aws:globalaccelerator::111111111111:accelerator/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
/// ```
class Accelerator extends CustomResource {
  /// The Amazon Resource Name (ARN) of the accelerator.
  late final Output<String> arn;

  /// The attributes of the accelerator. Fields documented below.
  late final Output<AcceleratorAttributes?> attributes;

  /// The DNS name of the accelerator. For example, `a5d53ff5ee6bca4ce.awsglobalaccelerator.com`.
  late final Output<String> dnsName;

  /// The Domain Name System (DNS) name that Global Accelerator creates that points to a dual-stack accelerator's four static IP addresses: two IPv4 addresses and two IPv6 addresses. For example, `a1234567890abcdef.dualstack.awsglobalaccelerator.com`.
  late final Output<String> dualStackDnsName;

  /// Indicates whether the accelerator is enabled. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. Valid values: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> enabled;

  /// -  The Global Accelerator Route 53 zone ID that can be used to
  /// route an [Alias Resource Record Set](https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html) to the Global Accelerator. This attribute
  /// is simply an alias for the zone ID `Z2BJ6XQ5FK7U4H`.
  late final Output<String> hostedZoneId;

  /// The value for the address type. Defaults to `IPV4`. Valid values: `IPV4`, `DUAL_STACK`.
  late final Output<String?> ipAddressType;

  /// The IP addresses to use for BYOIP accelerators. If not specified, the service assigns IP addresses. Valid values: 1 or 2 IPv4 addresses.
  late final Output<List<String>?> ipAddresses;

  /// IP address set associated with the accelerator.
  late final Output<List<AcceleratorIpSet>> ipSets;

  /// The name of the accelerator.
  late final Output<String> name;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Accelerator(
    String name, {
    AcceleratorArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:globalaccelerator/accelerator:Accelerator',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.attributes = registerOutput<AcceleratorAttributes?>('attributes');
    this.dnsName = registerOutput<String>('dnsName');
    this.dualStackDnsName = registerOutput<String>('dualStackDnsName');
    this.enabled = registerOutput<bool?>('enabled');
    this.hostedZoneId = registerOutput<String>('hostedZoneId');
    this.ipAddressType = registerOutput<String?>('ipAddressType');
    this.ipAddresses = registerOutput<List<String>?>('ipAddresses');
    this.ipSets = registerOutput<List<AcceleratorIpSet>>('ipSets');
    this.name = registerOutput<String>('name');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}

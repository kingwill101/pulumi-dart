import 'package:pulumi/pulumi.dart';
import 'license_configuration_args.dart';

/// Provides a License Manager license configuration resource.
///
/// > **Note:** Removing the <span pulumi-lang-nodejs="`licenseCount`" pulumi-lang-dotnet="`LicenseCount`" pulumi-lang-go="`licenseCount`" pulumi-lang-python="`license_count`" pulumi-lang-yaml="`licenseCount`" pulumi-lang-java="`licenseCount`">`license_count`</span> attribute is not supported by the License Manager API.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.licensemanager.LicenseConfiguration("example", {
/// name: "Example",
/// description: "Example",
/// licenseCount: 10,
/// licenseCountHardLimit: true,
/// licenseCountingType: "Socket",
/// licenseRules: ["#minimumSockets=2"],
/// tags: {
/// foo: "barr",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.licensemanager.LicenseConfiguration("example",
/// name="Example",
/// description="Example",
/// license_count=10,
/// license_count_hard_limit=True,
/// license_counting_type="Socket",
/// license_rules=["#minimumSockets=2"],
/// tags={
/// "foo": "barr",
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
/// var example = new Aws.LicenseManager.LicenseConfiguration("example", new()
/// {
/// Name = "Example",
/// Description = "Example",
/// LicenseCount = 10,
/// LicenseCountHardLimit = true,
/// LicenseCountingType = "Socket",
/// LicenseRules = new[]
/// {
/// "#minimumSockets=2",
/// },
/// Tags =
/// {
/// { "foo", "barr" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/licensemanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := licensemanager.NewLicenseConfiguration(ctx, "example", &licensemanager.LicenseConfigurationArgs{
/// Name:                  pulumi.String("Example"),
/// Description:           pulumi.String("Example"),
/// LicenseCount:          pulumi.Int(10),
/// LicenseCountHardLimit: pulumi.Bool(true),
/// LicenseCountingType:   pulumi.String("Socket"),
/// LicenseRules: pulumi.StringArray{
/// pulumi.String("#minimumSockets=2"),
/// },
/// Tags: pulumi.StringMap{
/// "foo": pulumi.String("barr"),
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
/// import com.pulumi.aws.licensemanager.LicenseConfiguration;
/// import com.pulumi.aws.licensemanager.LicenseConfigurationArgs;
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
/// var example = new LicenseConfiguration("example", LicenseConfigurationArgs.builder()
/// .name("Example")
/// .description("Example")
/// .licenseCount(10)
/// .licenseCountHardLimit(true)
/// .licenseCountingType("Socket")
/// .licenseRules("#minimumSockets=2")
/// .tags(Map.of("foo", "barr"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:licensemanager:LicenseConfiguration
/// properties:
/// name: Example
/// description: Example
/// licenseCount: 10
/// licenseCountHardLimit: true
/// licenseCountingType: Socket
/// licenseRules:
/// - '#minimumSockets=2'
/// tags:
/// foo: barr
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Rules
///
/// License rules should be in the format of `#RuleType=RuleValue`. Supported rule types:
///
/// * `minimumVcpus` - Resource must have minimum vCPU count in order to use the license. Default: 1
/// * `maximumVcpus` - Resource must have maximum vCPU count in order to use the license. Default: unbounded, limit: 10000
/// * `minimumCores` - Resource must have minimum core count in order to use the license. Default: 1
/// * `maximumCores` - Resource must have maximum core count in order to use the license. Default: unbounded, limit: 10000
/// * `minimumSockets` - Resource must have minimum socket count in order to use the license. Default: 1
/// * `maximumSockets` - Resource must have maximum socket count in order to use the license. Default: unbounded, limit: 10000
/// * `allowedTenancy` - Defines where the license can be used. If set, restricts license usage to selected tenancies. Specify a comma delimited list of `EC2-Default`, `EC2-DedicatedHost`, `EC2-DedicatedInstance`
///
/// ## Import
///
/// Using `pulumi import`, import license configurations using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:licensemanager/licenseConfiguration:LicenseConfiguration example arn:aws:license-manager:eu-west-1:123456789012:license-configuration:lic-0123456789abcdef0123456789abcdef
/// ```
class LicenseConfiguration extends CustomResource {
  /// The license configuration ARN.
  late final Output<String> arn;

  /// Description of the license configuration.
  late final Output<String?> description;

  /// Number of licenses managed by the license configuration.
  late final Output<int?> licenseCount;

  /// Sets the number of available licenses as a hard limit.
  late final Output<bool?> licenseCountHardLimit;

  /// Dimension to use to track license inventory. Specify either `vCPU`, `Instance`, `Core` or `Socket`.
  late final Output<String> licenseCountingType;

  /// Array of configured License Manager rules.
  late final Output<List<String>?> licenseRules;

  /// Name of the license configuration.
  late final Output<String> name;

  /// Account ID of the owner of the license configuration.
  late final Output<String> ownerAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  LicenseConfiguration(
    String name, {
    LicenseConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:licensemanager/licenseConfiguration:LicenseConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.licenseCount = Output.createUnknown<int?>();
    this.licenseCountHardLimit = Output.createUnknown<bool?>();
    this.licenseCountingType = Output.createUnknown<String>();
    this.licenseRules = Output.createUnknown<List<String>?>();
    this.name = Output.createUnknown<String>();
    this.ownerAccountId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}

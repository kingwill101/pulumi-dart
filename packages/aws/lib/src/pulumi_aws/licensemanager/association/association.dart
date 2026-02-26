import 'package:pulumi/pulumi.dart';
import 'association_args.dart';

/// Provides a License Manager association.
///
/// > **Note:** License configurations can also be associated with launch templates by specifying the <span pulumi-lang-nodejs="`licenseSpecifications`" pulumi-lang-dotnet="`LicenseSpecifications`" pulumi-lang-go="`licenseSpecifications`" pulumi-lang-python="`license_specifications`" pulumi-lang-yaml="`licenseSpecifications`" pulumi-lang-java="`licenseSpecifications`">`license_specifications`</span> block for an <span pulumi-lang-nodejs="`aws.ec2.LaunchTemplate`" pulumi-lang-dotnet="`aws.ec2.LaunchTemplate`" pulumi-lang-go="`ec2.LaunchTemplate`" pulumi-lang-python="`ec2.LaunchTemplate`" pulumi-lang-yaml="`aws.ec2.LaunchTemplate`" pulumi-lang-java="`aws.ec2.LaunchTemplate`">`aws.ec2.LaunchTemplate`</span>.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getAmi({
/// mostRecent: true,
/// owners: ["amazon"],
/// filters: [{
/// name: "name",
/// values: ["amzn-ami-vpc-nat*"],
/// }],
/// });
/// const exampleInstance = new aws.ec2.Instance("example", {
/// ami: example.then(example => example.id),
/// instanceType: aws.ec2.InstanceType.T2_Micro,
/// });
/// const exampleLicenseConfiguration = new aws.licensemanager.LicenseConfiguration("example", {
/// name: "Example",
/// licenseCountingType: "Instance",
/// });
/// const exampleAssociation = new aws.licensemanager.Association("example", {
/// licenseConfigurationArn: exampleLicenseConfiguration.arn,
/// resourceArn: exampleInstance.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_ami(most_recent=True,
/// owners=["amazon"],
/// filters=[{
/// "name": "name",
/// "values": ["amzn-ami-vpc-nat*"],
/// }])
/// example_instance = aws.ec2.Instance("example",
/// ami=example.id,
/// instance_type=aws.ec2.InstanceType.T2_MICRO)
/// example_license_configuration = aws.licensemanager.LicenseConfiguration("example",
/// name="Example",
/// license_counting_type="Instance")
/// example_association = aws.licensemanager.Association("example",
/// license_configuration_arn=example_license_configuration.arn,
/// resource_arn=example_instance.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ec2.GetAmi.Invoke(new()
/// {
/// MostRecent = true,
/// Owners = new[]
/// {
/// "amazon",
/// },
/// Filters = new[]
/// {
/// new Aws.Ec2.Inputs.GetAmiFilterInputArgs
/// {
/// Name = "name",
/// Values = new[]
/// {
/// "amzn-ami-vpc-nat*",
/// },
/// },
/// },
/// });
///
/// var exampleInstance = new Aws.Ec2.Instance("example", new()
/// {
/// Ami = example.Apply(getAmiResult => getAmiResult.Id),
/// InstanceType = Aws.Ec2.InstanceType.T2_Micro,
/// });
///
/// var exampleLicenseConfiguration = new Aws.LicenseManager.LicenseConfiguration("example", new()
/// {
/// Name = "Example",
/// LicenseCountingType = "Instance",
/// });
///
/// var exampleAssociation = new Aws.LicenseManager.Association("example", new()
/// {
/// LicenseConfigurationArn = exampleLicenseConfiguration.Arn,
/// ResourceArn = exampleInstance.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/licensemanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := ec2.LookupAmi(ctx, &ec2.LookupAmiArgs{
/// MostRecent: pulumi.BoolRef(true),
/// Owners: []string{
/// "amazon",
/// },
/// Filters: []ec2.GetAmiFilter{
/// {
/// Name: "name",
/// Values: []string{
/// "amzn-ami-vpc-nat*",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// exampleInstance, err := ec2.NewInstance(ctx, "example", &ec2.InstanceArgs{
/// Ami:          pulumi.String(example.Id),
/// InstanceType: pulumi.String(ec2.InstanceType_T2_Micro),
/// })
/// if err != nil {
/// return err
/// }
/// exampleLicenseConfiguration, err := licensemanager.NewLicenseConfiguration(ctx, "example", &licensemanager.LicenseConfigurationArgs{
/// Name:                pulumi.String("Example"),
/// LicenseCountingType: pulumi.String("Instance"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = licensemanager.NewAssociation(ctx, "example", &licensemanager.AssociationArgs{
/// LicenseConfigurationArn: exampleLicenseConfiguration.Arn,
/// ResourceArn:             exampleInstance.Arn,
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
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetAmiArgs;
/// import com.pulumi.aws.ec2.Instance;
/// import com.pulumi.aws.ec2.InstanceArgs;
/// import com.pulumi.aws.licensemanager.LicenseConfiguration;
/// import com.pulumi.aws.licensemanager.LicenseConfigurationArgs;
/// import com.pulumi.aws.licensemanager.Association;
/// import com.pulumi.aws.licensemanager.AssociationArgs;
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
/// final var example = Ec2Functions.getAmi(GetAmiArgs.builder()
/// .mostRecent(true)
/// .owners("amazon")
/// .filters(GetAmiFilterArgs.builder()
/// .name("name")
/// .values("amzn-ami-vpc-nat*")
/// .build())
/// .build());
///
/// var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
/// .ami(example.id())
/// .instanceType("t2.micro")
/// .build());
///
/// var exampleLicenseConfiguration = new LicenseConfiguration("exampleLicenseConfiguration", LicenseConfigurationArgs.builder()
/// .name("Example")
/// .licenseCountingType("Instance")
/// .build());
///
/// var exampleAssociation = new Association("exampleAssociation", AssociationArgs.builder()
/// .licenseConfigurationArn(exampleLicenseConfiguration.arn())
/// .resourceArn(exampleInstance.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleInstance:
/// type: aws:ec2:Instance
/// name: example
/// properties:
/// ami: ${example.id}
/// instanceType: t2.micro
/// exampleLicenseConfiguration:
/// type: aws:licensemanager:LicenseConfiguration
/// name: example
/// properties:
/// name: Example
/// licenseCountingType: Instance
/// exampleAssociation:
/// type: aws:licensemanager:Association
/// name: example
/// properties:
/// licenseConfigurationArn: ${exampleLicenseConfiguration.arn}
/// resourceArn: ${exampleInstance.arn}
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ec2:getAmi
/// arguments:
/// mostRecent: true
/// owners:
/// - amazon
/// filters:
/// - name: name
/// values:
/// - amzn-ami-vpc-nat*
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import license configurations using `resource_arn,license_configuration_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:licensemanager/association:Association example arn:aws:ec2:eu-west-1:123456789012:image/ami-123456789abcdef01,arn:aws:license-manager:eu-west-1:123456789012:license-configuration:lic-0123456789abcdef0123456789abcdef
/// ```
class Association extends CustomResource {
  /// ARN of the license configuration.
  late final Output<String> licenseConfigurationArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of the resource associated with the license configuration.
  late final Output<String> resourceArn;

  Association(
    String name, {
    AssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:licensemanager/association:Association',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.licenseConfigurationArn = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.resourceArn = Output.createUnknown<String>();
  }
}

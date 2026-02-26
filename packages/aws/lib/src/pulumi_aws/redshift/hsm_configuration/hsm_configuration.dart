import 'package:pulumi/pulumi.dart';
import 'hsm_configuration_args.dart';

/// Creates an HSM configuration that contains the information required by an Amazon Redshift cluster to store and use database encryption keys in a Hardware Security Module (HSM).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.redshift.HsmConfiguration("example", {
/// description: "example",
/// hsmConfigurationIdentifier: "example",
/// hsmIpAddress: "10.0.0.1",
/// hsmPartitionName: "aws",
/// hsmPartitionPassword: "example",
/// hsmServerPublicCertificate: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshift.HsmConfiguration("example",
/// description="example",
/// hsm_configuration_identifier="example",
/// hsm_ip_address="10.0.0.1",
/// hsm_partition_name="aws",
/// hsm_partition_password="example",
/// hsm_server_public_certificate="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.RedShift.HsmConfiguration("example", new()
/// {
/// Description = "example",
/// HsmConfigurationIdentifier = "example",
/// HsmIpAddress = "10.0.0.1",
/// HsmPartitionName = "aws",
/// HsmPartitionPassword = "example",
/// HsmServerPublicCertificate = "example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := redshift.NewHsmConfiguration(ctx, "example", &redshift.HsmConfigurationArgs{
/// Description:                pulumi.String("example"),
/// HsmConfigurationIdentifier: pulumi.String("example"),
/// HsmIpAddress:               pulumi.String("10.0.0.1"),
/// HsmPartitionName:           pulumi.String("aws"),
/// HsmPartitionPassword:       pulumi.String("example"),
/// HsmServerPublicCertificate: pulumi.String("example"),
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
/// import com.pulumi.aws.redshift.HsmConfiguration;
/// import com.pulumi.aws.redshift.HsmConfigurationArgs;
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
/// var example = new HsmConfiguration("example", HsmConfigurationArgs.builder()
/// .description("example")
/// .hsmConfigurationIdentifier("example")
/// .hsmIpAddress("10.0.0.1")
/// .hsmPartitionName("aws")
/// .hsmPartitionPassword("example")
/// .hsmServerPublicCertificate("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:redshift:HsmConfiguration
/// properties:
/// description: example
/// hsmConfigurationIdentifier: example
/// hsmIpAddress: 10.0.0.1
/// hsmPartitionName: aws
/// hsmPartitionPassword: example
/// hsmServerPublicCertificate: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Redshift HSM Client Certificates using <span pulumi-lang-nodejs="`hsmConfigurationIdentifier`" pulumi-lang-dotnet="`HsmConfigurationIdentifier`" pulumi-lang-go="`hsmConfigurationIdentifier`" pulumi-lang-python="`hsm_configuration_identifier`" pulumi-lang-yaml="`hsmConfigurationIdentifier`" pulumi-lang-java="`hsmConfigurationIdentifier`">`hsm_configuration_identifier`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/hsmConfiguration:HsmConfiguration example example
/// ```
class HsmConfiguration extends CustomResource {
  /// Amazon Resource Name (ARN) of the Hsm Client Certificate.
  late final Output<String> arn;

  /// A text description of the HSM configuration to be created.
  late final Output<String> description;

  /// The identifier to be assigned to the new Amazon Redshift HSM configuration.
  late final Output<String> hsmConfigurationIdentifier;

  /// The IP address that the Amazon Redshift cluster must use to access the HSM.
  late final Output<String> hsmIpAddress;

  /// The name of the partition in the HSM where the Amazon Redshift clusters will store their database encryption keys.
  late final Output<String> hsmPartitionName;

  /// The password required to access the HSM partition.
  late final Output<String> hsmPartitionPassword;

  /// The HSMs public certificate file. When using Cloud HSM, the file name is server.pem.
  late final Output<String> hsmServerPublicCertificate;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  HsmConfiguration(
    String name, {
    HsmConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:redshift/hsmConfiguration:HsmConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String>('description');
    this.hsmConfigurationIdentifier =
        registerOutput<String>('hsmConfigurationIdentifier');
    this.hsmIpAddress = registerOutput<String>('hsmIpAddress');
    this.hsmPartitionName = registerOutput<String>('hsmPartitionName');
    this.hsmPartitionPassword = registerOutput<String>('hsmPartitionPassword');
    this.hsmServerPublicCertificate =
        registerOutput<String>('hsmServerPublicCertificate');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}

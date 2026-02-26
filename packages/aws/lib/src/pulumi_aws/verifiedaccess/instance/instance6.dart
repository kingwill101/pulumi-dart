import 'package:pulumi/pulumi.dart';
import '../instance_verified_access_trust_provider/instance_verified_access_trust_provider.dart';
import 'instance_args6.dart';

/// Resource for managing a Verified Access Instance.
///
/// ## Example Usage
///
/// ### Basic
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.verifiedaccess.Instance("example", {
/// description: "example",
/// tags: {
/// Name: "example",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.verifiedaccess.Instance("example",
/// description="example",
/// tags={
/// "Name": "example",
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
/// var example = new Aws.VerifiedAccess.Instance("example", new()
/// {
/// Description = "example",
/// Tags =
/// {
/// { "Name", "example" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/verifiedaccess"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := verifiedaccess.NewInstance(ctx, "example", &verifiedaccess.InstanceArgs{
/// Description: pulumi.String("example"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("example"),
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
/// import com.pulumi.aws.verifiedaccess.Instance;
/// import com.pulumi.aws.verifiedaccess.InstanceArgs;
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
/// var example = new Instance("example", InstanceArgs.builder()
/// .description("example")
/// .tags(Map.of("Name", "example"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:verifiedaccess:Instance
/// properties:
/// description: example
/// tags:
/// Name: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With <span pulumi-lang-nodejs="`fipsEnabled`" pulumi-lang-dotnet="`FipsEnabled`" pulumi-lang-go="`fipsEnabled`" pulumi-lang-python="`fips_enabled`" pulumi-lang-yaml="`fipsEnabled`" pulumi-lang-java="`fipsEnabled`">`fips_enabled`</span>
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.verifiedaccess.Instance("example", {fipsEnabled: true});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.verifiedaccess.Instance("example", fips_enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.VerifiedAccess.Instance("example", new()
/// {
/// FipsEnabled = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/verifiedaccess"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := verifiedaccess.NewInstance(ctx, "example", &verifiedaccess.InstanceArgs{
/// FipsEnabled: pulumi.Bool(true),
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
/// import com.pulumi.aws.verifiedaccess.Instance;
/// import com.pulumi.aws.verifiedaccess.InstanceArgs;
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
/// var example = new Instance("example", InstanceArgs.builder()
/// .fipsEnabled(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:verifiedaccess:Instance
/// properties:
/// fipsEnabled: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With <span pulumi-lang-nodejs="`cidrEndpointsCustomSubdomain`" pulumi-lang-dotnet="`CidrEndpointsCustomSubdomain`" pulumi-lang-go="`cidrEndpointsCustomSubdomain`" pulumi-lang-python="`cidr_endpoints_custom_subdomain`" pulumi-lang-yaml="`cidrEndpointsCustomSubdomain`" pulumi-lang-java="`cidrEndpointsCustomSubdomain`">`cidr_endpoints_custom_subdomain`</span>
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.verifiedaccess.Instance("example", {cidrEndpointsCustomSubdomain: "test.example.com"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.verifiedaccess.Instance("example", cidr_endpoints_custom_subdomain="test.example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.VerifiedAccess.Instance("example", new()
/// {
/// CidrEndpointsCustomSubdomain = "test.example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/verifiedaccess"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := verifiedaccess.NewInstance(ctx, "example", &verifiedaccess.InstanceArgs{
/// CidrEndpointsCustomSubdomain: pulumi.String("test.example.com"),
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
/// import com.pulumi.aws.verifiedaccess.Instance;
/// import com.pulumi.aws.verifiedaccess.InstanceArgs;
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
/// var example = new Instance("example", InstanceArgs.builder()
/// .cidrEndpointsCustomSubdomain("test.example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:verifiedaccess:Instance
/// properties:
/// cidrEndpointsCustomSubdomain: test.example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Verified Access Instances using the  <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:verifiedaccess/instance:Instance example vai-1234567890abcdef0
/// ```
class Instance6 extends CustomResource {
  /// The custom subdomain for the CIDR endpoints.
  late final Output<String?> cidrEndpointsCustomSubdomain;

  /// The time that the Verified Access Instance was created.
  late final Output<String> creationTime;

  /// A description for the AWS Verified Access Instance.
  late final Output<String?> description;

  /// Enable or disable support for Federal Information Processing Standards (FIPS) on the AWS Verified Access Instance.
  late final Output<bool?> fipsEnabled;

  /// The time that the Verified Access Instance was last updated.
  late final Output<String> lastUpdatedTime;
  late final Output<List<String>> nameServers;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// One or more blocks of providing information about the AWS Verified Access Trust Providers. See<span pulumi-lang-nodejs=" verifiedAccessTrustProviders " pulumi-lang-dotnet=" VerifiedAccessTrustProviders " pulumi-lang-go=" verifiedAccessTrustProviders " pulumi-lang-python=" verified_access_trust_providers " pulumi-lang-yaml=" verifiedAccessTrustProviders " pulumi-lang-java=" verifiedAccessTrustProviders "> verified_access_trust_providers </span>below for details.One or more blocks
  late final Output<List<InstanceVerifiedAccessTrustProvider>>
      verifiedAccessTrustProviders;

  Instance6(
    String name, {
    InstanceArgs6? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:verifiedaccess/instance:Instance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.cidrEndpointsCustomSubdomain = Output.createUnknown<String?>();
    this.creationTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.fipsEnabled = Output.createUnknown<bool?>();
    this.lastUpdatedTime = Output.createUnknown<String>();
    this.nameServers = Output.createUnknown<List<String>>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.verifiedAccessTrustProviders =
        Output.createUnknown<List<InstanceVerifiedAccessTrustProvider>>();
  }
}

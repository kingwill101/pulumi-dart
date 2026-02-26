import 'package:pulumi/pulumi.dart';
import 'tag_args7.dart';

/// Manages an individual Transfer Family resource tag. This resource should only be used in cases where Transfer Family resources are created outside the provider (e.g., Servers without AWS Management Console) or the tag key has the `aws:` prefix.
///
/// > **NOTE:** This tagging resource should not be combined with the resource for managing the parent resource. For example, using <span pulumi-lang-nodejs="`aws.transfer.Server`" pulumi-lang-dotnet="`aws.transfer.Server`" pulumi-lang-go="`transfer.Server`" pulumi-lang-python="`transfer.Server`" pulumi-lang-yaml="`aws.transfer.Server`" pulumi-lang-java="`aws.transfer.Server`">`aws.transfer.Server`</span> and <span pulumi-lang-nodejs="`aws.transfer.Tag`" pulumi-lang-dotnet="`aws.transfer.Tag`" pulumi-lang-go="`transfer.Tag`" pulumi-lang-python="`transfer.Tag`" pulumi-lang-yaml="`aws.transfer.Tag`" pulumi-lang-java="`aws.transfer.Tag`">`aws.transfer.Tag`</span> to manage tags of the same server will cause a perpetual difference where the <span pulumi-lang-nodejs="`aws.transfer.Server`" pulumi-lang-dotnet="`aws.transfer.Server`" pulumi-lang-go="`transfer.Server`" pulumi-lang-python="`transfer.Server`" pulumi-lang-yaml="`aws.transfer.Server`" pulumi-lang-java="`aws.transfer.Server`">`aws.transfer.Server`</span> resource will try to remove the tag being added by the <span pulumi-lang-nodejs="`aws.transfer.Tag`" pulumi-lang-dotnet="`aws.transfer.Tag`" pulumi-lang-go="`transfer.Tag`" pulumi-lang-python="`transfer.Tag`" pulumi-lang-yaml="`aws.transfer.Tag`" pulumi-lang-java="`aws.transfer.Tag`">`aws.transfer.Tag`</span> resource.
///
/// > **NOTE:** This tagging resource does not use the provider <span pulumi-lang-nodejs="`ignoreTags`" pulumi-lang-dotnet="`IgnoreTags`" pulumi-lang-go="`ignoreTags`" pulumi-lang-python="`ignore_tags`" pulumi-lang-yaml="`ignoreTags`" pulumi-lang-java="`ignoreTags`">`ignore_tags`</span> configuration.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.transfer.Server("example", {identityProviderType: "SERVICE_MANAGED"});
/// const zoneId = new aws.transfer.Tag("zone_id", {
/// resourceArn: example.arn,
/// key: "transfer:route53HostedZoneId",
/// value: "/hostedzone/MyHostedZoneId",
/// });
/// const hostname = new aws.transfer.Tag("hostname", {
/// resourceArn: example.arn,
/// key: "transfer:customHostname",
/// value: "example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.transfer.Server("example", identity_provider_type="SERVICE_MANAGED")
/// zone_id = aws.transfer.Tag("zone_id",
/// resource_arn=example.arn,
/// key="transfer:route53HostedZoneId",
/// value="/hostedzone/MyHostedZoneId")
/// hostname = aws.transfer.Tag("hostname",
/// resource_arn=example.arn,
/// key="transfer:customHostname",
/// value="example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Transfer.Server("example", new()
/// {
/// IdentityProviderType = "SERVICE_MANAGED",
/// });
///
/// var zoneId = new Aws.Transfer.Tag("zone_id", new()
/// {
/// ResourceArn = example.Arn,
/// Key = "transfer:route53HostedZoneId",
/// Value = "/hostedzone/MyHostedZoneId",
/// });
///
/// var hostname = new Aws.Transfer.Tag("hostname", new()
/// {
/// ResourceArn = example.Arn,
/// Key = "transfer:customHostname",
/// Value = "example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/transfer"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := transfer.NewServer(ctx, "example", &transfer.ServerArgs{
/// IdentityProviderType: pulumi.String("SERVICE_MANAGED"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = transfer.NewTag(ctx, "zone_id", &transfer.TagArgs{
/// ResourceArn: example.Arn,
/// Key:         pulumi.String("transfer:route53HostedZoneId"),
/// Value:       pulumi.String("/hostedzone/MyHostedZoneId"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = transfer.NewTag(ctx, "hostname", &transfer.TagArgs{
/// ResourceArn: example.Arn,
/// Key:         pulumi.String("transfer:customHostname"),
/// Value:       pulumi.String("example.com"),
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
/// import com.pulumi.aws.transfer.Server;
/// import com.pulumi.aws.transfer.ServerArgs;
/// import com.pulumi.aws.transfer.Tag;
/// import com.pulumi.aws.transfer.TagArgs;
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
/// var example = new Server("example", ServerArgs.builder()
/// .identityProviderType("SERVICE_MANAGED")
/// .build());
///
/// var zoneId = new Tag("zoneId", TagArgs.builder()
/// .resourceArn(example.arn())
/// .key("transfer:route53HostedZoneId")
/// .value("/hostedzone/MyHostedZoneId")
/// .build());
///
/// var hostname = new Tag("hostname", TagArgs.builder()
/// .resourceArn(example.arn())
/// .key("transfer:customHostname")
/// .value("example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:transfer:Server
/// properties:
/// identityProviderType: SERVICE_MANAGED
/// zoneId:
/// type: aws:transfer:Tag
/// name: zone_id
/// properties:
/// resourceArn: ${example.arn}
/// key: transfer:route53HostedZoneId
/// value: /hostedzone/MyHostedZoneId
/// hostname:
/// type: aws:transfer:Tag
/// properties:
/// resourceArn: ${example.arn}
/// key: transfer:customHostname
/// value: example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.transfer.Tag`" pulumi-lang-dotnet="`aws.transfer.Tag`" pulumi-lang-go="`transfer.Tag`" pulumi-lang-python="`transfer.Tag`" pulumi-lang-yaml="`aws.transfer.Tag`" pulumi-lang-java="`aws.transfer.Tag`">`aws.transfer.Tag`</span> using the Transfer Family resource identifier and key, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:transfer/tag:Tag example arn:aws:transfer:us-east-1:123456789012:server/s-1234567890abcdef0,Name
/// ```
class Tag7 extends CustomResource {
  /// Tag name.
  late final Output<String> key;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Amazon Resource Name (ARN) of the Transfer Family resource to tag.
  late final Output<String> resourceArn;

  /// Tag value.
  late final Output<String> value;

  Tag7(
    String name, {
    TagArgs7? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:transfer/tag:Tag',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.key = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.resourceArn = Output.createUnknown<String>();
    this.value = Output.createUnknown<String>();
  }
}

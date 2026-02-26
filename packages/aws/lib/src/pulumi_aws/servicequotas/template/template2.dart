import 'package:pulumi/pulumi.dart';
import 'template_args2.dart';

/// Resource for managing an AWS Service Quotas Template.
///
/// > Only the management account of an organization can alter Service Quota templates, and this must be done from the `us-east-1` region.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.servicequotas.Template("example", {
/// awsRegion: "us-east-1",
/// quotaCode: "L-2ACBD22F",
/// serviceCode: "lambda",
/// value: 80,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicequotas.Template("example",
/// aws_region="us-east-1",
/// quota_code="L-2ACBD22F",
/// service_code="lambda",
/// value=80)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.ServiceQuotas.Template("example", new()
/// {
/// AwsRegion = "us-east-1",
/// QuotaCode = "L-2ACBD22F",
/// ServiceCode = "lambda",
/// Value = 80,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicequotas"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := servicequotas.NewTemplate(ctx, "example", &servicequotas.TemplateArgs{
/// AwsRegion:   pulumi.String("us-east-1"),
/// QuotaCode:   pulumi.String("L-2ACBD22F"),
/// ServiceCode: pulumi.String("lambda"),
/// Value:       pulumi.Float64(80),
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
/// import com.pulumi.aws.servicequotas.Template;
/// import com.pulumi.aws.servicequotas.TemplateArgs;
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
/// var example = new Template("example", TemplateArgs.builder()
/// .awsRegion("us-east-1")
/// .quotaCode("L-2ACBD22F")
/// .serviceCode("lambda")
/// .value(80.0)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:servicequotas:Template
/// properties:
/// awsRegion: us-east-1
/// quotaCode: L-2ACBD22F
/// serviceCode: lambda
/// value: '80'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Service Quotas Template using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:servicequotas/template:Template example us-east-1,L-2ACBD22F,lambda
/// ```
class Template2 extends CustomResource {
  /// AWS Region to which the template applies.
  late final Output<String> awsRegion;

  /// Indicates whether the quota is global.
  late final Output<bool> globalQuota;

  /// Quota identifier. To find the quota code for a specific quota, use the<span pulumi-lang-nodejs=" aws.servicequotas.ServiceQuota " pulumi-lang-dotnet=" aws.servicequotas.ServiceQuota " pulumi-lang-go=" servicequotas.ServiceQuota " pulumi-lang-python=" servicequotas.ServiceQuota " pulumi-lang-yaml=" aws.servicequotas.ServiceQuota " pulumi-lang-java=" aws.servicequotas.ServiceQuota "> aws.servicequotas.ServiceQuota </span>data source.
  late final Output<String> quotaCode;

  /// Quota name.
  late final Output<String> quotaName;

  /// AWS Region to which the template applies. Use <span pulumi-lang-nodejs="`aws.getRegion`" pulumi-lang-dotnet="`aws.getRegion`" pulumi-lang-go="`getRegion`" pulumi-lang-python="`get_region`" pulumi-lang-yaml="`aws.getRegion`" pulumi-lang-java="`aws.getRegion`">`aws.getRegion`</span> instead.
  late final Output<String> region;

  /// Service identifier. To find the service code value for an AWS service, use the<span pulumi-lang-nodejs=" aws.servicequotas.getService " pulumi-lang-dotnet=" aws.servicequotas.getService " pulumi-lang-go=" servicequotas.getService " pulumi-lang-python=" servicequotas_get_service " pulumi-lang-yaml=" aws.servicequotas.getService " pulumi-lang-java=" aws.servicequotas.getService "> aws.servicequotas.getService </span>data source.
  late final Output<String> serviceCode;

  /// Service name.
  late final Output<String> serviceName;

  /// Unit of measurement.
  late final Output<String> unit;

  /// The new, increased value for the quota.
  late final Output<double> value;

  Template2(
    String name, {
    TemplateArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:servicequotas/template:Template',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.awsRegion = registerOutput<String>('awsRegion');
    this.globalQuota = registerOutput<bool>('globalQuota');
    this.quotaCode = registerOutput<String>('quotaCode');
    this.quotaName = registerOutput<String>('quotaName');
    this.region = registerOutput<String>('region');
    this.serviceCode = registerOutput<String>('serviceCode');
    this.serviceName = registerOutput<String>('serviceName');
    this.unit = registerOutput<String>('unit');
    this.value = registerOutput<double>('value');
  }
}

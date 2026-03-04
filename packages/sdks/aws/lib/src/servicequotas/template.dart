import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_args.dart';
import 'template_state.dart';

/// Resource for managing an AWS Service Quotas Template.
///
/// &gt; Only the management account of an organization can alter Service Quota templates, and this must be done from the `us-east-1` region.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.servicequotas.Template("example", {
///     awsRegion: "us-east-1",
///     quotaCode: "L-2ACBD22F",
///     serviceCode: "lambda",
///     value: 80,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicequotas.Template("example",
///     aws_region="us-east-1",
///     quota_code="L-2ACBD22F",
///     service_code="lambda",
///     value=80)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ServiceQuotas.Template("example", new()
///     {
///         AwsRegion = "us-east-1",
///         QuotaCode = "L-2ACBD22F",
///         ServiceCode = "lambda",
///         Value = 80,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicequotas"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicequotas.NewTemplate(ctx, "example", &servicequotas.TemplateArgs{
/// 			AwsRegion:   pulumi.String("us-east-1"),
/// 			QuotaCode:   pulumi.String("L-2ACBD22F"),
/// 			ServiceCode: pulumi.String("lambda"),
/// 			Value:       pulumi.Float64(80),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Template("example", TemplateArgs.builder()
///             .awsRegion("us-east-1")
///             .quotaCode("L-2ACBD22F")
///             .serviceCode("lambda")
///             .value(80.0)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:servicequotas:Template
///     properties:
///       awsRegion: us-east-1
///       quotaCode: L-2ACBD22F
///       serviceCode: lambda
///       value: '80'
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Service Quotas Template using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:servicequotas/template:Template example us-east-1,L-2ACBD22F,lambda
/// ```
class Template extends pulumi.CustomResource {
  /// AWS Region to which the template applies.
  late final pulumi.Output<String> awsRegion;

  /// Indicates whether the quota is global.
  late final pulumi.Output<bool> globalQuota;

  /// Quota identifier. To find the quota code for a specific quota, use the aws.servicequotas.ServiceQuota data source.
  late final pulumi.Output<String> quotaCode;

  /// Quota name.
  late final pulumi.Output<String> quotaName;

  /// AWS Region to which the template applies. Use `aws.getRegion` instead.
  late final pulumi.Output<String> region;

  /// Service identifier. To find the service code value for an AWS service, use the aws.servicequotas.getService data source.
  late final pulumi.Output<String> serviceCode;

  /// Service name.
  late final pulumi.Output<String> serviceName;

  /// Unit of measurement.
  late final pulumi.Output<String> unit;

  /// The new, increased value for the quota.
  late final pulumi.Output<double> value;

  /// Creates a new [Template].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Template]. {@macro pulumi_servicequotas_template_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Template(
    String name, {
    TemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:servicequotas/template:Template',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    awsRegion = registerOutput<String>('awsRegion');
    globalQuota = registerOutput<bool>('globalQuota');
    quotaCode = registerOutput<String>('quotaCode');
    quotaName = registerOutput<String>('quotaName');
    region = registerOutput<String>('region');
    serviceCode = registerOutput<String>('serviceCode');
    serviceName = registerOutput<String>('serviceName');
    unit = registerOutput<String>('unit');
    value = registerOutput<double>('value');
  }

  /// Gets an existing [Template] resource's state with the given [name] and [id].
  static Template get(
    String name,
    pulumi.Input<String> id, {
    TemplateState? state,
  }) {
    return Template._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Template._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:servicequotas/template:Template',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    awsRegion = registerOutput<String>('awsRegion');
    globalQuota = registerOutput<bool>('globalQuota');
    quotaCode = registerOutput<String>('quotaCode');
    quotaName = registerOutput<String>('quotaName');
    region = registerOutput<String>('region');
    serviceCode = registerOutput<String>('serviceCode');
    serviceName = registerOutput<String>('serviceName');
    unit = registerOutput<String>('unit');
    value = registerOutput<double>('value');
  }
}

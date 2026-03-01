import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_association_args.dart';

/// Resource for managing an AWS Service Quotas Template Association.
///
/// > Only the management account of an organization can associate Service Quota templates, and this must be done from the `us-east-1` region.
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
/// const example = new aws.servicequotas.TemplateAssociation("example", {});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicequotas.TemplateAssociation("example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ServiceQuotas.TemplateAssociation("example");
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
/// 		_, err := servicequotas.NewTemplateAssociation(ctx, "example", nil)
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
/// import com.pulumi.aws.servicequotas.TemplateAssociation;
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
///         var example = new TemplateAssociation("example");
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:servicequotas:TemplateAssociation
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Service Quotas Template Association using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:servicequotas/templateAssociation:TemplateAssociation example 123456789012
/// ```
class TemplateAssociation extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Skip disassociating the quota increase template upon destruction. This will remove the resource from Terraform state, but leave the remote association in place.
  late final pulumi.Output<bool?> skipDestroy;

  /// Association status. Creating this resource will result in an `ASSOCIATED` status, and quota increase requests in the template are automatically applied to new AWS accounts in the organization.
  late final pulumi.Output<String> status;

  /// Creates a new [TemplateAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TemplateAssociation]. {@macro pulumi_servicequotas_template_association_template_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TemplateAssociation(
    String name, {
    TemplateAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:servicequotas/templateAssociation:TemplateAssociation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.region = registerOutput<String>('region');
    this.skipDestroy = registerOutput<bool?>('skipDestroy');
    this.status = registerOutput<String>('status');
  }
}

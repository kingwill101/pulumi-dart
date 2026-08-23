import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_domain_association_args.dart';
import 'custom_domain_association_state.dart';

/// Resource for managing an AWS Redshift Serverless Custom Domain Association.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.acm.Certificate("example", {domainName: "example.com"});
/// const exampleNamespace = new aws.redshiftserverless.Namespace("example", {namespaceName: "example-namespace"});
/// const exampleWorkgroup = new aws.redshiftserverless.Workgroup("example", {
///     workgroupName: "example-workgroup",
///     namespaceName: exampleNamespace.namespaceName,
/// });
/// const exampleCustomDomainAssociation = new aws.redshiftserverless.CustomDomainAssociation("example", {
///     workgroupName: exampleWorkgroup.workgroupName,
///     customDomainName: "example.com",
///     customDomainCertificateArn: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.acm.Certificate("example", domain_name="example.com")
/// example_namespace = aws.redshiftserverless.Namespace("example", namespace_name="example-namespace")
/// example_workgroup = aws.redshiftserverless.Workgroup("example",
///     workgroup_name="example-workgroup",
///     namespace_name=example_namespace.namespace_name)
/// example_custom_domain_association = aws.redshiftserverless.CustomDomainAssociation("example",
///     workgroup_name=example_workgroup.workgroup_name,
///     custom_domain_name="example.com",
///     custom_domain_certificate_arn=example.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Acm.Certificate("example", new()
///     {
///         DomainName = "example.com",
///     });
///
///     var exampleNamespace = new Aws.RedshiftServerless.Namespace("example", new()
///     {
///         NamespaceName = "example-namespace",
///     });
///
///     var exampleWorkgroup = new Aws.RedshiftServerless.Workgroup("example", new()
///     {
///         WorkgroupName = "example-workgroup",
///         NamespaceName = exampleNamespace.NamespaceName,
///     });
///
///     var exampleCustomDomainAssociation = new Aws.RedshiftServerless.CustomDomainAssociation("example", new()
///     {
///         WorkgroupName = exampleWorkgroup.WorkgroupName,
///         CustomDomainName = "example.com",
///         CustomDomainCertificateArn = example.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/acm"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshiftserverless"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := acm.NewCertificate(ctx, "example", &acm.CertificateArgs{
/// 			DomainName: pulumi.String("example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNamespace, err := redshiftserverless.NewNamespace(ctx, "example", &redshiftserverless.NamespaceArgs{
/// 			NamespaceName: pulumi.String("example-namespace"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWorkgroup, err := redshiftserverless.NewWorkgroup(ctx, "example", &redshiftserverless.WorkgroupArgs{
/// 			WorkgroupName: pulumi.String("example-workgroup"),
/// 			NamespaceName: exampleNamespace.NamespaceName,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = redshiftserverless.NewCustomDomainAssociation(ctx, "example", &redshiftserverless.CustomDomainAssociationArgs{
/// 			WorkgroupName:              exampleWorkgroup.WorkgroupName,
/// 			CustomDomainName:           pulumi.String("example.com"),
/// 			CustomDomainCertificateArn: example.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_acm_certificate" "example" {
///   domain_name = "example.com"
/// }
/// resource "aws_redshiftserverless_namespace" "example" {
///   namespace_name = "example-namespace"
/// }
/// resource "aws_redshiftserverless_workgroup" "example" {
///   workgroup_name = "example-workgroup"
///   namespace_name = aws_redshiftserverless_namespace.example.namespace_name
/// }
/// resource "aws_redshiftserverless_customdomainassociation" "example" {
///   workgroup_name                = aws_redshiftserverless_workgroup.example.workgroup_name
///   custom_domain_name            = "example.com"
///   custom_domain_certificate_arn = aws_acm_certificate.example.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.acm.Certificate;
/// import com.pulumi.aws.acm.CertificateArgs;
/// import com.pulumi.aws.redshiftserverless.Namespace;
/// import com.pulumi.aws.redshiftserverless.NamespaceArgs;
/// import com.pulumi.aws.redshiftserverless.Workgroup;
/// import com.pulumi.aws.redshiftserverless.WorkgroupArgs;
/// import com.pulumi.aws.redshiftserverless.CustomDomainAssociation;
/// import com.pulumi.aws.redshiftserverless.CustomDomainAssociationArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new Certificate("example", CertificateArgs.builder()
///             .domainName("example.com")
///             .build());
///
///         var exampleNamespace = new Namespace("exampleNamespace", NamespaceArgs.builder()
///             .namespaceName("example-namespace")
///             .build());
///
///         var exampleWorkgroup = new Workgroup("exampleWorkgroup", WorkgroupArgs.builder()
///             .workgroupName("example-workgroup")
///             .namespaceName(exampleNamespace.namespaceName())
///             .build());
///
///         var exampleCustomDomainAssociation = new CustomDomainAssociation("exampleCustomDomainAssociation", CustomDomainAssociationArgs.builder()
///             .workgroupName(exampleWorkgroup.workgroupName())
///             .customDomainName("example.com")
///             .customDomainCertificateArn(example.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:acm:Certificate
///     properties:
///       domainName: example.com
///   exampleNamespace:
///     type: aws:redshiftserverless:Namespace
///     name: example
///     properties:
///       namespaceName: example-namespace
///   exampleWorkgroup:
///     type: aws:redshiftserverless:Workgroup
///     name: example
///     properties:
///       workgroupName: example-workgroup
///       namespaceName: ${exampleNamespace.namespaceName}
///   exampleCustomDomainAssociation:
///     type: aws:redshiftserverless:CustomDomainAssociation
///     name: example
///     properties:
///       workgroupName: ${exampleWorkgroup.workgroupName}
///       customDomainName: example.com
///       customDomainCertificateArn: ${example.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Serverless Custom Domain Association using the `workgroupName` and `customDomainName`, separated by the coma. For example:
///
/// ```sh
/// $ pulumi import aws:redshiftserverless/customDomainAssociation:CustomDomainAssociation example example-workgroup,example.com
/// ```
class CustomDomainAssociation extends pulumi.CustomResource {
  /// ARN of the certificate for the custom domain association.
  late final pulumi.Output<String> customDomainCertificateArn;
  /// Expiration time for the certificate.
  late final pulumi.Output<String> customDomainCertificateExpiryTime;
  /// Custom domain to associate with the workgroup.
  late final pulumi.Output<String> customDomainName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Name of the workgroup.
  late final pulumi.Output<String> workgroupName;

  /// Creates a new [CustomDomainAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomDomainAssociation]. {@macro pulumi_redshiftserverless_custom_domain_association_custom_domain_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomDomainAssociation(
    String name, {
    CustomDomainAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshiftserverless/customDomainAssociation:CustomDomainAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    customDomainCertificateArn = registerOutput<String>('customDomainCertificateArn');
    customDomainCertificateExpiryTime = registerOutput<String>('customDomainCertificateExpiryTime');
    customDomainName = registerOutput<String>('customDomainName');
    region = registerOutput<String>('region');
    workgroupName = registerOutput<String>('workgroupName');
  }

  /// Gets an existing [CustomDomainAssociation] resource's state with the given [name] and [id].
  static CustomDomainAssociation get(
    String name,
    pulumi.Input<String> id, {
    CustomDomainAssociationState? state,
  }) {
    return CustomDomainAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CustomDomainAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshiftserverless/customDomainAssociation:CustomDomainAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    customDomainCertificateArn = registerOutput<String>('customDomainCertificateArn');
    customDomainCertificateExpiryTime = registerOutput<String>('customDomainCertificateExpiryTime');
    customDomainName = registerOutput<String>('customDomainName');
    region = registerOutput<String>('region');
    workgroupName = registerOutput<String>('workgroupName');
  }
}
